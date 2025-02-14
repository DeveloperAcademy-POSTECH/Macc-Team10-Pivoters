//
//  FieldView.swift
//  Feature
//
//  Created by 박승찬 on 11/7/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import SwiftUI

import Common
import Core

struct FieldView: View {

    var observable: FieldObservable
    var isShowEditSheet: Bool
    @Binding var editType: EditType
    @Binding var currentPresentationDetent: PresentationDetent

    let noneGesture = DragGesture()
        .onChanged { _ in
            print("onChange")
        }
        .onEnded { _ in
            print("noneGesture")
        }

    var body: some View {
        ZStack {
            if Theme(rawValue: observable.lineup.selectedTheme) != nil {
                Theme(rawValue: observable.lineup.selectedTheme)?.field
                    .offset(CGSize(width: 0, height: 100))
                    .onTapGesture {
                        observable.lineup.selectionPlayerIndex = nil
                    }
            } else {
                Theme.blueGray.field
                    .offset(CGSize(width: 0, height: 100))
                    .onTapGesture {
                        observable.lineup.selectionPlayerIndex = nil
                    }
            }

            ForEach(0..<observable.lineup.selectedPlayType, id: \.self) { index in
                if observable.players[index].isGoalkeeper {
                    PlayerView(theme: Theme(rawValue: observable.lineup.selectedTheme) ?? .blueGray,
                               player: observable.players[index],
                               lineup: observable.lineup, index: index)
                    .offset(CGSize(width: observable.players[index].offset.draggedOffsetWidth,
                                   height: observable.players[index].offset.draggedOffsetHeight))
                    .onTapGesture {
                        if observable.lineup.selectionPlayerIndex == index {
                            observable.lineup.selectionPlayerIndex = nil
                        } else {
                            currentPresentationDetent = .height(CGFloat.editHeight)
                            observable.lineup.selectionPlayerIndex = index
                            editType = .player
                        }
                    }
                } else {
                    PlayerView(theme: Theme(rawValue: observable.lineup.selectedTheme) ?? .blueGray,
                               player: observable.players[index],
                               lineup: observable.lineup,
                               index: index)
                    .animation(.easeInOut, value: observable.players[index].offset.draggedOffsetHeight)
                    .animation(.easeInOut, value: observable.players[index].offset.draggedOffsetWidth)
                    .offset(CGSize(width: observable.players[index].offset.draggedOffsetWidth,
                                   height: observable.players[index].offset.draggedOffsetHeight))
                    .gesture(
                        isShowEditSheet ?
                        DragGesture()
                            .onChanged { gesture in
                                let draggedOffsetWidth =
                                gesture.translation.width +
                                observable.players[index].offset.accumulatedOffsetWidth
                                let draggedOffsetHeight =
                                gesture.translation.height +
                                observable.players[index].offset.accumulatedOffsetHeight
                                observable.players[index].offset.draggedOffsetWidth =
                                draggedOffsetWidth > 0 ? min(draggedOffsetWidth, 180): max(draggedOffsetWidth, -180)
                                observable.players[index].offset.draggedOffsetHeight =
                                draggedOffsetHeight > 0 ? min(draggedOffsetHeight, 120): max(draggedOffsetHeight, -110)
                            }
                            .onEnded { gesture in
                                let accumulatedOffsetWidth =
                                gesture.translation.width +
                                observable.players[index].offset.accumulatedOffsetWidth
                                let accumulatedOffsetHeight =
                                gesture.translation.height +
                                observable.players[index].offset.accumulatedOffsetHeight
                                observable.players[index].offset.accumulatedOffsetWidth =
                                accumulatedOffsetWidth > 0 ?
                                min(accumulatedOffsetWidth, 180): max(accumulatedOffsetWidth, -180)
                                observable.players[index].offset.accumulatedOffsetHeight =
                                accumulatedOffsetHeight > 0 ?
                                min(accumulatedOffsetHeight, 120): max(accumulatedOffsetHeight, -110)
                            }:
                            nil

                    )
                    .onTapGesture {
                        if observable.lineup.selectionPlayerIndex == index {
                            observable.lineup.selectionPlayerIndex = nil
                        } else {
                            currentPresentationDetent = .height(CGFloat.editHeight)
                            observable.lineup.selectionPlayerIndex = index
                            editType = .player
                        }
                    }
                }
            }
        }
    }
}
