//
//  AddPostTableViewController.swift
//  Continuum-CloudKit
//
//  Created by Anthony Torres on 12/11/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import UIKit

class AddPostTableViewController: UITableViewController {
    
    
    @IBOutlet weak var captionTextField: UITextField!
    var selectedImage: UIImage?
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        captionTextField.text = nil
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPhotoSelectorVC" {
            let photoSelector = segue.destination as? PhotoSelectorViewController
            photoSelector?.delegate = self
        }
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.tabBarController?.selectedIndex = 0
    }
    
    @IBAction func addPostButtonTapped(_ sender: Any) {
      guard let photo = selectedImage,
        let caption = captionTextField.text else { return }
      PostController.shared.createPostWith(photo: photo, caption: caption) { (post) in }
      self.tabBarController?.selectedIndex = 0
    }
}

extension AddPostTableViewController: PhotoSelectorViewControllerDelegate {
  func photoSelectorViewControllerSelected(image: UIImage) {
    selectedImage = image
  }
}
