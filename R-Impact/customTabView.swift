//
//  customTabView.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/19/23.
//

import SwiftUI

struct CustomTabsApp: View {
    
    @Binding var Tabselection: Int
    @Namespace private var animationNamespace
    
    let tabBarItems: [(image: String, title: String)] = [
        ("house.fill", "Home"),
        ("globe.americas.fill", "Forum"),
        ("tree.fill", "profile")
    ]
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(height: 60)
                .foregroundColor(Color(.secondarySystemBackground))//secondarySystemBackground
                .shadow(radius: 2)
            HStack() {
                ForEach(0..<3) {index in
                    Button {
                        Tabselection = index + 1
                    } label: {
                        VStack(spacing: 8) {
                            Spacer()
                            
                            Image(systemName: tabBarItems[index].image)
                            Text(tabBarItems[index].title)
                                .font(.caption)
                            
                            if index + 1 == Tabselection {
                                Rectangle()
                                    .frame(height: 8)
                                    .foregroundColor(.blue)
                                    .matchedGeometryEffect(id: "SelectedTabId", in: animationNamespace)
                                    .offset(y: 3)
                            } else {
                                Rectangle()
                                    .frame(height: 5)
                                    .foregroundColor(.clear)
                                    .offset(y: 3)
                            }
                            
                            
                        }
                        .foregroundColor(index + 1 == Tabselection ? Color("darkGreen") : .gray)
                    }
                }
            }
            .frame(height: 50)
            .clipShape(Capsule())
        }
    }
}

struct CustomTabsApp_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabsApp(Tabselection: .constant(1))
            .previewLayout(.sizeThatFits)
    }
}
