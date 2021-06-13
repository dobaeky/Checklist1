//
//  ChecklistItem.swift
//  ChecklistV2
//
//  Created by ys on 2021/06/06.
//

import Foundation


struct ChecklistItem: Identifiable, Codable {
    let id = UUID()
    var name: String
    var isChecked: Bool = false
}
