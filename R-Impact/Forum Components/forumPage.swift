//
//  forumPage.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/10/23.
//

import SwiftUI

struct forumPage: View {
    //Color variables for buttons
    @State var backgroundColor1: Color = Color("color3")
    @State var backgroundColor2: Color = Color("color3")
    @State var backgroundColor3: Color = Color("color3")
    
    //Variables for message component
    @StateObject var messagesManager = MessagesManager()
    
    var body: some View {
       
            VStack{
                VStack{
                    contentLayer
                    
                    ScrollViewReader { proxy in
                        ScrollView{
                        
                            ForEach(messagesManager.messages, id: \.id) { message in MessageBubble(message: message)
                            }
                        }
                        .padding(.top, 10)
                        .background(Color("lightGreen2"))
                        .cornerRadius(30, corners: [.topLeft, .topRight])
                        
                        .onChange(of: messagesManager.lastMessageId) { id in
                            withAnimation {
                                proxy.scrollTo(id, anchor: .bottom)
                        
                            }
                        }
                    }
                }
                MessageField()
                    .environmentObject(MessagesManager())
            }
            .background(Color("lightGreen2"))
    }
        
    var contentLayer: some View{
        HStack{
            //First button
            Button(action:{
                buttonPressed1()
            }, label: {
                Text("Reuse".uppercased())
                    .fontWeight(.bold)
                    .font(.headline)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,1)
                    .background(backgroundColor1
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
                     .frame(width:100, height: 60, alignment: .center)
                    .background(Color("lightBrown")
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
            })
            //Second button
            Button(action: {
                buttonPressed2()
            }, label: {
                Text("Reduce".uppercased())
                    .fontWeight(.bold)
                    .font(.headline)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,2)
                    .background(backgroundColor2
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
                    .frame(width:115, height: 60, alignment: .center)
                   .background(Color("lightBrown")
                       .cornerRadius(10)
                       .shadow(radius: 10)
                   )
            })
            //Third button
            Button(action: {
                buttonPressed3()
            }, label: {
                Text("Recycle".uppercased())
                    .fontWeight(.bold)
                    .font(.headline)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,1)
                    .background(backgroundColor3
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
                    .frame(width:120, height: 60, alignment: .center)
                    .background(Color("lightBrown")
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    )
            })
        }
        .padding()
        .padding(.horizontal)
        .background(Color("lightGreen2"))
        
    }

    func buttonPressed1() {
        backgroundColor1 = .gray
        backgroundColor2 = Color("color3")
        backgroundColor3 = Color("color3")
    }
    func buttonPressed2() {
        backgroundColor2 = .gray
        backgroundColor3 = Color("color3")
        backgroundColor1 = Color("color3")
    }


    func buttonPressed3() {
        backgroundColor3 = .gray
        backgroundColor1 = Color("color3")
        backgroundColor2 = Color("color3")
    }
}

struct forumPage_Previews: PreviewProvider {
    static var previews: some View {
        forumPage()
    }
}
