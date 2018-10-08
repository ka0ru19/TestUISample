//
//  DemoBaseViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class DemoBaseViewController: UIViewController {

    var runViewController: UILabelViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("DemoBaseViewController読み込み")
        
        self.view.backgroundColor = .white

        // Do any additional setup after loading the view.
    }
    
    class func newInstance()->DemoBaseViewController {
        return self.init()
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
