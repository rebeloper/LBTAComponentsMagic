//
//  UserProfileDatasource.swift
//  LBTAComponentsMagic
//
//  Created by Alex Nagy on 09/02/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import LBTAComponents

class UserProfileDatasource: Datasource {
  
  var posts = [Post]()
  var user: User?
  
  override func numberOfItems(_ section: Int) -> Int {
    return posts.count
  }
  
  override func item(_ indexPath: IndexPath) -> Any? {
    return posts[indexPath.item]
  }
  
  override func cellClasses() -> [DatasourceCell.Type] {
    return [UserProfileDatasourceCell.self]
  }
  
  func fetchUserAndPosts(in collectionViewController: DatasourceController) {
    for i in 1...17 {
      let post = Post(imageName: "Image\(i)")
      posts.append(post)
    }
    fetchCurrentUser()
    collectionViewController.collectionView?.reloadData()
  }
  
  func fetchCurrentUser() {
    let user = User(userName: "Alex Nagy", userImageName: "ProfilePic", postCount: posts.count)
    self.user = user
  }
  
  override func headerClasses() -> [DatasourceCell.Type]? {
    return [UserProfileHeaderDatasourceCell.self]
  }
  
  override func headerItem(_ section: Int) -> Any? {
    return user
  }
  
  override func footerClasses() -> [DatasourceCell.Type]? {
    return [UserProfileFooterDatasourceCell.self]
  }
  
  override func footerItem(_ section: Int) -> Any? {
    return user
  }
  
}
