//
//  ViewController.swift
//  practiceYouTube
//
//  Created by Fumiya Yamanaka on 2016/01/06.
//  Copyright © 2016年 Fumiya Yamanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var wv_webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        wv_webView = UIWebView()
        wv_webView.frame = self.view.bounds
        
        self.view.addSubview(wv_webView)
        
        let path: NSString = NSBundle.mainBundle().pathForResource("player", ofType: "html")! //ファイルパス生成
        
        let request: NSURLRequest = NSURLRequest(URL: NSURL.fileURLWithPath(path as String)) // request生成
        
        wv_webView.allowsInlineMediaPlayback = true // fullscreen表示ではなく,inline表示に
        
        wv_webView.mediaPlaybackRequiresUserAction = false // 自動的に再生開始
        
        wv_webView.loadRequest(request) // load開始
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

