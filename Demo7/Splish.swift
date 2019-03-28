//
//  Splish.swift
//  Demo7
//
//  Created by 钱金磊 on 2019/3/28.
//  Copyright © 2019 qjl. All rights reserved.
//

import UIKit

class Splish : UIViewController{
    
    override func viewDidLoad() {
        
        let lab = UILabel()
        lab.text = "1234"
        lab.frame = view.bounds
        lab.center = view.center
        view.addSubview(lab)
    
//        let person = Person(dict: [ "name" : "123456" , "age" : 123 , "xxx" : 1245])
        let person = Person.propertyList()
            
      //  print("sdre \(person.name) +  \(person.age)")
        
    }
    
}
