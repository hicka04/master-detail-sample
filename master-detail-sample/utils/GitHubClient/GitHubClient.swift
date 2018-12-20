//
//  GitHubClient.swift
//  swift-rindoku-sample
//
//  Created by SCI01552 on 2018/10/25.
//  Copyright © 2018年 hicka04. All rights reserved.
//

import Foundation

class GitHubClient {
    
    private let session: URLSession = {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        return session
    }()
    
    func send<Request: GitHubRequest>(request: Request,
                                      completion: @escaping (Result<Request.Response, GitHubClientError>) -> Void) {
        
        let urlRequest = request.buildURLRequest()
        let task = session.dataTask(with: urlRequest) { data, response, error in
            switch (data, response, error) {
            case (_, _, let error?):
                completion(Result(error: .connectionError(error)))
                
            case (let data?, let response?, _):
                do {
                    let response = try request.response(from: data, urlResponse: response)
                    completion(Result(value: response))
                } catch let error as GitHubAPIError {
                    completion(Result(error: .apiError(error)))
                } catch {
                    completion(Result(error: .responseParseError(error)))
                }
                
            default:
                fatalError("Invalid response combination")
            }
        }
        
        task.resume()
    }
}

enum Result<T, Error: Swift.Error> {
    case success(T)
    case failure(Error)
    
    init(value: T) {
        self = .success(value)
    }
    
    init(error: Error) {
        self = .failure(error)
    }
}
