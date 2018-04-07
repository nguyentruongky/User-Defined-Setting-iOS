//
//  Configuration.swift
//  ConfigurationSettingDemo
//
//  Created by Ky Nguyen Coinhako on 4/7/18.
//  Copyright © 2018 kynguyen. All rights reserved.
//

import UIKit
protocol Configuration {
    var themeColor: UIColor { get set }
    var textColor: UIColor { get set }
}

struct RedConfiguration: Configuration {
    var themeColor = UIColor.red
    var textColor = UIColor.white
}


struct GreenConfiguration: Configuration {
    var themeColor: UIColor = UIColor.green
    var textColor = UIColor.blue
}

