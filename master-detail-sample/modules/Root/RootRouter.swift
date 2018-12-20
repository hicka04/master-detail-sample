//
//  RootRouter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class RootRouter {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func showFirstView() {
        let splitView = SplitViewController(master: SearchResultRouter.assembleModules())
        window.rootViewController = splitView
        window.makeKeyAndVisible()
    }
}
