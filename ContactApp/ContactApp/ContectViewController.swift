//
//  ContectViewController.swift
//  ContactApp
//
//  Created by Алия Гиниятова on 02.07.2021.
//

import UIKit


class ContectViewController: UIViewController, UITableViewDelegate, DetailViewControllerDelegate  {
    
    
    var data: [ContactCellData] = [ContactCellData(name: "Marat", surname: "Giniyatov", workPlace: "DivannyeVoyska", phoneNumber: "1234", comment: "Its me!"),
                        ContactCellData(name: "Ararat", surname: "Kalmekov", workPlace: "McDonalds", phoneNumber: "4321", comment: "Who is you?"),
                        ContactCellData(name: "Naruto", surname: "Uzumaki", workPlace: "Konoha", phoneNumber: "7777", comment: "Greatest Ninja!"),
                        ContactCellData(name: "Vladimir", surname: "Putin", workPlace: "Kremlin", phoneNumber: "1111", comment: "Our President!")]

  
    
  
    

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           80
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return}
        
        contactViewController.delegate = self
        contactViewController.contact = data[indexPath.row]
        
        present(contactViewController, animated: true)
        
        
    }
       
    

    


}




extension ContectViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as?
                ContactTableViewCell else {return UITableViewCell() }
        cell.setData(contact: data[indexPath.row])
        return cell
    }
}
struct ContactCellData {
    var name: String
    var surname: String
    var workPlace: String
    var phoneNumber: String
    var comment: String
}
