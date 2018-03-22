//
//  GeneradorColores.swift
//  Color Quotes
//
//  Created by Tania on 21/2/18.
//  Copyright © 2018 TaniaCB. All rights reserved.
//

import Foundation
import UIKit
import GameKit

struct ColorGenerator{
    
    let colors = [
       UIColor.lightGray,
       UIColor.blue,
       UIColor.darkGray,
       UIColor.brown,
       UIColor.cyan,
       UIColor.green,
       UIColor.yellow,
       UIColor.magenta,
       UIColor.orange,
       UIColor.red,
       UIColor(red: 0, green: 145/255, blue: 147/255, alpha: 1.0), //teal
       UIColor(red: 1, green: 138/255, blue: 216/255, alpha: 1.0), //pink
       UIColor.purple
    ]
    
    func randomColorGenerate() -> UIColor{
        let colorRand = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        
        return colors[colorRand]
    }
}
