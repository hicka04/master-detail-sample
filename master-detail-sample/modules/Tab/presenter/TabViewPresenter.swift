//
//  TabViewPresenter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

class TabViewPresenter {
    
    private weak var view: TabView?
    private let router: TabWireframe
    
    required init(view: TabView, router: TabWireframe) {
        self.view = view
        self.router = router
    }
}

extension TabViewPresenter: TabViewPresentation {
    
    func viewDidLoad() {
        router.showTabs()
    }
}
