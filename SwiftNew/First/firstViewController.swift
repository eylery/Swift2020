//
//  firstViewController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/9.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import SnapKit

class firstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: identifyStr, for: indexPath)
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: identifyStr, for: indexPath) as! firstTableViewCell
            cell.titleLabel.text = "section:" + String(indexPath.section) + "    row:" + String(indexPath.row)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: codeIdentify, for: indexPath) as! codeTableViewCell
            cell.titleLabel.text = "section:" + String(indexPath.section) + "    row:" + String(indexPath.row)
            return cell
        }
        
    }
    

//    let tabView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.addSubview(tabView)
        tabView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(view)
        }
        
        
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        tabView.frame = view.bounds
//    }
    
    
    lazy var tabView: UITableView = {
        let tabView =  UITableView.init(frame: view.bounds, style: UITableView.Style.grouped)
        tabView.rowHeight = 44
        tabView.tableFooterView = UIView.init()
        tabView.delegate = self
        tabView.dataSource = self
        tabView.register(UINib.init(nibName: String(describing: firstTableViewCell.self), bundle: Bundle.main), forCellReuseIdentifier: identifyStr)
        tabView.register(codeTableViewCell.self, forCellReuseIdentifier: codeIdentify)
        return tabView
    }()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
