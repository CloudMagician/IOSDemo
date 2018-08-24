//
//  TodayImageViewController.swift
//  demo
//
//  Created by 陆子旭 on 2018/8/23.
//  Copyright © 2018年 Hello. All rights reserved.
//

import UIKit

class TodayImageViewController: UIViewController {
    
    @IBOutlet weak var heartLabel: UILabel!
    
    @IBOutlet weak var stepLabel: UILabel!
    
    @IBOutlet weak var sleepLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard
        heartLabel.text = heartLabel.text! + String(defaults.integer(forKey: "heart"))
        stepLabel.text = stepLabel.text! + String(defaults.integer(forKey: "step"))
        sleepLabel.text = sleepLabel.text! + String(defaults.integer(forKey: "sleep"))

        // Do any additional setup after loading the view.
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
