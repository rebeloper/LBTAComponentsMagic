//
//  LargeImageController.swift
//  LBTAComponentsMagic
//
//  Created by Alex Nagy on 08/02/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import LBTAComponents

class LargeImageController: UIViewController {
  
//  var imageName: String?
  var imagUrl: String?
  
//  let imageView: UIImageView = {
//    let iv = UIImageView()
//    return iv
//  }()
  
  let imageView: CachedImageView = {
    let iv = CachedImageView()
    return iv
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .purple
    setupViews()
//    loadImage(imageName)
    loadImageWithUrl(imagUrl)
  }
  
  fileprivate func setupViews() {
    view.addSubview(imageView)
    imageView.fillSuperview()
  }
  
//  func loadImage(_ named: String?) {
//    guard let named = named else { return }
//    imageView.image = UIImage(named: named)
//  }
  
  func loadImageWithUrl(_ url: String?) {
    guard let url = url else { return }
    imageView.loadImage(urlString: url)
  }

}











