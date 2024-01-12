//
//  DropDownMenu.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/19/23.
//

import SwiftUI

struct DropDownMenu: View{
    @State private var isOptionsPresented: Bool = false
    
    @Binding var selectedOption: DropDownMenuOption?
    
    let placeholder: String
    
    let options: [DropDownMenuOption]
    
    var body: some View{
        Button(action: {
            withAnimation {
                self.isOptionsPresented.toggle()
            }
        }) {
            HStack{
                Text(selectedOption == nil ? placeholder : selectedOption!.option)
                    .fontWeight(.heavy)
                    .foregroundColor(selectedOption == nil ? .black : .black)
                
                Spacer()
                
                Image(systemName: self.isOptionsPresented ? "chevron.up" : "chevron.down")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
            }
        }
        .padding()
        .overlay{
            RoundedRectangle(cornerRadius: 5)
                .stroke(.black, lineWidth: 2)
//                .fill(Color("darkGreen"))
        }
        .overlay(alignment: .top){
            VStack{
                if self.isOptionsPresented{
                    Spacer(minLength: 60)
                    DropDownMenuList(options: self.options) { option in
                        self.isOptionsPresented = false
                        self.selectedOption = option
                    }
                }
            }
        }
        .padding(.horizontal)
        .padding(
            .bottom, self.isOptionsPresented
            ? CGFloat(self.options.count * 32) > 300
                ? 300 + 30
                : CGFloat(self.options.count * 32) + 30
            : 0
        )
    }
}

struct DropDownMenu_Previews: PreviewProvider{
    static var previews: some View{
        DropDownMenu(
            selectedOption: .constant(nil),
            placeholder: "What are you looking to recycle?",
            options: DropDownMenuOption.testAllItems
        
        )
    }
}
