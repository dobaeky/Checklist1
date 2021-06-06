//
//  Checklist.swift
//  ChecklistV2
//
//  Created by ys on 2021/06/06.
//

import Foundation

class Checklist: ObservableObject {
    
    @Published var items = [
        ChecklistItem(name: "Walk the dog",isChecked: false),
        ChecklistItem(name: "Brush my teeth",isChecked: false),
        ChecklistItem(name: "Learn ios development", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: false),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
    ]
    
    func printChecklistContents() {
        for item in items {
            print(item)
        }
    }
    func deleteListItem(whichElement: IndexSet) {
        items.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    func moveListItem(whichElement: IndexSet, destination: Int) {
        items.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
    
    
}
