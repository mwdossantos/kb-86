//
//  ViewManager.swift
//  Star Wars Favorites
//
//  Created by Matthew Wilson on 24/04/2020.
//  Copyright © 2020 Miles. All rights reserved.
//

import Foundation
import SwiftUI

public class ViewManager {
    
    static var activeView: Any {
        get { return ViewManager.activeView }
        set { ViewManager.activeView = newValue }
    }
    init(initialView: Any) {
        ViewManager.activeView = initialView
    }

}
