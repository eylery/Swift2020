//
//  forthViewController.swift
//  SwiftNew
//
//  Created by apple on 2020/9/10.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Alamofire

class forthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(imgView)
        imgView.image = loadPic(url: "https://t8.baidu.com/it/u=1484500186,1503043093&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1600413226&t=ae038a41e0098f9c7d1917b3aec051f7")//UIImage.init(named: "moon")
        
    }
    
    @objc func loadPic(url urlStr: String) -> UIImage {
//        AF.request("").response {
//
//        }
//        var murl = URL.init(string: urlStr)
        var mdata = Data.init(contentsOf: URL.init(string: urlStr)!)
        let image: UIImage = UIImage.init(data: mdata)
        return image
    }
    
    lazy var imgView: UIImageView = {
        let imgView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: view.bounds.size.width, height: 200))
        imgView.contentMode = UIView.ContentMode.scaleAspectFit
        return imgView;
    }()
    
    lazy var button: UIButton = {
        let button = UIButton.init(type: UIButton.ButtonType.custom)
        button.backgroundColor = UIColor.blue
        button.setTitle("下载", for: UIControl.State.normal)
        button.addTarget(self, action:#selector(forthViewController.loadPic) , for: .touchUpInside)
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
