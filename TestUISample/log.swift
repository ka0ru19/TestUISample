//
//  log.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import Foundation

/**
 デバッグモード時にコンソールにログを出力する（引数はすべて省略可能）
 - parameter obj: 出力したい変数
 - parameter showDateFlag: 日付表示
 - parameter showTimeFlag: 時刻表示
 - parameter showFilenameFlag: ファイル名表示
 - returns: なし
 */
func debugLog(_ obj: Any?,
              showDateFlag: Bool = false,
              showTimeFlag: Bool = false,
              showFilenameFlag: Bool = false,
              file: String = #file,
              function: String = #function,
              line: Int = #line
    ) {
    
    #if DEBUG
    var fileLog = ""
    if showFilenameFlag {
        if let match = file.range(of: "[^/]*$", options: .regularExpression) {
            fileLog = String(file[match]) + "."
        }
    }
    
    var objLog = ""
    if let obj = obj {
        objLog = ":" + "\(obj)"
    }
    
    print("[\(fileLog)\(function):L\(line)] \(objLog)")
    #endif
}
