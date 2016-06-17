//
//  MainViewController.swift
//  WeiBo
//
//  Created by LuzhiChao on 16/6/16.
//  Copyright © 2016年 LuzhiChao. All rights reserved.
//

// 过年就更新？？样式变了？？动态编码！！！
// 命名空间，product name
/* 
 可选项 :当一个变量/常量 他有可能为空的时候 这个变量/常量就是一个可选项
 guard else {return}
 */

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // 添加所有的子控制器
        addChildViewControllers()
        
//        // ！强行解包
//        let Class = NSClassFromString("LZC."+"HomeViewController")!
//        print(Class)
    
        // 获取plist文件的product name（获取命名空间）
//   guard let proName = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"] as? String else
//   {
//    return
//    }
//        print(proName)
//        
//        let url = NSURL(string :"xxx")
//        add(url!)
    }
    
    func add(url: NSURL) {
        
    }
    // 添加所有子控制器
    func addChildViewControllers()  {
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileViewController(), title: "我", imageName: "tabbar_profile")
        

    }
    /**
     添加子控制器
     
     - parameter childController: 需要的子控制器
     - parameter title:           子控制器对应标题
     - parameter imageName:       子控制器对应图片
     */
    func addChildViewController(childController: UIViewController, title:String, imageName:String) {
      //  print(childController)
        // 1.添加子控制器
     //   let childController = UIViewController()
        // 2.设置子控制器
        //        home.tabBarItem.title = "首页"
        //        home.navigationItem.title = "首页"
        
        childController.title = title
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        
        // 2.1包装导航条
        let nav = UINavigationController(rootViewController: childController)
        
        // 3.添加到tabBarVC中
        addChildViewController(nav)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
}
