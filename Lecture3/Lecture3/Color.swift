//
//  Color.swift
//  Lecture3
//
//  Created by Jp LaFond on 4/8/17.
//  Copyright © 2017 Jp LaFond. All rights reserved.
//

import UIKit

/**
 Color to use and present in our UI examples

 Known options:
    * red
    * orange
    * yellow
    * green
    * blue
    * purple
 */
enum Color: String {
    case red
    case orange
    case yellow
    case green
    case blue
    case purple

    /// Dynamic variable to present the UIColor associated with the item
    var color: UIColor {
        switch self {
        case .red:
            return UIColor.red
        case .orange:
            return UIColor.orange
        case .yellow:
            return UIColor.yellow
        case .green:
            return UIColor.green
        case .blue:
            return UIColor.blue
        case .purple:
            return UIColor.purple
        }
    }

    /// Dynamic variable to return all of the known Colors
    static var allColors: [Color] {
        return [.red, .orange, .yellow, .green, .blue, .purple]
    }
}

// MARK: - Add descriptive functionality
extension Color: CustomStringConvertible {
    var description: String {
        return self.rawValue.capitalized
    }
}
