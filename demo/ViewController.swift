//
//  ViewController.swift
//  demo
//
//  Created by Apple on 2018/8/23.
//  Copyright © 2018年 Hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.barStyle = .blackOpaque
        self.navigationController?.navigationBar.shadowImage = UIImage()

        let image = UIImage(named: "主界面全背景")
        let patternColor = UIColor.init(patternImage:image!)
        self.view.backgroundColor = patternColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

