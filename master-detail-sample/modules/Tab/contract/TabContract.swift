//
//  TabContract.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

// MARK: - view
protocol TabView: class {
    
}

// MARK: - presenter
protocol TabViewPresentation: class {
    
    init(view: TabView, router: TabWireframe)
    func viewDidLoad()
}

// MARK: - router
protocol TabWireframe: class {
    
    init(tabBarController: UITabBarController)
    func showTabs()
}
