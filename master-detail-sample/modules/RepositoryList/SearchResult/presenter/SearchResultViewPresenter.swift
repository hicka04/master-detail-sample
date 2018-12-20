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
    
    init(view: SearchResultView, router: SearchResultWireframe) {
        self.view = view
        self.router = router
    }
}

extension SearchResultViewPresenter: SearchResultViewPresentation {
    
    func viewDidLoad() {
        
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        router.showDetailView(from: URL(string: "https://github.com/")!)
    }
}
