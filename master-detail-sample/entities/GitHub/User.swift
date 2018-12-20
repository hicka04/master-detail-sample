//
//  User.swift
//  swift-rindoku-sample
//
//  Created by SCI01552 on 2018/10/11.
//  Copyright © 2018年 hicka04. All rights reserved.
//

import Foundation

struct User: Decodable {
    
    let id: ID
    let login: String
}

extension User {
    
    struct ID: RawRepresentable, Decodable {
        let rawValue: Int
    }
}
