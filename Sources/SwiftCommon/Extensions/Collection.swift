//
//  Array.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 8.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

import Foundation

public extension Collection where Element: CustomStringConvertible {
    
    /// Returns all words in review title and content within an array uniquely.
    ///
    /// - Returns: words array sorted by repeat count
    func wordsSortedByRepeatCount() -> [(word: String, count: Int)] {
        let wordSet = NSCountedSet()
        forEach {
            wordSet.addObjects(from: $0.description.words.filter {$0.count > 3})
        }
        
        return wordSet.allObjects.map{(word: $0, count: wordSet.count(for: $0))}.sorted { $0.count > $1.count } as! [(word: String, count: Int)] 
    }
}
