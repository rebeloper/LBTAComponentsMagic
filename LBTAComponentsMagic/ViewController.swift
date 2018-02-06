//
//  ViewController.swift
//  LBTAComponentsMagic
//
//  Created by Alex Nagy on 06/02/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import UIKit
import LBTAComponents

class ViewController: UIViewController {
  
  let profileImageWidth: CGFloat = 60
  
  lazy var profileImageView: UIImageView = {
    let imageView = UIImageView(image: #imageLiteral(resourceName: "ProfilePic"))
//    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.layer.cornerRadius = profileImageWidth / 2
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    return imageView
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    label.text = "Alex Nagy"
    label.font = UIFont.boldSystemFont(ofSize: 16)
    return label
  }()
  
  let postsLabel: UILabel = {
    let label = UILabel()
    label.text = "145 posts"
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = UIColor.lightGray
    return label
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    view.addSubview(profileImageView)
    view.addSubview(nameLabel)
    view.addSubview(postsLabel)
    
//    profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//    profileImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
    
//    profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
//    profileImageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
//
//
//    profileImageView.widthAnchor.constraint(equalToConstant: profileImageWidth).isActive = true
//    profileImageView.heightAnchor.constraint(equalToConstant: profileImageWidth).isActive = true
    
    profileImageView.anchor(view.safeAreaLayoutGuide.topAnchor, left: view.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: nil, topConstant: 16, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: profileImageWidth, heightConstant: profileImageWidth)
    nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: view.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
    postsLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}




















