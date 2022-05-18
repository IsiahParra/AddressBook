//
//  ContactTableViewCell.swift
//  AddressBook
//
//  Created by Isiah Parra on 5/17/22.
//

import UIKit
protocol ContactTableViewCellDelegate: AnyObject{
    
}

class ContactTableViewCell: UITableViewCell {
//MARK: OUTLETS
    
    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var contactLabel: UILabel!
    
    weak var delegate: ContactTableViewCellDelegate?
    
    //MARK: Properties
    var person: Person? {
        // Property observer
        didSet{
            updateView()
        }
    }
    func updateView() {
        guard let person = person else {return}
        contactLabel.text = person.address
        if person.isFavorite == true {
            favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
        } else { favoriteButton.setImage(UIImage(systemName: "star"), for: .normal) } }
            
        
//        let favoriteImageName = person.isFavorite == true ? "star.fill" : "star"
//        let favoriteImage = UIImage(systemName: favoriteImageName)
//        favoriteButton.setImage(UIImage(systemName: "star.fill"), for: .normal)
  
    
    @IBAction func toggleFavoriteButton(_ sender: Any) {
        
    }
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    
}// End of class
