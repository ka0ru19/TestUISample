//
//  GenerateCode.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/14.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import Foundation

class GenerateCode {
    private let fileName = "code.txt"
    private let initializeText = "// これはGenerateCodeによって自動生成されたcodeです"
    private let returnCode = "\n"
    private let space = " "
    private let tab = "    "
    private var className = "ViewController"
    private var inheritanceArray = ["UIViewController"]
    private var instanceArray: [String] = []
    private var instanceDetermineArray: [String] = []
    private var targetPath: URL!
    
    init() {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last else {
            debugLog("documentDirectoryが取得できない")
            return
        }
        targetPath = path.appendingPathComponent("/" + fileName)
    }
    
    /** 出力するコードを生成するメソッド */
    private func prepareCodeText() -> String{
        var text = initializeText + returnCode + returnCode
        text += "import UIKit" + returnCode + returnCode
        
        // class open
        text += "class" + space + className + " {" + returnCode
        for instance in instanceArray {
            text += tab + instance + returnCode + returnCode
        }
        // viewDidLoad open
        text += tab + "override func viewDidLoad() {" + returnCode
        text += tab + tab + "super.viewDidLoad()" + returnCode
        
        for instanceDetermine in instanceDetermineArray {
            text += tab + tab + instanceDetermine + returnCode
        }
        
        // viewDidLoad close
        text += tab + "}" + returnCode
        // class close
        text += "}" + returnCode
        return text
    }
    
    func addLine(text: inout String, tabCount: Int, line: String) {
        for _ in 0 ..< tabCount {
            text += tab
        }
        text += line + returnCode
    }
    
    public func addInstance(_ text: String) {
        instanceArray.append(text)
    }
    
    public func addInstanceDetermine(_ comment: String? = nil, _ text: String) {
        if let commentText = comment {
            instanceDetermineArray.append("//" + commentText)
        }
        instanceDetermineArray.append(text)
    }
    
    // テキストを追記するメソッド
    public func appendText(string: String) {
        do {
            let fileHandle = try FileHandle(forWritingTo: targetPath)
            
            // 改行を入れる
            let stringToWrite = "\n" + string
            
            // ファイルの最後に追記
            fileHandle.seekToEndOfFile()
            fileHandle.write(stringToWrite.data(using: String.Encoding.utf8)!)
            
        } catch let error {
            debugLog("failed to append: \(error)")
        }
    }
    
    // ファイルにコードを書き込むメソッド
    public func writeCode() {
        let text = prepareCodeText()
        
        do {
            try text.write(to: targetPath, atomically: true, encoding: .utf8)
        } catch let error {
            debugLog("failed to write: \(error.localizedDescription)")
        }
    }
    
    // ファイルのテキストを参照するメソッド
    public func readText() -> String {
        do {
            return try String(contentsOf: targetPath, encoding: .utf8)
        } catch let error as NSError {
            debugLog("failed to read: \(error.localizedDescription)")
            return ""
        }
    }
}
