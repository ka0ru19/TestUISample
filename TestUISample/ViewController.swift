//
//  ViewController.swift
//  TestUISample
//
//  Created by Wataru Inoue on 2018/10/08.
//  Copyright © 2018 Wataru Inoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cellInfoArray : [(id: String, vc: DemoBaseViewController.Type, titleText: String)] = [
        (id: "UILabel", vc: UILabelViewController.self, titleText: "UILabelで文字を表示する"),
        (id: "UIButton", vc: UIButtonViewController.self, titleText: "UIButtonでボタンを表示する")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellInfoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = cellInfoArray[indexPath.row].titleText
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let nextViewController = cellInfoArray[indexPath.row].vc.newInstance()
        self.present(nextViewController, animated: true, completion: nil)
    }
    
    
}
