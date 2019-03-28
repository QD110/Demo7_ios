//
//  Person.swift
//  Demo7
//
//  Created by 钱金磊 on 2019/3/29.
//  Copyright © 2019 qjl. All rights reserved.
//

import UIKit

@objcMembers  class Person : NSObject{
     @objc var name : String?
     @objc var  age : Int = 0
    
 
    
//    init(dict : [String : Any]) {
//        super.init()
//       setValuesForKeys(dict)
//
//
//    }
    
    class func propertyList() -> [String]{
        var count : UInt32 = 0
        let list =   class_copyPropertyList(self, &count)
        print("shuliang\(count)")
        
        for i in 0..<Int(count){
            
            guard let pty = list?[i]
            
            else {
                continue
            }
                let cname = property_getName(pty)
                print("name\(String(utf8String: cname) )")
        
            
           
           
            
            
            
        }
        return []
    }
    
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
    
}
