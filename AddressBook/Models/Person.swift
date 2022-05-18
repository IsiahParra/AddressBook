//
//  Person.swift
//  AddressBook
//
//  Created by Trevor Adcock on 10/12/21.
//

import Foundation

class Person: Codable {
    let id: UUID
    var name: String
    var address: String
    //MARK: DAY 2
    var isFavorite: Bool
    init(id: UUID = UUID(),
         name: String,
         address: String, isFavorite: Bool = false) {
        self.id = id
        self.name = name
        self.address = address
        self.isFavorite = isFavorite
    }
}

extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.id == rhs.id
    }
}
