//
//  InitSwiftData.swift
//  Core
//
//  Created by 한지석 on 12/12/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import Foundation

public struct InitLinable {
    static func makeTheFirstTeam() -> Team {
        Team(id: UUID(),
             teamName: String(localized: "My Team"),
             isSelected: true,
             createdAt: Date(),
             updatedAt: Date(),
             lineup: makeLineup(),
             teamPlayers: [])
    }
    
    public static func makeTeam(teamName: String) -> Team {
        Team(id: UUID(),
             teamName: teamName,
             isSelected: false,
             createdAt: Date(),
             updatedAt: Date(),
             lineup: makeLineup(),
             teamPlayers: [])
    }
    
    public static func makeTeamPlayer(name: String, backNumber: Int) -> TeamPlayer {
        TeamPlayer(name: name, backNumber: backNumber)
    }
    
    static func makeLineup() -> [Lineup] {
        [Lineup(id: UUID(),
                index: 0,
                lineupName: String(localized: "Lineup 1"),
                selectedUniform: 0,
                selectedTheme: 0,
                selectedPlayType: 11,
                selectedFormation: "4-3-3",
                primaryColor: UniformColor(red: 0.921569, green: 0.921569, blue: 0.921569),
                secondaryColor: UniformColor(red: 0.6, green: 0.6, blue: 0.6),
                players: makePlayers()),
         Lineup(id: UUID(),
                index: 1,
                lineupName: String(localized: "Lineup 2"),
                selectedUniform: 0,
                selectedTheme: 0,
                selectedPlayType: 11,
                selectedFormation: "4-3-3",
                primaryColor: UniformColor(red: 0.921569, green: 0.921569, blue: 0.921569),
                secondaryColor: UniformColor(red: 0.6, green: 0.6, blue: 0.6),
                players: makePlayers()),
         Lineup(id: UUID(),
                index: 2,
                lineupName: String(localized: "Lineup 3"),
                selectedUniform: 0,
                selectedTheme: 0,
                selectedPlayType: 11,
                selectedFormation: "4-3-3",
                primaryColor: UniformColor(red: 0.921569, green: 0.921569, blue: 0.921569),
                secondaryColor: UniformColor(red: 0.6, green: 0.6, blue: 0.6),
                players: makePlayers()),
        ]
    }
    
    /// 나중에 formaiton을 파라미터로 받아와서 플레이어의 갯수 리턴을 switch하면 될듯하다.
    static func makePlayers() -> [Player] {
        [
            Player(id: UUID(),
                   number: 1,
                   isGoalkeeper: true,
                   offset: OffsetValue(draggedOffsetWidth: 0,
                                       draggedOffsetHeight: 107,
                                       accumulatedOffsetWidth: 0,
                                       accumulatedOffsetHeight: 100)),
            Player(id: UUID(),
                   number: 2,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: -75,
                                       draggedOffsetHeight: 50,
                                       accumulatedOffsetWidth: -75,
                                       accumulatedOffsetHeight: 50)),
            Player(id: UUID(),
                   number: 3,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 75,
                                       draggedOffsetHeight: 50,
                                       accumulatedOffsetWidth: 75,
                                       accumulatedOffsetHeight: 50)),
            Player(id: UUID(),
                   number: 4,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 140,
                                       draggedOffsetHeight: 30,
                                       accumulatedOffsetWidth: 140,
                                       accumulatedOffsetHeight: 30)),
            Player(id: UUID(),
                   number: 5,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: -140,
                                       draggedOffsetHeight: 30,
                                       accumulatedOffsetWidth: -140,
                                       accumulatedOffsetHeight: 30)),
            Player(id: UUID(),
                   number: 6,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 0,
                                       draggedOffsetHeight: 20,
                                       accumulatedOffsetWidth: 0,
                                       accumulatedOffsetHeight: 20)),
            Player(id: UUID(),
                   number: 7,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: -70,
                                       draggedOffsetHeight: -20,
                                       accumulatedOffsetWidth: -70,
                                       accumulatedOffsetHeight: -20)),
            Player(id: UUID(),
                   number: 8,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 70,
                                       draggedOffsetHeight: -20,
                                       accumulatedOffsetWidth: 70,
                                       accumulatedOffsetHeight: -20)),
            Player(id: UUID(),
                   number: 9,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 0,
                                       draggedOffsetHeight: -80,
                                       accumulatedOffsetWidth: 0,
                                       accumulatedOffsetHeight: -80)),
            Player(id: UUID(),
                   number: 10,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: 130,
                                       draggedOffsetHeight: -80,
                                       accumulatedOffsetWidth: 130,
                                       accumulatedOffsetHeight: -80)),
            Player(id: UUID(),
                   number: 11,
                   isGoalkeeper: false,
                   offset: OffsetValue(draggedOffsetWidth: -130,
                                       draggedOffsetHeight: -80,
                                       accumulatedOffsetWidth: -130,
                                       accumulatedOffsetHeight: -80))
        ]
    }
}
