//
//  SearchResultViewPresenter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

class SearchResultViewPresenter {
    
    private weak var view: SearchResultView?
    private let router: SearchResultWireframe
    private let interactor: GitHubUsecase
    
    private var repositories: [Repository] = [] {
        didSet {
            view?.updateRepositories(repositories)
        }
    }
    
    init(view: SearchResultView, router: SearchResultWireframe,
         interactor: GitHubUsecase) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

extension SearchResultViewPresenter: SearchResultViewPresentation {
    
    func viewDidLoad() {
        interactor.fetchRepositories(keyword: "swift")
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        router.showDetailView(from: repositories[indexPath.row].htmlUrl)
    }
}

extension SearchResultViewPresenter: GitHubUsecaseDelegate {
    
    func usecase(_ usecase: GitHubUsecase, didFetch repositories: [Repository]) {
        self.repositories = repositories
    }
}
