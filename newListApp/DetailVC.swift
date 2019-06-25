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
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareTapped))
        
        
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
    
    @objc func shareTapped() {
        guard let image = detailView.image?.jpegData(compressionQuality: 0.8) else
            {
            print("no image found")
            return
        }
        
        let vc = UIActivityViewController(activityItems: [image], applicationActivities: [])
        vc.popoverPresentationController?.barButtonItem = navigationItem.rightBarButtonItem
        present(vc, animated: true)
    }


}
