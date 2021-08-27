//
//  PhotoViewController.swift
//  PhotoCollection
//
//  Created by Gold_Mock on 25.08.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: Any) {
        
        let shareVC = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareVC.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                print("Успешно!")
            }
        }
        
        present(shareVC, animated: true, completion: nil)
    
    }
    
}
