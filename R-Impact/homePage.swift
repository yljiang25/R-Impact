//
//  homePage.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/10/23.
//

import SwiftUI

struct homePage: View {
    @State private var itemName: DropDownMenuOption? = nil
    
    var body: some View {
        VStack {
            
//            RoundedRectangle(cornerRadius: 4)
//                .fill(Color.green)
//                .frame(width: 300, height: 100)
//            Text("Recycling information")
//                .frame(width: 300, height: 100, alignment: .center)
//                .background(Color("lightBrown"))
//                .clipShape(RoundedRectangle(cornerRadius: 20))
//            Image("logo")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
////                .frame(width: 200, height: 200)
//                .cornerRadius(10)
//                .padding()
            
//            DropDownMenu(
//                selectedOption: self.$itemName,
//                placeholder: "Select item to recycle",
//                options: DropDownMenuOption.testAllItems
//            )
            
//            Text(itemName?.option ?? "")
            if itemName?.option == nil{
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
    //                .frame(width: 200, height: 200)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                Text("Select from the dropdown menu to learn about how to recycle an item")
                    .padding()
                    .frame(maxHeight: .infinity, alignment: .topTrailing)
                    .italic()
            }
            if itemName?.option == "Food scraps"{
                Image("Logo")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                ScrollView(.vertical, showsIndicators: true){
                    Text(
                        "About 20% of all waste produced by Chicagoans each year is food waste where the majority ends up in landfills. Chicago being one of the biggest cities in America has no citywide food recycling program, which leaves community and private organizations to fill this void. Below are ways to reduce food waste: ")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("- Some food scraps can be used to grow more of those items. For example, green onion, romaine lettuce, celery, garlic, etc. It can be as easy as putting those scraps in a pot of soil or a glass of water and they'll regrow.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.ruralsprout.com/regrow-vegetables/")!)
                    Text("- Composting food waste can in return provide nutrient rich soil for your garden that'll enable you to grow your own food as well as stopping food scraps from going to landfills.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.epa.gov/recycle/composting-home#:~:text=Improves%20the%20structure%20and%20health,need%20for%20pesticides%20and%20fertilizers.")!)
                    Text("- If food items are unopened, uneaten, and not expired they can be donated to local soup kitchens or food banks. Organizations such as the Greater Chicago Food Depository and the Good Samaritan Food Donation Act can be places to start.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.chicagosfoodbank.org/get-involved/donate-food/#:~:text=Traditional%20Food%20Drives&text=4100%20W.,Ann%20Lurie%20Pl.&text=Monday%20through%20Friday%2C%209%20a.m.,the%20building%20on%20Keeler%20Ave.")!)
                }
            } else if itemName?.option == "Shirts"{
                Image("Logo")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                ScrollView(.vertical, showsIndicators: true){
                    Text(
                        "Chicago Textile Recycling provides textile recycling outlets and fundraising opportunities for area organizations, businesses and municipalities. By collecting used clothing, shoes, and household items for reuse and recycling: ")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("- If you have a number of old t-shirts to work with you can cut them into strips, braid them together, and sew them into eclectic-looking baskets, bowls, or rugs! These colorful storage and decor options can be used anywhere in your home and are sure to brighten up your spaces.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://blog.bonfire.com/what-to-do-with-old-t-shirts/")!)
                    Text("- T-shirt material works great for headbands because it’s soft and stretchy. It’s also super easy to work with and doesn’t fray too easily. Headbands have seen a comeback in recent years, and there are lots of different styles to choose from and play around with. Check out these tutorials to learn how to make a couple of super cute headband styles!")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://blog.bonfire.com/what-to-do-with-old-t-shirts/")!)
                    Text("- Did you know you can make a macrame-style plant hanger from your old tees in less than 30 minutes?! Sounds like the perfect activity for a night in with friends!")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://blog.bonfire.com/what-to-do-with-old-t-shirts/")!)
                }
            } else if itemName?.option == "Pants"{
                Image("Logo")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                ScrollView(.vertical, showsIndicators: true){
                    Text(
                        "About 20% of all waste produced by Chicagoans each year is food waste where the majority ends up in landfills. Chicago being one of the biggest cities in America has no citywide food recycling program, which leaves community and private organizations to fill this void. Below are ways to reduce food waste: ")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("- Some food scraps can be used to grow more of those items. For example, green onion, romaine lettuce, celery, garlic, etc. It can be as easy as putting those scraps in a pot of soil or a glass of water and they'll regrow.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.ruralsprout.com/regrow-vegetables/")!)
                    Text("- Composting food waste can in return provide nutrient rich soil for your garden that'll enable you to grow your own food as well as stopping food scraps from going to landfills.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.epa.gov/recycle/composting-home#:~:text=Improves%20the%20structure%20and%20health,need%20for%20pesticides%20and%20fertilizers.")!)
                    Text("- If food items are unopened, uneaten, and not expired they can be donated to local soup kitchens or food banks. Organizations such as the Greater Chicago Food Depository and the Good Samaritan Food Donation Act can be places to start.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.chicagosfoodbank.org/get-involved/donate-food/#:~:text=Traditional%20Food%20Drives&text=4100%20W.,Ann%20Lurie%20Pl.&text=Monday%20through%20Friday%2C%209%20a.m.,the%20building%20on%20Keeler%20Ave.")!)
                }
            } else if itemName?.option == "Ink cartridges"{
                Image("Logo")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                ScrollView(.vertical, showsIndicators: true){
                    Text(
                        "About 20% of all waste produced by Chicagoans each year is food waste where the majority ends up in landfills. Chicago being one of the biggest cities in America has no citywide food recycling program, which leaves community and private organizations to fill this void. Below are ways to reduce food waste: ")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("- Some food scraps can be used to grow more of those items. For example, green onion, romaine lettuce, celery, garlic, etc. It can be as easy as putting those scraps in a pot of soil or a glass of water and they'll regrow.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.ruralsprout.com/regrow-vegetables/")!)
                    Text("- Composting food waste can in return provide nutrient rich soil for your garden that'll enable you to grow your own food as well as stopping food scraps from going to landfills.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.epa.gov/recycle/composting-home#:~:text=Improves%20the%20structure%20and%20health,need%20for%20pesticides%20and%20fertilizers.")!)
                    Text("- If food items are unopened, uneaten, and not expired they can be donated to local soup kitchens or food banks. Organizations such as the Greater Chicago Food Depository and the Good Samaritan Food Donation Act can be places to start.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.chicagosfoodbank.org/get-involved/donate-food/#:~:text=Traditional%20Food%20Drives&text=4100%20W.,Ann%20Lurie%20Pl.&text=Monday%20through%20Friday%2C%209%20a.m.,the%20building%20on%20Keeler%20Ave.")!)
                }
            } else if itemName?.option == "Phones"{
                Image("Logo")
                    .resizable()
//                    .aspectRatio(contentMode: .fit)
                    .frame(width: 125, height: 125)
                    .cornerRadius(10)
                    .padding()
                DropDownMenu(
                    selectedOption: self.$itemName,
                    placeholder: "Select item to recycle",
                    options: DropDownMenuOption.testAllItems
                )
                ScrollView(.vertical, showsIndicators: true){
                    Text(
                        "About 20% of all waste produced by Chicagoans each year is food waste where the majority ends up in landfills. Chicago being one of the biggest cities in America has no citywide food recycling program, which leaves community and private organizations to fill this void. Below are ways to reduce food waste: ")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                    Text("- Some food scraps can be used to grow more of those items. For example, green onion, romaine lettuce, celery, garlic, etc. It can be as easy as putting those scraps in a pot of soil or a glass of water and they'll regrow.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.ruralsprout.com/regrow-vegetables/")!)
                    Text("- Composting food waste can in return provide nutrient rich soil for your garden that'll enable you to grow your own food as well as stopping food scraps from going to landfills.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.epa.gov/recycle/composting-home#:~:text=Improves%20the%20structure%20and%20health,need%20for%20pesticides%20and%20fertilizers.")!)
                    Text("- If food items are unopened, uneaten, and not expired they can be donated to local soup kitchens or food banks. Organizations such as the Greater Chicago Food Depository and the Good Samaritan Food Donation Act can be places to start.")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                        .fontWeight(.medium)
                    Link("Link for more information", destination: URL(string: "https://www.chicagosfoodbank.org/get-involved/donate-food/#:~:text=Traditional%20Food%20Drives&text=4100%20W.,Ann%20Lurie%20Pl.&text=Monday%20through%20Friday%2C%209%20a.m.,the%20building%20on%20Keeler%20Ave.")!)
                }
            }
                
                
            Spacer()
        }
        .background(Color("lightGreen2"))
    }
}

struct homePage_Previews: PreviewProvider {
    static var previews: some View {
        homePage()
    }
}
