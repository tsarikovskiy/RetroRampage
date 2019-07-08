//
//  Tile.swift
//  Engine
//
//  Created by Nick Lockwood on 03/06/2019.
//  Copyright © 2019 Nick Lockwood. All rights reserved.
//

public enum Tile: Int, Decodable {
    case floor
    case wall
    case crackwall
    case slimewall
    case crackfloor
}

public extension Tile {
    var isWall: Bool {
        switch self {
        case .wall, .crackwall, .slimewall:
            return true
        case .floor, .crackfloor:
            return false
        }
    }

    var textures: [Texture] {
        switch self {
        case .floor:
            return [.floor, .ceiling]
        case .crackfloor:
            return [.crackfloor, .ceiling]
        case .wall:
            return [.wall, .wall2]
        case .crackwall:
            return [.crackwall, .crackwall2]
        case .slimewall:
            return [.slimewall, .slimewall2]
        }
    }
}
