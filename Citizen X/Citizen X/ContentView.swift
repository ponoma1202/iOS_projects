//
//  ContentView.swift
//  Citizen X
//
//  Created by Vasilisa Ponomarenko on 12/6/22.
//

import SwiftUI

class Items: Identifiable {
    
    var eventName: String
    
    var time: String
    
    var location: String
    
    init(eventName: String, time: String, location: String) {
        
        self.eventName = eventName
        
        self.time = time
        
        self.location = location
    }
    
}

struct ContentView: View {
    
    @State var tempEventName: String = ""
    
    @State var tempTime: String = ""
    
    @State var tempLocation: String = ""
    
    @State var list = [
        Items(eventName: "X-Man", time: "11:00 - 12:00", location: "Sather Gate"),
        Items(eventName: "Hoola Hoop Man", time: "?", location: "Sather Gate"),
        Items(eventName: "Rat", time: "16:30", location: "Croads")
    ]
    
    func addEvent() {
        list.append(Items(eventName: tempEventName, time: tempTime, location: tempLocation))
        
        tempEventName = ""
        
        tempTime = ""
        
        tempLocation = ""
    }
    
    func removeEvent() {
        list.removeLast()
    }
    
    var body: some View {
        
        NavigationView {
            
            List {
                    
                    Text("Wednesday")
                        .font(.title)
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                
                ForEach(list) { listItem in
                    CustomCell(eventName: listItem.eventName, time: listItem.time, location: listItem.location)
                }
                
                HStack {
                    TextField("Event", text: $tempEventName)
                    
                    Spacer()
                    
                    TextField("Time", text: $tempTime)
                }
                
                TextField("Location", text: $tempLocation)
                
                    Button("Add New Event") {
                        if (tempEventName != "" && tempTime != "" && tempLocation != "") {
                            addEvent()
                        }
                    }
                    
                    
                    Button("Delete Latest Event") {
                        removeEvent()
                    }
                
                
            }
            
        }
        
        HStack {

            Spacer()
            
            Image("calendar")

                .resizable()

                .scaledToFit()

                .frame(width: 30, height: 30)

            Spacer()

            Image("map")

                .resizable()

                .scaledToFit()

                .frame(width: 40, height: 40)
            Spacer()

            Image("profile")

                .resizable()

                .scaledToFit()

                .frame(width: 33, height: 33)

            Spacer()



        }
    }
}
