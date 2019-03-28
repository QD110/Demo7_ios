//
//  Baidu_data.swift
//  Demo7
//
//  Created by 钱金磊 on 2019/3/29.
//  Copyright © 2019 qjl. All rights reserved.
//

import UIKit

class Baidu_data : UIViewController{
    private let TAG = "Baidu_data"
    
    override func viewDidLoad() {
        let url = URL(string: "https://www.baidu.com")
        getData(url: url) { (result) in
            print("1234\(result)")
        }
        print(TAG)
        
    }
    
    
    /*
     请求网络
     配置ats
     resume() 要激活
     
     */
    @objc func getData(url: URL?  , comp : @escaping(_ result : String ) -> ()) -> () {
             print("请求失败1")
      DispatchQueue.global().async {
                print("请求失败2\(url)")
                URLSession.shared.dataTask(with: url!, completionHandler: { ( data, success , error ) in
                guard let da = data else {
                    print("请求失败3 \(error) ")
                    return
                }
                 let html = String(data: da, encoding: String.Encoding.utf8)!
                 DispatchQueue.main.async {
                        comp(html)
                  }
            }).resume()
        }}
    
}
