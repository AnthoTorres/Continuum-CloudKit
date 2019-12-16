//
//  PostTableViewCell.swift
//  Continuum-CloudKit
//
//  Created by Anthony Torres on 12/11/19.
//  Copyright © 2019 Anthony Torres. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet weak var postPhotoImageView: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    
      //MARK: - Properties
      var post: Post? {
        didSet {
          updateViews()
        }
      }
      
      //MARK: - Methods
      func updateViews() {
        postPhotoImageView.image = post?.photo
        captionLabel.text = post?.caption
        commentCountLabel.text = "Comments: \(post?.commentCount ?? 0)"
      }
    }
