//
//  TabBarController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/10.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addChildViewControllers()
        tabBar.isTranslucent = false
//        extendedLayoutIncludesOpaqueBars = true
//        self.edgesForExtendedLayout = UIRectEdge.top
//        tabBar.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
    }
    
    func addChildViewControllers() {
        setupOneChildViewController(title: "首页", image: "tab_0", selectedImage: "tab_c0", controller: firstViewController.init())
        setupOneChildViewController(title: "收藏", image: "tab_1", selectedImage: "tab_c1", controller: secondViewController.init())
        setupOneChildViewController(title: "分享", image: "tab_2", selectedImage: "tab_c2", controller: ViewController.init())
        setupOneChildViewController(title: "设置", image: "tab_3", selectedImage: "tab_c3", controller: forthViewController.init())
    }
    
    func setupOneChildViewController(title: String, image: String, selectedImage: String, controller: UIViewController) {
        controller.tabBarItem.title = title
        controller.title = title
        controller.tabBarItem.image = UIImage.init(named: image)
        controller.tabBarItem.selectedImage = UIImage.init(named: selectedImage)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        controller.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.orange], for: UIControl.State.normal)
        addChild(NavigationController.init(rootViewController: controller))
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
