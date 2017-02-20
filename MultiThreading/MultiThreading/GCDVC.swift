//
//  GCDVC.swift
//  MultiThreading
//
//  Created by Cavan on 2017/2/20.
//  Copyright © 2017年 CavanZhao. All rights reserved.
//

import UIKit

class GCDVC: UIViewController {

    @IBOutlet weak var showImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //GCD: Grand Central Dispatch
        let systemSerial = DispatchQueue.main
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
