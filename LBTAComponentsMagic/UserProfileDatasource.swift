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
    
    let urls = ["http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-45-for-iPhoneX.jpg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-2-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-11-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-14-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-15-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-16-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-20-for-iPhone-X.png",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-18-for-iPhone-X.jpg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-23-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-25-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-26-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-28-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-29-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-32-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-35-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-37-for-iPhone-X.jpeg",
                "http://media.idownloadblog.com/wp-content/uploads/2017/11/iOS-stock-41-for-iPhone-X.jpeg"]
    
//    for i in 1...17 {
//      let post = Post(imageName: "Image\(i)")
//      posts.append(post)
//    }
    
    for url in urls {
      let post = Post(imageUrl: url)
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
