//
//  MainObservable.swift
//  Feature
//
//  Created by Ha Jong Myeong on 11/15/23.
//  Copyright © 2023 com.pivoters. All rights reserved.
//

import Foundation
import SwiftUI

@Observable
final class MainObservable {

    var isSharing: Bool // 공유 상태 여뷰
    var isLoading: Bool // 초기 로딩 상태 여뷰
    var isShowTeamSheet: Bool // 팀 교체 시트 표시 여뷰
    var isShowEditSheet: Bool // 편집 시트 표시 여부
    var currentIndex: Int // 현재 인덱스 값: carousel
    var editSheetOffset: CGFloat // 편집 시트 오프셋
    var editSheetIndicatorOffset: CGFloat // "밀어서 편집하기" 섹션 오프셋
    var editType: EditType
    var currentPresentationDetent: PresentationDetent = .fraction(0.16)
    let presentationDetents: Set<PresentationDetent> = [.fraction(0.16), .fraction(0.48)]
    let editHeight = UIScreen.main.bounds.size.height * 0.43
    let defaultHeight = UIScreen.main.bounds.size.height * 0.11
    let maxDragHeight = UIScreen.main.bounds.height / 3


    init() {
        self.isSharing = false
        self.isLoading = true
        self.isShowTeamSheet = false
        self.isShowEditSheet = false
        self.currentIndex = 0
        self.editSheetOffset = CGFloat.zero
        self.editSheetIndicatorOffset = CGFloat.zero
        self.editType = .theme
    }
}
