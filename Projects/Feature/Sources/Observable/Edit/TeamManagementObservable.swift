//
//  TeamManagementObservable.swift
//  Feature
//
//  Created by 한지석 on 11/14/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import Foundation

import Core

@Observable
final class TeamManagementObservable {

    var isChangeTeamInfoPresented: Bool = false
    var isChangeLineupInfoPresented: Bool = false
    var team: Team
    var lineup: Lineup
    var players: [Player] = [Player]()

    init(team: Team, lineup: Lineup) {
        self.team = team
        self.lineup = lineup
        self.players = lineup.players.sorted { $0.number < $1.number }
    }

    func changeFormation(_ formationType: TypeOfFormation) {
        let formationOffsets: [CGSize] = formationType.returnPosition()

        for index in 0..<formationOffsets.count {
            players[index].offset.accumulatedOffsetWidth = formationOffsets[index].width
            players[index].offset.accumulatedOffsetHeight = formationOffsets[index].height
            players[index].offset.draggedOffsetWidth = formationOffsets[index].width
            players[index].offset.draggedOffsetHeight = formationOffsets[index].height
        }
    }
}
