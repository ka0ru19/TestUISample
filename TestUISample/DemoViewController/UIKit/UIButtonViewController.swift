//
//  UIButtonViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class UIButtonViewController: DemoBaseViewController {
    
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // サイズを指定
        button.frame.size = CGSize(width: self.view.frame.width * 2/3, height: 50)
        
        // 位置を指定
        button.center = CGPoint(x: self.view.center.x, y: self.view.frame.height * 2/3)
        
        // 背景色を指定
        button.backgroundColor = UIColor.red
        
        // レイヤーの境界で切り抜きされるか指定（角を丸くするため）
        button.layer.masksToBounds = true
        
        // 角の丸み半径を指定
        button.layer.cornerRadius = button.frame.height / 2
        
        // タイトルを設定する(通常時)
        button.setTitle("ボタン(通常)", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        
        // タイトルを設定する(ボタンが押されている時)
        button.setTitle("ボタン(押されている時)", for: .highlighted)
        button.setTitleColor(UIColor.black, for: .highlighted)
        
        // イベントを追加する
        button.addTarget(self, action: #selector(self.onClickButton(sender:)), for: .touchUpInside)
        
        // ボタンをViewに追加
        self.view.addSubview(button)
        
        let propertyNameArray: [String] = self.getPropertyNames()
        debugLog(String(describing: type(of: propertyNameArray.first)))
        
        let generateCode = GenerateCode()
        generateCode.addInstance("private let button = UIButton()")
        generateCode.addInstanceDetermine("サイズを指定", "button.frame.size = CGSize(width: self.view.frame.width * 2/3, height: 50)")
        generateCode.addInstanceDetermine("位置を指定", "button.center = CGPoint(x: self.view.center.x, y: self.view.frame.height * 2/3)")
        generateCode.addInstanceDetermine("背景色を指定", "button.backgroundColor = UIColor.red")
        generateCode.addInstanceDetermine("レイヤーの境界で切り抜きされるか指定（角を丸くするため）", "button.layer.masksToBounds = true")
        generateCode.addInstanceDetermine("角の丸み半径を指定", "button.layer.cornerRadius = button.frame.height / 2")
        generateCode.addInstanceDetermine("タイトルを設定する(通常時)", "button.setTitle(\"ボタン(通常)\", for: .normal)")
        generateCode.addInstanceDetermine(nil, "button.setTitleColor(UIColor.white, for: .normal)")
        generateCode.addInstanceDetermine("タイトルを設定する(ボタンが押されている時)", "button.setTitle(\"ボタン(押されている時)\", for: .highlighted)")
        generateCode.addInstanceDetermine(nil, "button.setTitleColor(UIColor.black, for: .highlighted)")
        generateCode.addInstanceDetermine("イベントを追加する", "button.addTarget(self, action: #selector(self.onClickButton(sender:)), for: .touchUpInside)")
        generateCode.addInstanceDetermine("ボタンをViewに追加", "self.view.addSubview(button)")
        generateCode.writeCode()
        
        debugLog(GenerateCode().readText())
    }
    
    @objc func onClickButton(sender: UIButton) {
        print("button tapped!")
        print("sender.currentTitle: \(sender.currentTitle ?? "null(no title)" )")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
