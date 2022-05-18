//
//  PersonController.swift
//  AddressBook
//
//  Created by Trevor Walker on 1/23/22.
//

import Foundation

class PersonContoller {
    var isFavorite: Person?
    static func createPerson(name: String = "New Contact",
                      address: String = "",
                      group: Group) {
        let person = Person(name: name, address: address)
        group.people.append(person)
        GroupController.shared.saveContactsToDisk()
    }
    
    static func delete(person: Person, in group: Group) {
        guard let index = group.people.firstIndex(of: person) else { return }
        group.people.remove(at: index)
        GroupController.shared.saveContactsToDisk()
    }
    
    static func update(person: Person,
                name: String,
                address: String) {
        person.name = name
        person.address = address
        GroupController.shared.saveContactsToDisk()
    }
    static func toggleIsFavorite(person: Person) {
        person.isFavorite.toggle()
    }
    func saveToPersistenceStore () {
        
    }

}// End OF class

