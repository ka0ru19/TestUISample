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
    private let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // サイズを指定
        label.frame.size = CGSize(width: self.view.frame.width * 2/3, height: 50)
        
        // 位置を指定
        label.center = CGPoint(x: self.view.center.x, y: self.view.frame.height * 1/3)
        
        // レイヤーの境界で切り抜きされるか指定（角を丸くするため）
        label.layer.masksToBounds = true
            
        // 角の丸み半径を指定
        label.layer.cornerRadius = 15.0
        
        // 背景色を指定
        label.backgroundColor = UIColor.blue
        
        // ラベルに表示する文字を指定
        label.text = "UILabelてすと"
        
        // ラベルの文字色を指定
        label.textColor = UIColor.orange
        
        // 文字の表示位置を中央に指定
        label.textAlignment = NSTextAlignment.center
        
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
