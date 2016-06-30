//
//  Array+Unique.swift
//
//  Created by iCell on 6/23/16.
//  Copyright © 2016 iCell. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    func unique() -> [Element] {
        return self.reduce([Element]()) { (result, ele) -> [Element] in
            let contain = result.contains { $0 == ele }
            if contain {
                return result
            } else {
                var temp = result
                temp.append(ele)
                return temp
            }
        }
    }
}
