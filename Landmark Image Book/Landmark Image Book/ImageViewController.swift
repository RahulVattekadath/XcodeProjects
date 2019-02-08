//
//  ImageViewController.swift
//  Landmark Image Book
//
//  Created by Rahul Vattekadath on 22/04/18.
//  Copyright © 2018 rahulvattekadath. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        imageView.image = selectedLandmarkImage
        nameLabel.text = selectedLandmarkName
        
        
    }

}
