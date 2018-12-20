//
//  GitHubContract.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

protocol GitHubUsecase: AnyObject {
    
    func fetchRepositories(keyword: String)
}

protocol GitHubUsecaseDelegate: AnyObject {
    
    func usecase(_ usecase: GitHubUsecase, didFetch repositories: [Repository])
}
