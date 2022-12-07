//
//  CustomCell.swift
//  Shopping List 2
//
//  Created by Tony Hong on 3/27/22.
//

import SwiftUI

struct CustomCell: View {
    
    var eventName: String
    
    var time: String
    
    var location: String
    
    var body: some View {
        VStack {
            HStack {
                Text(eventName)
                
                Spacer()
                
                Text(time)
            }
            
            HStack {
                Spacer()
                
                Text(location)
            }
        }
    }
}
