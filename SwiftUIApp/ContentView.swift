//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Eray İnal on 25.03.2024.


//1 Yanda 'Canvas' var ve yaptığımız değişiklikler anlık olarak gösterilir
//.1 Artık ViewController yok View var, her şey bir View gibi aslında

//2 Biz mesela aşağıda 'Text("Hello, SwiftUI")' kodunu modifiye etmek istiyoruz ama hiçbir şey bilmiyoruz, o zaman ne yapıcaz: yandaki 'Inspector' sayfası açıkken 'Text' üzerine tıklarsak buradaki Attributes sayfasından temel özellikleri düzenleyebiliriz, tabiki fonksiyonlar ile daha detaylı yapabiliriz ama bu da idare eder

//3 Stack'ler ne işe yarar: Görüntü içerisinde birden fazla metin olabilmesini sağlar. Bunu da VStack{} ile yapabiliriz, açılımı 'Vertical Stack(Dikey) Stack' yani dikey olarak her şeyi sığın haline getir anlamına geliyor. İçerisine buton da koyabiliriz resimde koyabiliriz...
//.3 Bu Stack'in diğer şeklide HStack'tir yani 'Horizontal Stack'. Burada ise içerikleri yan yana yazar
//..3 Bir de bunlara ek olarak ZStack var. Burada ise hepsini üst üste yığar, biz sadece hangisinin önde hangisinin arkada olacığını belirliyoruz. Mesela biz resim üzerine yazı yazmak istiyorsak kullanabiliriz

//4 Şimdi görsellerle nasıl çalışılır ona bakıcaz, bunun için uygulama dosyası üzerinde sağ tık yaparak 'New File..' buradan 'SwiftUI View' ekliyoruz


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe").font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, SwiftUI").font(.largeTitle)
            
            Text("Hello, World!")
        }
        
        ZStack{
            Image(systemName: "globe").font(.title)
        }
    }
}

#Preview {
    ContentView()
}
