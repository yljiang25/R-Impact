//
//  MessagesManager.swift
//  R-Impact
//
//  Created by Victor Escudero on 7/17/23.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


class MessagesManager: ObservableObject {
    @Published private(set) var messages: [Message] = [] //array of message
    @Published private(set) var lastMessageId = "" //
    let db = Firestore.firestore()//data base instance
    
    
    init() {
        getMessages()//call function
    }
    
    func getMessages() {
        //call our collection messages from our database
        db.collection("messages").addSnapshotListener {
            //Check if we were able to read from our data base successfully, otherwise throw an error
            querySnapshot, error in guard let documents = querySnapshot?.documents else
            {
                print("Error fetching documents: \(String(describing: error))")
                return
            }
            self.messages = documents.compactMap { documents -> Message? in
                do {
                    //Try to read documents and decode it. Throw error if unable to decode document into message
                    return try documents.data(as: Message.self)
                } catch {
                    print("Error decoding document into Message: \(error)")
                    return nil
                }
                
            }
            
            self.messages.sort{$0.timestamp < $1.timestamp }
            if let id = self.messages.last?.id {
                self.lastMessageId = id
            }
        }
    }
    //Write new messages into to our Firestore data base
    func sendMessage(text: String) {
        do {
            //pass our message model
            let newMessage = Message(id: "\(UUID())", text: text, received: false, timestamp: Date())
            //send our message to Friestore collection messages. Throw error if unable to write to our data base
            try db.collection("messages").document().setData(from: newMessage)
            
        }
        catch {
            print("Error adding message to Firestore: \(error)")
        }
    }
}
