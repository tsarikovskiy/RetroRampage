//
//  Textures.swift
//  Engine
//
//  Created by Nick Lockwood on 05/06/2019.
//  Copyright © 2019 Nick Lockwood. All rights reserved.
//

public enum Texture: String, CaseIterable {
    case wall, wall2
    case crackwall, crackwall2
    case slimewall, slimewall2
    case floor
    case crackfloor
    case ceiling
    case monster
}

public struct Textures {
    private let textures: [Texture: Bitmap]
}

public extension Textures {
    init(loader: (String) -> Bitmap) {
        var textures = [Texture: Bitmap]()
        for texture in Texture.allCases {
            textures[texture] = loader(texture.rawValue)
        }
        self.init(textures: textures)
    }

    subscript(_ texture: Texture) -> Bitmap {
        return textures[texture]!
    }
}
