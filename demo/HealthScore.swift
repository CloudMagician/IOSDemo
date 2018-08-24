//
//  HealthScore.swift
//  demo
//
//  Created by 陆子旭 on 2018/8/24.
//  Copyright © 2018年 Hello. All rights reserved.
//

import Foundation

struct HealthScore {
    
    func Calculation(_ heart : Int, _ step : Int, _ sleep : Int) -> Int {
        
        let heartscore = abs(heart - 75) * 100
        let stepscore = step
        let sleepscore = sleep * 1000
        
        let score = sleepscore + stepscore - heartscore
        
        if score < 9000 {
            return 0
        } else  if score > 11000{
            return 2
        } else {
            return 1
        }
    }
}
