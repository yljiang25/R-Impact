//
//  profilePage.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/10/23.
//

import SwiftUI

struct profilePage: View {
    //color variable
    let gradient = Gradient(colors: [.yellow, .green])
    //animation variable
    @State private var animationAmount1 = 0.0
    @State private var animationAmount2 = 0.0
    @State var halfModal_shown = false
    @State private var imageTree = "babyTree"
    @State private var imageTreeWide = "babyTreeWide"
    @State private var points = 50
    @State private var level = 0
    
    var body: some View{
        //main body
        ZStack(alignment: .bottom){
            //background color
            Color("lightGreen2").ignoresSafeArea()
            
            //interface: images, text, and button
            contentLayer
            
            Button{
                withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                    animationAmount2 += 360
                    }
            } label:{
                Text(String(points))
                
            }.padding(20)
                .background(Color.yellow)
                .foregroundColor(.white)
                .clipShape(Circle())
                .position(x:200, y:675)
                .ignoresSafeArea()
                .rotation3DEffect(.degrees(animationAmount2), axis: (x: 0, y:1 , z: 0))
            
            Button("Show Tree"){
                    self.halfModal_shown.toggle()
                }.padding(20)
                .background(Color("color3"))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 45))
                .position(x:200, y:750)
                .ignoresSafeArea()
            
            HalfModalView(isShown: $halfModal_shown){
                ZStack{
                    Color("lightGreen2").ignoresSafeArea().frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                    
                    VStack{
                        
                        Image(imageTree)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(30)
             
                        Button(action: {
                            if points >= 25{
                                if imageTree == "babyTree"{
                                    self.imageTree = "bigTree"
                                    self.imageTreeWide = "bigTreeWide"
                                    points -= 25
                                    level += 50
                                }else if imageTree == "bigTree"{
                                    self.imageTree = "finalTree"
                                    self.imageTreeWide = "finalTreeWide"
                                    points -= 25
                                    level += 50
                                }
            
                            }
                                
                            }, label: {
                                Image("waterCan")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 80, height: 80)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .clipped()
                                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("color3"), lineWidth: 10))
                                    .padding(.top,3)
                    
                               
                            }).padding(10)
                        
                    }//end of VStack
                    
                }//end of ZStack
                
            }//end of half modal view
                
        }
    }
        
    
    var contentLayer: some View{
        
        VStack{
            HStack{
                Spacer()
                
                VStack{
                    //profile picture
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .clipped()
                        .overlay(Circle().stroke(Color("color3"), lineWidth: 4))
                        .padding(.top,80)
                    //Username text
                    Text("Steven Morgan").font(.system(size: 20)).bold().foregroundColor(.white)
                        .padding(.top, 12)

                    Text("@Steven").font(.system(size: 18)).foregroundColor(.white)
                        .padding(.top, 0)
                    //tree level
//                    TextField("Level: ", text: String(level)).font(.system(size: 20)).bold().foregroundColor(.white)
//                        .padding(.top, 20)
                    
                    Text("Level: \(String(level))").font(.system(size: 20)).bold().foregroundColor(.white)
                        .padding(.top, 20)
                
                    //Spining tree button with animation
                    Button{
                        withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)){
                            animationAmount1 += 360
                        }
                    }label:{
                        //Tree image displayed in the button
                        Image(imageTreeWide)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 300, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 45))
                            .clipped()
                            .overlay(RoundedRectangle(cornerRadius: 45).stroke(Color("color3"), lineWidth: 7))
                            .padding(.top,3)
                    }
                        .foregroundColor(.white)
                        .ignoresSafeArea()
                        .clipShape(RoundedRectangle(cornerRadius: 45))
                        .rotation3DEffect(.degrees(animationAmount1), axis: (x: 0, y:1 , z: 0))
                    
                }
                
                Spacer()
                
            }
            Spacer()

        }//end of vstack
        
    }
}

struct profilePage_Previews: PreviewProvider {
    static var previews: some View {
        profilePage()
    }
}
