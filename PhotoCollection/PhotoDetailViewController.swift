//
//  PhotoDetailViewController.swift
//  PhotoCollection
//
//  Created by Alex on 5/2/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {

    @IBOutlet var myTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func savePhoto(_ sender: UIBarButtonItem) {
    }
    @IBAction func addPhoto(_ sender: UIButton) {
    }
    var photoController: PhotoController?
    var photo: Photo?
    var themeHelper: ThemeHelper?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setTheme(){
        
    }
    
    private func updateViews(){
        
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
