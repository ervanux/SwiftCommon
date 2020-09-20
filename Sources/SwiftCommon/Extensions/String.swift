//
//  String.swift
//  Core
//
//  Created by Erkan Ugurlu on 9.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

import Foundation

public extension String {
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
