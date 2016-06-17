//
//  AppDelegate.swift
//  新浪微博
//
//  Created by H on 16/6/15.
//  Copyright © 2016年 TanZhou. All rights reserved.
//

import UIKit
import QorumLogs

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
       

      //  HKPrint("sdf")
     
        // 设置全局颜色
        UITabBar.appearance().tintColor = UIColor.orangeColor()
        // 1.创建window
         window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // 2.设置跟控制器
        window?.rootViewController = MainViewController()
        // 3.显示window(设置主要的weindow)
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

//全局函数

/*
    输出格式:文件名称-方法名称[行号]:内容
 anyObject: 只能用于保存类类型(NSObject)它不能保存结构体!
 注意:在Swift中  Int Double String 结构体
 可是:我们的AnyObject保存结构体也不会报错!!
 原因:因为AnyObject保存结构体的时候,系统会自动转换类型!!
 但是:苹果不推荐大家用AnyObject保存结构体!!
 Any:可以保存类类型和结构体
 AnyObject:只能保存类类型
 
 如果希望自己的定义的方法B格高!!那么不推荐用Any
 使用一个高级用法 泛型函数!!
 哥么你传给我什么类型!!我就是什么类型!!!
 */


func HKPrint<T>(message:T,
             file:String = #file,
             method:String = #function,
             line:Int = #line)  {
    
    #if HKDEBUG
    
    //拼接字符串  // user/desc/H/代码/haha/XXX.Swift
    let fileName = (file as NSString).pathComponents.last!;
    print("\(fileName)-\(method)[\(line)]:\(message)")
        
    #endif
}













/* 日志框架使用
 //1 打开log
 QorumLogs.enabled = true
 
 //打印的是1 级别以上的代码
 //注意点:这个变量的控制代码一定要写在打印的代码前
 QorumLogs.minimumLogLevelShown = 1;
 //设置只打印某个文件的日志
 QorumLogs.onlyShowThisFile(ViewController)
 
 
 //2.测试log
 //        QorumLogs.test()
 //打印
 QL1("debug")
 QL2("info")
 QLPlusLine()
 QL3("warning")
 QL4("error")
 QLShortLine()
 
 */



