//
//  NavigationController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/10.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationBar.isTranslucent = false
//        extendedLayoutIncludesOpaqueBars = true
//        edgesForExtendedLayout = UIRectEdge(rawValue: UIRectEdge.top.rawValue | UIRectEdge.bottom.rawValue)
//        view.backgroundColor = UIColor.white
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        print(viewControllers.count)
        super.pushViewController(viewController, animated: true)
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
