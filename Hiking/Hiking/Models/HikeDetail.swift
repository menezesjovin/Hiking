//
//  HikeDetail.swift
//  Hiking
//
//  Created by Jovin Menezes on 20/04/20.
//  Copyright © 2020 Jovin Menezes. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    var hike : Hike
    @State private var zoomed : Bool = false
    var body: some View {
        VStack{
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
withAnimation{
self.zoomed.toggle()
}
            }
            Text(hike.name)
            Text(String(format: "%2.0f", hike.miles))
        }
       // .navigationBarTitle(hike.name)
       .navigationBarTitle(Text(hike.name),displayMode: .inline)

    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Raj", imageURL: "tam", miles: 10.0))
    }
}
