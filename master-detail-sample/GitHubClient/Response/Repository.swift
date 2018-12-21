//
//  Repository.swift
//  swift-rindoku-sample
//
//  Created by SCI01552 on 2018/10/11.
//  Copyright © 2018年 hicka04. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    
    let id: ID
    let name: String
    let fullName: String  // 詳細ページ表示用に追加
    let htmlUrl: URL
    let owner: User
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case htmlUrl = "html_url"
        case owner
    }
}

extension Repository {
    
    struct ID: RawRepresentable, Decodable {
        let rawValue: Int
    }
}
