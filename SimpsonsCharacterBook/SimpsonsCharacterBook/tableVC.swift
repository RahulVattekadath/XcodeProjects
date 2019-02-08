//
//  ViewController.swift
//  SimpsonsCharacterBook
//
//  Created by Rahul Vattekadath on 20/05/18.
//  Copyright © 2018 rahulvattekadath. All rights reserved.
//

import UIKit

class tableVC: UIViewController , UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [Simpsons]()
    var chosenSimpson = Simpsons()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // table view setup
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = Simpsons()
        homer.name="Homer Simpsons"
        homer.occupation = "Safety Inspector"
        homer.image = UIImage(named: "homer.png")!
        
        let bart = Simpsons()
        bart.name="Bart Simpsons"
        bart.occupation="Student"
        bart.image = UIImage(named: "bart.png")!
        
        let marge = Simpsons()
        marge.name = "Marge Simpsons"
        marge.occupation="Homermaker"
        marge.image =  UIImage(named: "marge.png")!
        
        let ned = Simpsons()
        ned.name =  "Ned Flanders"
        ned.occupation="Pharmacist"
        ned.image = UIImage(named: "ned.png")!
        
        mySimpsons.append(homer)
        mySimpsons.append(bart)
        mySimpsons.append(marge)
        mySimpsons.append(ned)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = self.chosenSimpson
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }

   
}

