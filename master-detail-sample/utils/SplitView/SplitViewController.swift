//
//  SplitViewController.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class SplitViewController: UISplitViewController {
    
    private let master: UIViewController
    private let detail: UIViewController
    
    init(master: UIViewController,
         detail: UIViewController = DetailRouter.assembleDummy()) {
        self.master = master
        self.detail = detail
        
        super.init(nibName: nil, bundle: nil)
        
        preferredDisplayMode = .allVisible
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        delegate = self
        
        viewControllers = [
            UINavigationController(rootViewController: master),
            detail
        ]
    }
}

extension SplitViewController: UISplitViewControllerDelegate {
    
    func splitViewController(_ splitViewController: UISplitViewController,
                             collapseSecondary secondaryViewController: UIViewController,
                             onto primaryViewController: UIViewController) -> Bool {
        return splitViewController.isCollapseSecondary
    }
}

extension UISplitViewController {
    
    /// masterだけを表示させるかどうか
    var isCollapseSecondary: Bool {
        // 横幅のsize classがcompactだったらmasterのみ表示
        return traitCollection.containsTraits(in: UITraitCollection(horizontalSizeClass: .compact))
    }
}
