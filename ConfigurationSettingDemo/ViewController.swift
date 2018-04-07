//
//  ViewController.swift
//  ConfigurationSettingDemo
//
//  Created by Ky Nguyen on 4/7/18.
//  Copyright © 2018 kynguyen. All rights reserved.
//

import UIKit

let config: Configuration = {
    if let app = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String {
        if app == "Red" {
            return RedConfiguration()
        }
        else {
            return GreenConfiguration()
        }
    }
    
    return RedConfiguration()
}()

class ViewController: UIViewController {
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var buildLabel: UILabel!
    @IBOutlet weak var bundleIdLabel: UILabel!
    
    @IBOutlet weak var blogLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = config.themeColor
        appNameLabel.textColor = config.textColor
        versionLabel.textColor = config.textColor
        buildLabel.textColor = config.textColor
        bundleIdLabel.textColor = config.textColor
        blogLabel.textColor = config.textColor
        
        appNameLabel.text = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String
        versionLabel.text = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        buildLabel.text = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
        bundleIdLabel.text = Bundle.main.bundleIdentifier
    }

}

