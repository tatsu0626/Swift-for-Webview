//
//  ViewController.swift
//  Swift for Webview
//
//  Created by 矢部立也 on 2018/01/22.
//  Copyright © 2018年 矢部立也. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate {

    @IBOutlet var webview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.delegate=self
        let url=URL(string:"http://www.yahoo.co.jp")
        let urlRequest=URLRequest(url: url!)
        webview.loadRequest(urlRequest)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible=true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible=true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

