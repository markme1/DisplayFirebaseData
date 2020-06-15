//
//  ViewController.swift
//  DisplayFirebaseData
//
//  Created by mark me on 6/11/20.
//  Copyright © 2020 mark me. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var array = [AddModel]()
    var firebaseData = [ModelFirebase]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    @IBAction func nextScreen(_ sender: Any)
    
    {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            if let nextVC = segue.destination as? MyProfile {
                nextVC.delegate = self
            }
        }
    }
    
     func getAllFirebase() {
        MyProfile.refrence.child("infoData").queryOrderedByKey().observe(.value) { (snapshot) in
            self.firebaseData.removeAll()
            if let snapShot = snapshot.children.allObjects as? [DataSnapshot] {
                for snap in snapShot {
                    let name = 
                }
            }
            
            
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        
        cell.profileImage.image = array[indexPath.row].image
        cell.nameLabel.text = array[indexPath.row].field1
        cell.lastNaneLabel.text = array[indexPath.row].field2
        cell.emailIdLabel.text = array[indexPath.row].field3
        
        return cell
    }

    
}

extension ViewController:AddModelProtocol {
    func didAddToArray(didAdd: AddModel) {
        
        array.append(didAdd)
        self.tableView.reloadData()
        
        
    }
    
}

