//
//  ViewController.swift
//  Demo7
//
//  Created by 钱金磊 on 2019/3/28.
//  Copyright © 2019 qjl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ff { (aaa) in
            print( aaa)
        }
        
        
    }
    
    
    func ff(comp : @escaping (_ : [String]) ->()) -> () {
        DispatchQueue.global().async {
            print(Thread.current)
            Thread.sleep(forTimeInterval: 1.5)
            let json = ["q", "w", "e"]
            DispatchQueue.main.async {
                print(Thread.current)
                comp(json)
            }
        }
    }


}

