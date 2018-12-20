//
//  GitHubAPIError.swift
//  swift-rindoku-sample
//
//  Created by SCI01552 on 2018/10/11.
//  Copyright © 2018年 hicka04. All rights reserved.
//

import Foundation

struct GitHubAPIError: Decodable, Error {
    
    let message: String
    let fieldErrors: [FieldError]
    
    struct FieldError: Decodable {
        
        let resource: String
        let field: String
        let code: String
    }
}
