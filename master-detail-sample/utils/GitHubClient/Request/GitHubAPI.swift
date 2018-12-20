//
//  GitHubAPI.swift
//  swift-rindoku-sample
//
//  Created by SCI01552 on 2018/10/18.
//  Copyright © 2018年 hicka04. All rights reserved.
//

import Foundation

final class GitHubAPI {
    
    struct SearchRepositories: GitHubRequest {
        
        typealias Response = SearchResponse<Repository>
        
        let keyword: String
        
        var path: String {
            return "/search/repositories"
        }
        
        var method: HTTPMethod {
            return .get
        }
        
        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
