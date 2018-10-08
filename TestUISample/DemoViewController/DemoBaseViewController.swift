//
//  DemoBaseViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class DemoBaseViewController: UIViewController {
    
    let backToMenuButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        debugLog("読み込み開始 : " + String(describing: type(of: self)))
        
        self.view.backgroundColor = .white
        
        backToMenuButton.frame.size = CGSize(width: 36, height: 36)
        backToMenuButton.frame.origin = CGPoint(x: 8, y: 8)
        backToMenuButton.backgroundColor = .lightGray
        backToMenuButton.setTitle("戻る", for: .normal)
        backToMenuButton.addTarget(self, action: #selector(self.onTappedBackToMenuButton(sender:)), for: .touchUpInside)
        self.view.addSubview(backToMenuButton)
    }
    
    class func newInstance()->DemoBaseViewController {
        return self.init()
    }
    
    @objc func onTappedBackToMenuButton(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
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
