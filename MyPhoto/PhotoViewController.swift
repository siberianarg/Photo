//
//  PhotoViewController.swift
//  MyPhoto
//
//  Created by Perizat Omar on 06.05.2023.
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
        
        let shareConroller = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
//        shareConroller.completionWithItemsHandler = { _, bool, _, _ in
//            if bool {
//                print("Success!")
//            }
//        }
        
        present(shareConroller, animated: true, completion: nil)
    }
}
