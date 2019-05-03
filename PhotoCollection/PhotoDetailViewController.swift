//
//  PhotoDetailViewController.swift
//  PhotoCollection
//
//  Created by Alex on 5/2/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func savePhoto(_ sender: UIBarButtonItem) {
        guard let image = imageView.image,
            let imageData = image.pngData(),
            let text = myTextField.text else {return}
        
        
        if let myPhoto = photo {
            photoController?.update(title: text, data: imageData, photo: myPhoto)
            navigationController?.popToRootViewController(animated: true)
        } else {
            photoController?.create(photo: Photo(imageData: image.pngData()!, title: text))
            navigationController?.popToRootViewController(animated: true)
        }
    }
    
    @IBAction func addPhoto(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        imagePickerController.sourceType = .photoLibrary
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    
    
    func setTheme(){
        guard let myTheme = themeHelper?.themePreference else { return }
        
        if myTheme == "Dark" {
            view.backgroundColor = .darkGray
        } else if myTheme == "Blue" {
            view.backgroundColor = .blue
        }
    }
    
    private func updateViews(){
        setTheme()
        guard let photo = photo else { return }
        imageView.image = UIImage(data: photo.imageData)
        myTextField.text = photo.title
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        imageView.image = image
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
