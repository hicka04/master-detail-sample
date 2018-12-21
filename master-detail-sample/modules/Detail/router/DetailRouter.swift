//
//  DetailRouter.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

class DetailRouter {
    
    private unowned let viewController: UIViewController
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    static func assembleModules(from url: URL) -> UIViewController {
        let view = DetailViewController()
        let router = DetailRouter(viewController: view)
        let presenter = DetailViewPresenter(view: view, router: router, url: url)
        
        view.presenter = presenter
        
        return view
    }
    
    static func assembleDummy() -> UIViewController {
        return UIViewController()
    }
}

extension DetailRouter: DetailWireframe {
    
}
