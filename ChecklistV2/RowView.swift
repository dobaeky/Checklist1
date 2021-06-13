//
//  RowView.swift
//  ChecklistV2
//
//  Created by ys on 2021/06/13.
//

import SwiftUI

struct RowView: View {
    @State var checklistItem: ChecklistItem
    var body: some View {
        NavigationLink(destination: EditChecklistItemView()){
            HStack {
                Text(checklistItem.name)
                Spacer()
                Text(checklistItem.isChecked ? "☑️" : "⬛️")
            } // End of HStack
        } // End of NavigationLink
        
    } // End of View
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(checklistItem: ChecklistItem(name: "Sample item"))
    }
}
