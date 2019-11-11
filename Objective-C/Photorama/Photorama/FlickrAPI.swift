//
//  FlickrAPI.swift
//  Photorama
//
//  Created by Rodney Sampson on 10/30/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

enum HTTPMethod {
    
    func get() -> String {
        return "GET"
    }
    
    func post() -> String {
        return "POST"
    }
    
}

enum JSONKeys: String {
    case photos = "photos"
    case photo = "photo"
    case photoID = "id"
    case photoTitle = "title"
    case remotePhotoURL = "url_t"
    
    var key: String {
        return self.rawValue
    }
    
}

internal class FlickrAPI: NSObject {
    
    static let APIKey = "a6d819499131071f158fd740860a5a88"
    static let BaseURLString = "https://api.flickr.com/services/rest"
    static let RecentPhotosMethod = "flickr.photos.getRecent"
    
    static var dateFormatter: DateFormatter = {
        var formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return formatter
    }()
    
    static func recentPhotosURL() -> URL? {
        let parameters = [
            "extras": "\(JSONKeys.remotePhotoURL.key),date_taken",
            "per_page": "1"
        ]
        let url = flickrURL(method: RecentPhotosMethod, parameters: parameters)
        return url
    }
    
    fileprivate static func flickrURL(method: String, parameters: [String: String]) -> URL? {
        var components = URLComponents(string: BaseURLString)
        var queryItems = [URLQueryItem]()
        
        var allParams: Dictionary = [
            "method": method,
            "format": "json",
            "nojsoncallback": "1",
            "api_key": APIKey
        ]
        
        for key in parameters.keys {
            allParams.updateValue(parameters[key]!, forKey: key)
        }
        
        for queryKey in allParams.keys {
            let queryItem = URLQueryItem(name: queryKey, value: allParams[queryKey])
            queryItems.append(queryItem)
        }
        
        components?.queryItems = queryItems
        return components?.url
    }
    
    static func photosFromJSONData(jsonData: Data) -> [Photo]? {
        var photos = [Photo]()
        do {
            let jsonObject = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [String: Any]
            let jsonPhotosDict = jsonObject?[JSONKeys.photos.key] as? [String: Any]
            let jsonPhotosArray = jsonPhotosDict?[JSONKeys.photo.key] as? [[String: Any]]
            
            for jsonSinglePhotoDict in jsonPhotosArray! {
                let photo = FlickrAPI.photoFromJSON(jsonDict: jsonSinglePhotoDict)
                if photo != nil {
                    photos.append(photo!)
                }
            }
        } catch let parseError {
            print("Failed to parse JSON data. Error: \(parseError)")
        }
        
        return photos
    }
    
    static func photoFromJSON(jsonDict: [String: Any]) -> Photo? {
        guard let photoID = jsonDict[JSONKeys.photoID.key] as? String,
            let title = jsonDict[JSONKeys.photoTitle.key] as? String,
            let url = URL(string: (jsonDict[JSONKeys.remotePhotoURL.key] as? String)!),
            let dateTaken = FlickrAPI.dateFormatter.date(from: jsonDict["datetaken"]! as! String) else {
                return nil
        }
        
        let photo = Photo(title: title, remoteURL: url, photoID: photoID, dateTaken: dateTaken)
        return photo
    }
    
}
