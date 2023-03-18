//
//  NYCMapPIn.swift
//  2023-03-16-SumitShastri-NYCSchools
//
//  Created by Sumit Shastri on 18/03/23.
//

import SwiftUI

struct NYCMapPIn: View {
    @State private var showCallout = false

        let title: String
        let subtitle: String?
        let color: UIColor
        @Binding var isSelected: Bool?
        
        init(title: String, subtitle: String? = nil, color: UIColor, isSelected: Binding<Bool?> = .constant(nil)) {
            self.title = title
            self.subtitle = subtitle
            self.color = color
            self._isSelected = isSelected
        }
        
        var body: some View {
            VStack(spacing: 0) {
                VStack {
                    Text(title)
                        .font(.callout)
                        .padding(5)
                    
                    Text(subtitle ?? "")
                        .font(.callout)
                        .padding(5)
                        .opacity(showCallout && (subtitle != nil) ? 1 : 0)
                }
                .background(Color(.white))
                .cornerRadius(10)
                .opacity(showCallout ? 1 : 0)
                
                Image(systemName: "exclamationmark.circle.fill")
                    .font(.title)
                    .foregroundColor(Color(uiColor: color))
                
                Image(systemName: "arrowtriangle.down.fill")
                    .font(.caption)
                    .foregroundColor(Color(uiColor: color))
                    .offset(x: 0, y: -5)
            }
            .onTapGesture {
                showCallout.toggle()
            }
            .onLongPressGesture {
                if let _ = isSelected {
                    self.isSelected!.toggle()
                }
            }
        }
}

struct NYCMapPIn_Previews: PreviewProvider {
    static var previews: some View {
        NYCMapPIn(title: "School Name", color: .blue)
    }
}
