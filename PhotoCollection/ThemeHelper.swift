//
//  ThemeHelper.swift
//  PhotoCollection
//
//  Created by Alex on 5/2/19.
//  Copyright © 2019 Alex. All rights reserved.
//

import Foundation
import UIKit

class ThemeHelper{
    
    let themePreferenceKey: String = "thisIsMyKey"
    let userDefaults = UserDefaults.standard
    
    var themePreference: String? {
        return userDefaults.string(forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToDark(){
        userDefaults.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToYourColorHere(){
        userDefaults.set("Blue", forKey: themePreferenceKey)
    }
    
}
