//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Alex on 03/07/2022.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
