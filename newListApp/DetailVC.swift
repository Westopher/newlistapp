//
//  DetailVC.swift
//  newListApp
//
//  Created by West Kraemer on 6/22/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
  
    @IBOutlet weak var detailView: UIImageView!
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let imageToLoad = selectedImage {
            detailView.image = UIImage(named: selectedImage!)
        }
        
    }
    


}
