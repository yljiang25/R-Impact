//
//  DropDownMenuList.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/19/23.
//

import SwiftUI

struct DropDownMenuList: View {
    let options: [DropDownMenuOption]
    
    let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, spacing: 2){
                ForEach(options) { option in
                    DropDownMenuListRow(option: option, onSelectedAction:
                        self.onSelectedAction)
                }
            }
        }
        .frame(height: CGFloat(self.options.count * 32) > 300
               ? 300
               : CGFloat(self.options.count * 32)
        )
        .padding(.vertical, 5)
        .overlay{
            RoundedRectangle(cornerRadius: 5)
                .stroke(.black, lineWidth: 2)
        }
    }
}

struct DropDownMenuList_Previews: PreviewProvider{
    static var previews: some View{
        DropDownMenuList(options: DropDownMenuOption.testAllItems, onSelectedAction: { _ in})
    }
}
