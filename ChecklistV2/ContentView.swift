//
//  ContentView.swift
//  ChecklistV2
//
//  Created by ys on 2021/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List {
                Text("Walk the dog")
                Text("Brush my teeth")
                Text("Learn iOS development")
                Text("Soccer practice")
                Text("Eat Ice cream")
            } // End of list
            .navigationBarTitle("Checklist")
        } // End of navigationView
    } // End of body
} // End of ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
