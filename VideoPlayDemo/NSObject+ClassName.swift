//
//  NSObject+ClassName.swift
//  VideoPlayDemo
//
//  Created by Lurf on 2018/04/19.
//  Copyright © 2018 Lurf. All rights reserved.
//

import Foundation

extension NSObject {
    class func className() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
    
    func className() -> String {
        return type(of: self).className()
    }
}
