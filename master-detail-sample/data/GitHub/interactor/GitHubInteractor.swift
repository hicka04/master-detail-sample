//
//  GitHubInteractor.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

class GitHubInteractor {
    
    weak var delegate: GitHubUsecaseDelegate?
    
    private let client = GitHubClient()
}

extension GitHubInteractor: GitHubUsecase {
    
    func fetchRepositories(keyword: String) {
        let request = GitHubAPI.SearchRepositories(keyword: keyword)
        client.send(request: request) { [weak self] result in
            switch result {
            case .success(let response):
                guard let `self` = self else {
                    return
                }
                
                self.delegate?.usecase(self, didFetch: response.items)
            default:
                break
            }
        }
    }
}
