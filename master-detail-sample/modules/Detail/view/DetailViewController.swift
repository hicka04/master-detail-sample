//
//  DetailViewController.swift
//  master-detail-sample
//
//  Created by hicka04 on 2018/12/20.
//  Copyright © 2018 hicka04. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var presenter: DetailViewPresentation!
    
    @IBOutlet private weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
}

extension DetailViewController: DetailView {
    
    func load(from url: URL) {
        webView.loadRequest(URLRequest(url: url))
    }
}
