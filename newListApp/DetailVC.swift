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
        
        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never
        
        
        if let imageToLoad = selectedImage {
            detailView.image = UIImage(named: selectedImage!)
        }
    }
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
        }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    


}
