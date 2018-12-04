//
//  SecondViewController.swift
//  TabbedApp
//
//  Created by Nisum on 12/4/18.
//  Copyright © 2018 Nisum. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let request = URLRequest(url: URL(string: "https://www.google.com")!)
        webView.load(request)
    }
}

