//
//  ViewController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/4.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifierStr = "cellIdent";
        
        var cell = tableView.dequeueReusableCell(withIdentifier: indentifierStr)
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: indentifierStr)
        }
        cell?.textLabel?.text = String(indexPath.row)
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        tabBarItem.selectedImage = tabBarItem.selectedImage?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
//        tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange], for: UIControl.State.normal)
        

        view.addSubview(tabView)
//        extendedLayoutIncludesOpaqueBars = true
//        edgesForExtendedLayout = UIRectEdge(rawValue: UIRectEdge.top.rawValue | UIRectEdge.bottom.rawValue)
    }
    
    
    lazy var tabView: UITableView = {

        let tabView =  UITableView.init(frame: CGRect.init(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height), style: UITableView.Style.grouped)
        tabView.tableFooterView = UIView.init()
        tabView.delegate = self
        tabView.dataSource = self
        return tabView
    }()
}

