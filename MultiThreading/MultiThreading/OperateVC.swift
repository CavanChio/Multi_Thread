//
//  OperateVC.swift
//  MultiThreading
//
//  Created by Cavan on 2017/2/20.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class OperateVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //OperationQuene具有开辟子线程的能力, 相当于一个容器, 用来管理里面的子线程
        let quene = OperationQueue()
        
        //创建一个invocation任务
        let blockOperation1 = BlockOperation {
            for _ in 0..<100 {
                print("AA")
            }
        }
        let blockOperation2 = BlockOperation {
            for _ in 0..<100 {
                print("BB")
            }
        }
        let blockOperation3 = BlockOperation {
            for _ in 0..<100 {
                print("CC")
            }
        }
        
        let blockOperation4 = BlockOperation.init { 
            print(Thread.isMainThread)
        }
        quene.maxConcurrentOperationCount = 2
        
        blockOperation2.addDependency(blockOperation1)
        blockOperation3.addDependency(blockOperation1)
        quene.addOperation(blockOperation1)
        quene.addOperation(blockOperation2)
        quene.addOperation(blockOperation3)
        quene.addOperation(blockOperation4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
