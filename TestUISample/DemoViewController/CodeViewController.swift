//
//  CodeViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/14.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    let codeTextView = UITextView()
    let toolBar = UIToolbar()
    let margin: CGFloat = 8.0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        
        let toolBarHeight = UINavigationController().toolbar.frame.size.height
        toolBar.frame.origin = CGPoint(x: 0, y: self.view.frame.height - toolBarHeight)
        toolBar.frame.size = CGSize(width: self.view.frame.width, height: toolBarHeight)
        toolBar.barStyle = .default
        let closeButtonItem = UIBarButtonItem(title: "close", style: .plain, target: self, action: #selector(self.onTappedCloseButton(sender:)))
        toolBar.items = [closeButtonItem]
        self.view.addSubview(toolBar)
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        codeTextView.frame.origin = CGPoint(x: margin, y: statusBarHeight + margin)
        codeTextView.frame.size = CGSize(width: self.view.frame.width - margin * 2,
                                         height: toolBar.frame.origin.y - statusBarHeight - margin * 2)
        codeTextView.backgroundColor = .cyan
        codeTextView.isEditable = false
        codeTextView.text = GenerateCode().readText()
        self.view.addSubview(codeTextView)
        
    }
    
    @objc func onTappedCloseButton(sender: UIButton) {
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
