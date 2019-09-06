//
//  ContentView.swift
//  SwiftUIDynamicList
//
//  Created by Agota Matyas on 06/09/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Service.listData) { item in
                NavigationLink(destination: ListDetailView(item: item)) {
                    ListElementView(item: item)
                }
            }.navigationBarTitle("Best apps")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
