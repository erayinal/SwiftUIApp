//
//  FifthView.swift
//  SwiftUIApp
//
//  Created by Eray İnal on 25.03.2024.
//

//7 Binding nedir? Anlık olarak bir değişkenin diğerini de etkilemesi ve değişmesi. Bunlar aslında birbirine bağlı

import SwiftUI

struct FifthView: View {
    
    @State var myName = "Eray İnal"
    
    var body: some View {
        VStack{
            Text(myName).bold().font(.title)
            TextField("enter your name" , text: $myName )
            
        }
    }
}

#Preview {
    FifthView()
}
