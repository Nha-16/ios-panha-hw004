//
//  DetailtViewController.swift
//  swifty-demo
//
//  Created by Mavin on 10/11/21.
//

import UIKit
import Kingfisher

class DetailtViewController: UIViewController {
    
    var article: Article?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Title : ",article?.title ?? "")
        
        labelTitle.text = article?.title ?? ""
        labelDescription.text = article?.description ?? ""
        
        let url = URL(string: article!.imageUrl)
        
        let defaultImage = UIImage(systemName: "camera.fill")
        
        self.imageView.kf.setImage(with: url,placeholder: defaultImage, options: [.transition(.fade(0.25))])
    }
    
}
