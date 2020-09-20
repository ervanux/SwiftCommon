//
//  StringProtocol.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 9.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

extension StringProtocol {
    
    var words: [SubSequence] {
        return split { !$0.isLetter }
    }
}

