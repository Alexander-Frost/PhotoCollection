//
//  PhotosCollectionViewCell.swift
//  PhotoCollection
//
//  Created by Alex on 5/2/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var myLbl: UILabel!
    
    var photo: Photo? {
        didSet{
            updateViews()
        }
    }
    
    private func updateViews(){
        guard let myPhoto = photo else { return }
       myLbl.text = photo?.title
        imageView.image = UIImage(data: myPhoto.imageData)
            //myPhoto.imageDate
    }
    
    
}
