//
//  Field.swift
//  Common
//
//  Created by 한지석 on 11/10/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import Foundation
import SwiftUI

import Core

extension Theme {
    public var field: Image {
        switch self {
        case .blueGray:
            Image(asset: CommonAsset.fieldGray)
        case .whiteGreen:
            Image(asset: CommonAsset.fieldGreen)
        case .blackBlue:
            Image(asset: CommonAsset.fieldBlue)
        case .grayBlack:
            Image(asset: CommonAsset.fieldBlack)
        }
    }

    public var background: Image {
        switch self {
        case .blueGray:
            Image(asset: CommonAsset.backgroundBlue)
        case .whiteGreen:
            Image(asset: CommonAsset.backgroundWhite)
        case .blackBlue:
            Image(asset: CommonAsset.backgroundBlack)
        case .grayBlack:
            Image(asset: CommonAsset.backgroundGray)
        }
    }

    public var preview: Image {
        switch self {
        case .blueGray:
            Image(asset: CommonAsset.previewBlueGray)
        case .whiteGreen:
            Image(asset: CommonAsset.previewWhiteGreen)
        case .blackBlue:
            Image(asset: CommonAsset.previewBlackBlue)
        case .grayBlack:
            Image(asset: CommonAsset.previewGrayBlack)
        }
    }

    public var nameField: Color {
        switch self {
        case .blueGray, .blackBlue:
            Color(asset: CommonAsset.darkGray)
        case .whiteGreen, .grayBlack:
            Color.white
        }
    }

    public var textColor: Color {
        switch self {
        case .blueGray, .blackBlue:
            Color.white
        case .whiteGreen, .grayBlack:
            Color.black
        }
    }
}
