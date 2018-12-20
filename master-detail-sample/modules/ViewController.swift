//
//  ViewController.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = GitHubAPI.SearchRepositories(keyword: "swift")
        GitHubClient().send(request: request) { result in
            switch result {
            case .success(let response):
                print(response.totalCount)
            case .failure:
                print("failure")
            }
        }
    }


}

