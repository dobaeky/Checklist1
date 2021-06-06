//
//  Checklist.swift
//  ChecklistV2
//
//  Created by ys on 2021/06/06.
//

import Foundation

class Checklist: ObservableObject {
    
    @Published var checklistItems = [
        ChecklistItem(name: "Walk the dog",isChecked: false),
        ChecklistItem(name: "Brush my teeth",isChecked: false),
        ChecklistItem(name: "Learn ios development", isChecked: true),
        ChecklistItem(name: "Soccer practice", isChecked: false),
        ChecklistItem(name: "Eat ice cream", isChecked: true),
    ]
    
    func printChecklistContents() {
        for item in checklistItems {
            print(item)
        }
    }
    func deleteListItem(whichElement: IndexSet) {
        checklistItems.remove(atOffsets: whichElement)
        printChecklistContents()
    }
    func moveListItem(whichElement: IndexSet, destination: Int) {
        checklistItems.move(fromOffsets: whichElement, toOffset: destination)
        printChecklistContents()
    }
    
    
}
