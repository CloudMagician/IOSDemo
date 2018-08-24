//
//  ConditionViewController.swift
//  demo
//
//  Created by 陆子旭 on 2018/8/23.
//  Copyright © 2018年 Hello. All rights reserved.
//

import UIKit

class ConditionViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    private var healthscore = HealthScore()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let defaults = UserDefaults.standard

        let score = healthscore.Calculation(defaults.integer(forKey: "heart"),
                                            defaults.integer(forKey: "step"),
                                            defaults.integer(forKey: "sleep"))
        
        switch score {
        case 0:
            text.text = "0"
            image.image = UIImage(named:"主界面背景")
        case 1:
            text.text = "1"
            image.image = UIImage(named:"主界面完整")
        default:
            text.text = "2"
            image.image = UIImage(named:"主界面全背景")
        }
        
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
