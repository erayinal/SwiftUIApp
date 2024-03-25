//
//  ThirdView.swift
//  SwiftUIApp
//
//  Created by Eray İnal on 25.03.2024.
//

//5 TableView'lar yerine artık 'Lists' var. Bunun için 'struct'ın altına 'body'nin üstünde bir array tanımlayalım.

//6 Verilerle çalışabilmeyi öğrenmek için 'FourthView' açalım

import SwiftUI

struct ThirdView: View {
    
    let arr = ["Eray", "Mehmet", "Salih", "Bekir"]
    
    var body: some View {
        
        //.5 Bunun yapabilmenin birden fazla yöntemi var, birincisi array'i parametre olarak verip bir nevi for each gibi bir şey yazma: List(arr, id: \.self){element in ...code...}
        VStack{
            Text("Kişiler").font(.title).backgroundStyle(.black).foregroundStyle(.gray)
            List(arr, id: \.self){ element in
                HStack{
                    Image(systemName: "person")
                    Text(element)
                }
            }
        }
        
        //..5 İkinci yol: List{ ForEach(arr, id: \.self){ elem in ...code...} }. Genelde önerilen birinci yapılan yöntemdir. O yüzden yorum satırına alalım
//        List{
//            ForEach(arr, id: \.self){ elem in
//                Text(elem)
//            }
//        }
        
        
    }
}

#Preview {
    ThirdView()
}
