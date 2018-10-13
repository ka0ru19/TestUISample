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
    let toolBar = UIToolbar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        debugLog("読み込み開始 : " + String(describing: type(of: self)))
        
        self.view.backgroundColor = .white
        let toolBarHeight = UINavigationController().toolbar.frame.size.height
        toolBar.frame.size = CGSize(width: self.view.frame.width, height: toolBarHeight)
        toolBar.frame.origin = CGPoint(x: 0, y: self.view.frame.height - toolBarHeight)
        toolBar.barStyle = .default
        let backToMenuButtonItem = UIBarButtonItem(title: "back", style: .plain, target: self, action: #selector(self.onTappedBackToMenuButton(sender:)))
        let flexibleSpaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let goToCodeBarButtonItem = UIBarButtonItem(title: "code", style: .plain, target: self, action: #selector(self.onTappedToCodeBarButtonItem(sender:)))
        toolBar.items = [backToMenuButtonItem, flexibleSpaceItem, goToCodeBarButtonItem]
        self.view.addSubview(toolBar)
    }
    
    class func newInstance()->DemoBaseViewController {
        return self.init()
    }
    
    @objc func onTappedBackToMenuButton(sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func onTappedToCodeBarButtonItem(sender: UIBarButtonItem) {
        debugLog("onTappedToCodeBarButtonItem")
        let nextViewController = CodeViewController()
        self.present(nextViewController, animated: true, completion: nil)
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
