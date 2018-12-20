//
//  SearchResultContract.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit

protocol SearchResultView: AnyObject {
    
}

protocol SearchResultViewPresentation: AnyObject {
    
    func viewDidLoad()
    func didSelectRow(at indexPath: IndexPath)
}

protocol SearchResultWireframe: AnyObject {
    
    func showDetailView(from url: URL)
}
