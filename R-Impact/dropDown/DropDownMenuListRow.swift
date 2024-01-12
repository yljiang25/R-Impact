//
//  DropdownMenuListRow.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/19/23.
//

import SwiftUI

struct DropDownMenuListRow: View{
    let option: DropDownMenuOption
    
    let onSelectedAction: (_ option: DropDownMenuOption) -> Void
    
    
    var body: some View{
        Button(action: {
            self.onSelectedAction(option)
        }) {
            Text(option.option)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .foregroundColor(.black)
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}

struct DropDownMenuListRow_Previews: PreviewProvider{
    static var previews: some View{
        DropDownMenuListRow(option: DropDownMenuOption.testOneItem,
                            onSelectedAction: { _ in })
    }
}
