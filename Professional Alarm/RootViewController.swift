//
//  RootViewController.swift
//  Professional Alarm
//
//  Created by Ermal Bujupaj on 22.04.24.
//

import UIKit
import WebKit

class RootViewController: UIViewController {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupWebView()
        if let url = URL(string: "https://tracking.professionalalarm.eu/mobile") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
        setConstraints()
    }
    
    private func setupWebView() {
        webView = WKWebView(frame: .zero)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        view.addSubview(webView)
    }
    
    private func setConstraints() {
        webView.translatesAutoresizingMaskIntoConstraints = false
        webView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        webView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        webView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        webView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension RootViewController: WKNavigationDelegate {
    
}

extension RootViewController: WKUIDelegate {
    
}
