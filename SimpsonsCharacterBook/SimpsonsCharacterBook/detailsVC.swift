//
//  detailsVC.swift
//  SimpsonsCharacterBook
//
//  Created by Rahul Vattekadath on 20/05/18.
//  Copyright © 2018 rahulvattekadath. All rights reserved.
//

import UIKit

class detailsVC: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var occupationLabel: UILabel!
    
    var selectedSimpson = Simpsons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson.name
        occupationLabel.text = selectedSimpson.occupation
        imageView.image = selectedSimpson.image
        
    }

    
    

    

}
