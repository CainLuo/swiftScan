//
//  LBXScanError.swift
//  swiftScan
//
//  Created by YYKJ0048 on 2020/8/28.
//  Copyright © 2020 xialibing. All rights reserved.
//

import Foundation

public enum LBXScanErrorCode: Int {
    case empty
    case unknown
}

func newError(_ code: LBXScanErrorCode, message: String? = nil) -> NSError {
    
    let errorDomain = "com.litalk.messager.error"
    
    let userInfo: [String : Any] = [NSLocalizedDescriptionKey: message ?? ""]
    let returnError = NSError(domain: errorDomain, code: code.rawValue, userInfo: userInfo)
    
    return returnError
}
