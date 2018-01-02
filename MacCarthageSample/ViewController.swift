//
//  WebViewController.swift
//  WebViewSample
//
//  Created by Masanori Nakano on 2017/12/28.
//  Copyright © 2017年 Masanori Nakano. All rights reserved.
//

import Cocoa
import Alamofire

class ViewController: NSViewController {
    
    // MARK: - NSViewController
    
    override var nibName: NSNib.Name? {
        return NSNib.Name(rawValue: "ViewController")
    }

    // MARK: - NSViewController
    
    @IBAction private func buttonDidPush(_ sender: AnyObject) {
        SwaggerClientAPI.basePath = "https://en.wikipedia.org/"
        
        let observable = DefaultAPI.wApiPhpGet(action: "query",
                                               format: "json",
                                               meta: "tokens",
                                               type: "login")
        _ = observable.subscribe(
            onNext: { result in
                print("")
            },
            onError: { error in
                print("")
            }
        )
    }
    
}
