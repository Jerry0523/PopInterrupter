//
//  ViewController.swift
//  PopInterrupterDemo
//
//  Created by 王杰 on 2018/3/14.
//  Copyright © 2018年 com.jerry. All rights reserved.
//

import UIKit
import PopInterrupter

class ViewController: UIViewController, AnyPopInterrupter {
    
    var isPopEnabled: Bool {
        if !jobHasDone {
            let alertController = UIAlertController(title: "Attention", message: "Are you sure to leave this page?", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Yes", style: .destructive, handler: { action in
                self.navigationController?.popViewController(animated: true)
            }))
            alertController.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        return jobHasDone
    }
    
    var jobHasDone = false

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

