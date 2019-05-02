//
//  PhotoController.swift
//  PhotoCollection
//
//  Created by Alex on 5/2/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []
    
    func create(photo: Photo) {
        photos.append(photo)
    }
    func update(title: String, data: Data, photo: Photo) {
        
    }
}
