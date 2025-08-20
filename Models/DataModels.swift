import Foundation
import Cocoa
import Combine

// MARK: - Enums
enum ModuleType: String, Codable, CaseIterable {
    case speed = "Speed"
    case productivity = "Productivity"
    case efficiency = "Efficiency"
    case quality = "Quality"
    
    var color: NSColor {
        switch self {
        case .speed: return .systemBlue
        case .productivity: return .systemRed
        case .efficiency: return .systemGreen
        case .quality: return .systemYellow
        }
    }
}

enum Quality: String, Codable, CaseIterable {
    case normal = "Normal"
    case uncommon = "Uncommon"
    case rare = "Rare"
    case epic = "Epic"
    case legendary = "Legendary"
    
    var color: NSColor {
        switch self {
        case .normal: return .systemGray
        case .uncommon: return .systemGreen
        case .rare: return .systemBlue
        case .epic: return .systemPurple
        case .legendary: return .systemOrange
        }
    }
    
    var multiplier: Double {
        switch self {
        case .normal: return 1.0
        case .uncommon: return 1.3
        case .rare: return 1.6
        case .epic: return 1.9
        case .legendary: return 2.5
        }
    }
}

enum IOSide: String, Codable, CaseIterable {
    case input = "input"
    case output = "output"
    
    var opposite: IOSide {
        switch self {
        case .input: return .output
        case .output: return .input
        }
    }
}
