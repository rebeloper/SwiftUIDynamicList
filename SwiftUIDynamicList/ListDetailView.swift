//
//  ListDetailView.swift
//  SwiftUIListDemo
//
//  Created by Agota Matyas on 05/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ListDetailView: View {
    
    var item: ListElement
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(item.icon)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text(item.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }.frame(minWidth: 0, maxWidth: .infinity)
                Image(item.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                
                Text(item.text)
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(item: ListElement(icon: "", image: "", title: "", text: ""))
    }
}
