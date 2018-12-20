//
//  DetailContract.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import Foundation

// MARK: - view
protocol DetailView: AnyObject {
    
    func load(from url: URL)
}

// MARK: - presenter
protocol DetailViewPresentation: AnyObject {
    
    func viewDidLoad()
}

// MARK: - router
protocol DetailWireframe: AnyObject {
    
}
