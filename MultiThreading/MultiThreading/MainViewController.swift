//
//  MainViewController.swift
//  MultiThreading
//
//  Created by Cavan on 2017/2/20.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.objectCreate()
        self.classCreate()
    }

    func objectCreate() {
        let thread = Thread.init(target: self, selector: #selector(self.objectThread), object: nil)
        thread.start()
//        thread.cancel()
    }
    
    func objectThread() {
        for i in 0..<10000000 {
            if i == 30 {
                Thread.exit()
            }
            print("****: \(i)")
            print(Thread.isMainThread)
        }
    }
    
    func classCreate() {
        Thread.detachNewThreadSelector(#selector(self.thread2Action), toTarget: self, with: nil)
    }
    
    func thread2Action() {
        print(Thread.isMainThread)
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
