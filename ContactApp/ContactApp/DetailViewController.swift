//
//  DetailViewController.swift
//  ContactApp
//
//  Created by Алия Гиниятова on 02.07.2021.
//

import UIKit
protocol DetailViewControllerDelegate: AnyObject {
   
    
    
}
class DetailViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!

    @IBOutlet weak var workLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var commetTextView: UITextView!

    var contact: ContactCellData?
//    weak var delegate: DetailViewControllerDelegate?
    weak var delegate: DetailViewControllerDelegate?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = contact?.name
        surnameLabel.text = contact?.surname
        workLabel.text = contact?.workPlace
        numberLabel.text = contact?.phoneNumber
        commetTextView.text = contact?.comment

        // Do any additional setup after loading the view.
    }
    

//    @IBAction func saveButtonAction(_ sender: Any) {
//
//        contact?.comment = commetTextView.text
//        if let contact = contact {
//            delegate?.saveNewDataOfBook(book)
//        }
//        dismiss(animated: true)
////        navigationController?.popViewController(animated: true)
//
//    }

}
