//
//  TabRouter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class TabRouter {
    
    private weak var tabBarController: UITabBarController?
    
    required init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
    }
    
    static func assembleModules() -> UIViewController {
        return TabViewController<TabViewPresenter>()
    }
}

extension TabRouter: TabWireframe {
    
    func showTabs() {
        let view = ViewController()
        view.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        tabBarController?.viewControllers = [
            view
        ]
    }
}
