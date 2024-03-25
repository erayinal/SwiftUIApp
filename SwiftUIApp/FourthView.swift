//
//  FourthView.swift
//  SwiftUIApp
//
//  Created by Eray İnal on 25.03.2024.
//

//.6 Burada hem buton kullanıcaz hem de verirler çalışmayı görücez
import SwiftUI

struct FourthView: View {
    
    @State var myName = "Eray İnal"
    
    var body: some View {
        Text(myName).bold().font(.title)
        Button {
            //myName = "asdfasdf" //..6 Bu şekilde olmuyor çünkü bildiğimiz gibi struct içerisinde immutable kuralı geçerli. Bu yüzden: öncelikle gidip değişkenimin yanına '@State' eklememiz lazım, sonra self.myName ile değiştirebiliriz:
            self.myName = "James"
        } label: {
            Text("Change").padding()
        }
        
        //7 FifthView açalım

    }
}

#Preview {
    FourthView()
}
