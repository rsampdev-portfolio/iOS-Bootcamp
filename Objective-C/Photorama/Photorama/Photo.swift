//
//  Photo.swift
//  Photorama
//
//  Created by Rodney Sampson on 10/30/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class Photo: NSObject {
    
    private(set) var title: String?
    private(set) var remoteURL: URL?
    private(set) var photoID: String?
    private(set) var dateTaken: Date?
    var image: UIImage?
    
    init(title: String, remoteURL: URL, photoID: String, dateTaken: Date) {
        self.title = title
        self.remoteURL = remoteURL
        self.photoID = photoID
        self.dateTaken = dateTaken
        super.init()
    }
    
    override init() {
        self.title = nil
        self.remoteURL = nil
        self.photoID = nil
        self.dateTaken = nil
        super.init()
    }
    
    override var description: String {
       return "< Photo id=\"\(photoID)\" title=\"\(title)\" >"
    }

}
