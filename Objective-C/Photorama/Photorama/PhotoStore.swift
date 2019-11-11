//
//  PhotoStore.swift
//  Photorama
//
//  Created by Rodney Sampson on 10/30/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

internal class PhotoStore: NSObject {
    
    fileprivate var session: URLSession
    
    override init() {
        let config = URLSessionConfiguration.default
        self.session = URLSession(configuration: config)
        super.init()
    }
    
    func fetchRecentPhotos(completion: @escaping ([Photo]?) -> Void) {
        let url = FlickrAPI.recentPhotosURL()
        let request = URLRequest(url: url!)
        let task = session.dataTask(with: request) { optData, optResponse, optError in
            guard let data = optData else {
                guard let dataError = optError else {
                    print("Failed to fetch data. Error: Unknown")
                    return
                }
                
                print("Failed to fetch data. Error: \(dataError)")
                return
            }
            
            let photos = self.processRecentPhotosRequestWith(data: data)
            completion(photos)
        }
        task.resume()
    }
    
    fileprivate func processRecentPhotosRequestWith(data: Data?) -> [Photo]? {
        guard let realData = data else {
            return nil
        }
        
        guard let photos = FlickrAPI.photosFromJSONData(jsonData: realData) else {
            return nil
        }
        
        return photos
    }
    
    func fetchImage(photo: Photo, completion: @escaping (UIImage?) -> Void) {
        let request = URLRequest(url: photo.remoteURL!)
        let task = session.dataTask(with: request) { optData, optResponse, optError in
            var image: UIImage? = nil
            if optData != nil {
                image = self.processImageRequest(with: optData)
                if (image != nil) {
                    photo.image = image;
                }
            }
            completion(image)
        }
        task.resume()
    }
    
    func processImageRequest(with data: Data?) -> UIImage? {
        guard let realData = data else {
            return nil
        }
        
        guard let image = UIImage(data: realData) else {
            return nil
        }
        
        return image
    }
    
}
