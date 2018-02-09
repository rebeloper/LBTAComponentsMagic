//
//  Models.swift
//  LBTAComponentsMagic
//
//  Created by Alex Nagy on 09/02/2018.
//  Copyright © 2018 Alex Nagy. All rights reserved.
//

import Foundation

struct Post {
  let imageName: String
  
  init(imageName: String) {
    self.imageName = imageName
  }
}

struct User {
  let userName: String
  let userImageName: String
  let postCount: Int
  
  init(userName: String, userImageName: String, postCount: Int) {
    self.userName = userName
    self.userImageName = userImageName
    self.postCount = postCount
  }
}
