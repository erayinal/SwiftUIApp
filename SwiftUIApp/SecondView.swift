//
//  SecondView.swift
//  SwiftUIApp
//
//  Created by Eray İnal on 25.03.2024.
//

//.4 Öncelikle Resim ekledikten sonra '.resizable' eklemeiz lazım ki boyutuyla oynayabilelim
//..4 .aspectRatio(contentMode: .fit) ile yana göre sayfayı doldurur. .aspectRatio(contentMode: .fill) ile üstlere göre sayfayı dolrurur.

//...4 İstediğimiz özel bir boyut varsa '.frame(width: 350, height: 250)' ile yapıcaz ama bunu yapmak farklı telefonlarda sorun yaşatabilir. Bu yüzden width ve height değerlerine 'UIScreen.main.bounds.width' değerleri cihazın ekran boyutu değerlerine ulaşarak çalışabiliyoruz

//5 Şimdi listeler ile çalışabilmek için 'ThirdView' dosyası açalım

import SwiftUI

struct SecondView: View {
    var body: some View {
        
        VStack{
            Image("mustang")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.5)
        }
        
    }
}

#Preview {
    SecondView()
}
