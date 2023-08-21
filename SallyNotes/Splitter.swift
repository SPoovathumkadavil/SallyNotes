//
//  Splitter.swift
//  SallyNotes
//
//  Created by Saaleh Poovathumkadavil on 8/20/23.
//

import SwiftUI

/// The Splitter that separates the primary from secondary views in a SplitView.
struct Splitter: View {
    
    private let orientation: Orientation
    private let color: Color
    private let inset: CGFloat
    private let visibleThickness: CGFloat
    private var invisibleThickness: CGFloat
    
    enum Orientation: CaseIterable {
        /// The orientation of the Divider itself.
        /// Thus, use Horizontal in a VSplitView and Vertical in an HSplitView
        case Horizontal
        case Vertical
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            switch orientation {
            case .Horizontal:
                Color.clear
                    .frame(height: invisibleThickness)
                    .padding(0)
                RoundedRectangle(cornerRadius: visibleThickness / 2)
                    .fill(color)
                    .frame(height: visibleThickness)
                    .padding(EdgeInsets(top: 0, leading: inset, bottom: 0, trailing: inset))
            case .Vertical:
                Color.clear
                    .frame(width: invisibleThickness)
                    .padding(0)
                RoundedRectangle(cornerRadius: visibleThickness / 2)
                    .fill(color)
                    .frame(width: visibleThickness)
                    .padding(EdgeInsets(top: inset, leading: 0, bottom: inset, trailing: 0))
            }
        }
        .contentShape(Rectangle())
    }
    
    init(orientation: Orientation, color: Color = .gray, inset: CGFloat = 8, visibleThickness: CGFloat = 2, invisibleThickness: CGFloat = 30) {
        self.orientation = orientation
        self.color = color
        self.inset = inset
        self.visibleThickness = visibleThickness
        self.invisibleThickness = invisibleThickness
    }
}
