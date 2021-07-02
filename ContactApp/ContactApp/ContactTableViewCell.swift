//
//  ContactTableViewCell.swift
//  ContactApp
//
//  Created by Алия Гиниятова on 02.07.2021.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

   
    
    func setData(contact: ContactCellData) {
        contactLabel.text = contact.name
        numberLabel.text = contact.phoneNumber
        
    }
    
    

}
