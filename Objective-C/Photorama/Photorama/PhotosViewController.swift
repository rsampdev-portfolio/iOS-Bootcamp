//
//  ViewController.swift
//  Photorama
//
//  Created by Rodney Sampson on 10/30/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
    var photoStore: PhotoStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoStore.fetchRecentPhotos { photos in
            print("📷📷📷 Fetched \(photos?.count) photos 📷📷📷")
            
            if photos?.count == 0 {
                print("📷📷📷 Fetched \(photos?.count) photos 📷📷📷")
                return
            }
            
            self.photoStore.fetchImage(photo: (photos?.first)!) { image in
                OperationQueue.main.addOperation {
                    self.imageView.image = image
                }
            }
        }
    }
    
}

