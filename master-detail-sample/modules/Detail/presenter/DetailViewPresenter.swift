//
//  DetailViewPresenter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

class DetailViewPresenter {
    
    private weak var view: DetailView?
    private let router: DetailWireframe
    private let url: URL
    
    init(view: DetailView, router: DetailWireframe, url: URL) {
        self.view = view
        self.router = router
        self.url = url
    }
}

extension DetailViewPresenter: DetailViewPresentation {
    
    func viewDidLoad() {
        view?.load(from: url)
    }
}
