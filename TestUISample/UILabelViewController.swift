//
//  UILabelViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class UILabelViewController: DemoBaseViewController {
    
    // ラベルを宣言
    let label = UILabel.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("UILabelViewController読み込み")

        // Do any additional setup after loading the view.
        
        // サイズを指定
        label.frame.size = CGSize(width: self.view.frame.width * 2/3, height: 30)
        
        // 位置を画面中央の上部に指定
        label.center = CGPoint(x: self.view.center.x, y: self.view.frame.height * 1/3)
        
        // 背景色を黄色に指定
        label.backgroundColor = UIColor.yellow
        
        // ラベルいに表示する文字を指定
        label.text = "UILabelてすと"
        
        // 文字の表示位置を中央に指定
        label.contentMode = .center
        
        // このViewConrollerのサブビューにラベルを追加
        self.view.addSubview(label)
        
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
