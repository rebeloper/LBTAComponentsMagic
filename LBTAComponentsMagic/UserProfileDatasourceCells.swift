//
//  UserProfileDatasourceCells.swift
//  LBTAComponentsMagic
//
//  Created by Alex Nagy on 09/02/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import LBTAComponents

class UserProfileDatasourceCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let post = datasourceItem as? Post else { return }
      imageView.image = UIImage(named: post.imageName)
    }
  }
  
  let imageView: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFill
    return iv
  }()
  
  override func setupViews() {
    super.setupViews()
    backgroundColor = .lightGray
    
    addSubview(imageView)
    imageView.fillSuperview()
  }
}

class UserProfileHeaderDatasourceCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let user = datasourceItem as? User else { return }
      profileImageView.image = UIImage(named: user.userImageName)
      nameLabel.text = user.userName
      postsLabel.text = "\(user.postCount) posts"
    }
  }
  
  let profileImageWidth: CGFloat = 60
  
  lazy var profileImageView: UIImageView = {
    let imageView = UIImageView()
    //    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.layer.cornerRadius = profileImageWidth / 2
    imageView.clipsToBounds = true
    imageView.contentMode = .scaleAspectFill
    //    imageView.backgroundColor = .lightGray
    return imageView
  }()
  
  let nameLabel: UILabel = {
    let label = UILabel()
    //    label.text = "Alex Nagy"
    label.font = UIFont.boldSystemFont(ofSize: 16)
    //    label.backgroundColor = .lightGray
    return label
  }()
  
  let postsLabel: UILabel = {
    let label = UILabel()
    //    label.text = "145 posts"
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = UIColor.lightGray
    //    label.backgroundColor = .lightGray
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    
    self.addSubview(profileImageView)
    self.addSubview(nameLabel)
    self.addSubview(postsLabel)
    
    profileImageView.anchor(self.safeAreaLayoutGuide.topAnchor, left: self.safeAreaLayoutGuide.leftAnchor, bottom: nil, right: nil, topConstant: 16, leftConstant: 16, bottomConstant: 0, rightConstant: 0, widthConstant: profileImageWidth, heightConstant: profileImageWidth)
    nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: self.rightAnchor, topConstant: 8, leftConstant: 8, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
    postsLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: self.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 16, widthConstant: 0, heightConstant: 0)
  }
  
}

class UserProfileFooterDatasourceCell: DatasourceCell {
  
  override var datasourceItem: Any? {
    didSet {
      guard let user = datasourceItem as? User else { return }
      copyrightLabel.text = "\(user.userName) © 2018"
    }
  }
  
  let copyrightLabel: UILabel = {
    let label = UILabel()
    //    label.text = "145 posts"
    label.font = UIFont.systemFont(ofSize: 14)
    label.textColor = UIColor.lightGray
    //    label.backgroundColor = .lightGray
    label.textAlignment = .center
    return label
  }()
  
  override func setupViews() {
    super.setupViews()
    
    addSubview(copyrightLabel)
    copyrightLabel.fillSuperview()
  }
}
