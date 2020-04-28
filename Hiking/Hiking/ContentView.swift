//
//  ContentView.swift
//  Hiking
//
//  Created by Jovin Menezes on 20/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let hikes = Hike.all()
    var body: some View {
        NavigationView{
        List(self.hikes , id: \.name){ hike in
            NavigationLink(destination: HikeDetail(hike: hike)){
           HikeCell(hike: hike)
            }
        }
        .navigationBarTitle("Hike Details")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct HikeCell: View{
    let hike : Hike

     var body: some View {
               HStack{
                   Image(hike.imageURL)
                       .resizable()
//                       .aspectRatio(contentMode: .fit)
                       .frame(width: 100, height: 100)
                       .cornerRadius(5)
                VStack(alignment: .leading){
                   Text(hike.name)
                    Text(String(format: "%2.f",hike.miles))

                }
               }
       }
}
