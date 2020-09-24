//
//  secondViewController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/10.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
        
        view.addSubview(button)
        button.snp.makeConstraints { (ConstraintMaker) in
            ConstraintMaker.width.height.equalTo(100)
            ConstraintMaker.center.equalTo(view)
        }
    }
    
    @objc func pushNext() {
        navigationController?.pushViewController(ViewController.init(), animated: true)
    }
    
    lazy var button: UIButton = {
        let button = UIButton.init(type: UIButton.ButtonType.custom)
        button.backgroundColor = UIColor.blue
        button.setTitle("跳转", for: UIControl.State.normal)
        button.addTarget(self, action:#selector(self.pushNext) , for: .touchUpInside)
        return button
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
