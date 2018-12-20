//
//  TabViewController.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class TabViewController<Presenter: TabViewPresentation>: UITabBarController {
    
    lazy var presenter = Presenter(view: self, router: TabRouter(tabBarController: self))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.viewDidLoad()
    }
}

extension TabViewController: TabView {
    
}
