//
//  startingPage.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/11/23.
//
import SwiftUI

struct startingPage: View {
    @State var showLoginView: Bool = false
    var body: some View{
        //main page display
        ZStack{
            //background color
            Color("lightGreen2").ignoresSafeArea()
            
            //interface: image, and two text
            contentLayer
            
            //logic for button functionability
            if showLoginView {
                ContentView()
            }else {
                Button("Getting Started"){
                    self.showLoginView = true
                }.padding(50)
                    .background(Color("color3"))
                    .font(.system(size: 20)).bold()
                    .foregroundColor(.white)
                    .clipShape(Rectangle())
                    .cornerRadius(30)
                    .frame(maxHeight: .infinity, alignment: .bottom)
            }
        }
    }
    
    
    //User interface: images and text positions
    var contentLayer: some View{
        
        VStack{
            HStack{
//                Spacer()
                VStack{
                    //logo image
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 45))
                
                    Text("Growing Together")
                        .font(.system(size: 35)).bold().foregroundColor(.white)

                }//end of vstack
//                Spacer()
            }//end of hstack
//            Spacer()
        }//end of vstack
        
    }
           
}

struct startingPage_Previews: PreviewProvider {
    static var previews: some View {
        startingPage()
    }
}
