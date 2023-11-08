//
//  Uniform.swift
//  Common
//
//  Created by 한지석 on 11/8/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import Foundation
import SwiftUI

public enum Uniform: Codable {
    case basic

    public var assets: [Image] {
        switch self {
        case .basic:
            return [Image(asset: CommonAsset.uniform),
                    Image(asset: CommonAsset.tempsvg),
                    Image(asset: CommonAsset.field)]
        }
    }
}
