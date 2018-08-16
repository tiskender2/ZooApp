//
//  ViewController.swift
//  ZooApp
//
//  Created by tolga iskender on 16.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
     var listOfKillerAnimals = [Animal] ()
     var listOfNotKillerAnimals = [Animal] ()
    var animalType = ["Not Killer", "Killer"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDatatoArray()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
       
    }
    
    func setDatatoArray()
    {
        listOfKillerAnimals.append(Animal(name: "baboon", des: "live in big place with tree ...", image: "baboon"))
        listOfNotKillerAnimals.append(Animal(name: "bulldog", des: "live in big place with tree ...", image: "bulldog"))
        listOfNotKillerAnimals.append(Animal(name: "panda", des: "live in big place with tree ...", image: "panda"))
        listOfNotKillerAnimals.append(Animal(name: "swallow bird", des: "live in big place with tree ...", image: "swallow_bird"))
        listOfKillerAnimals.append(Animal(name: "white tiger", des: "live in big place with tree ...", image: "white_tiger"))
        listOfNotKillerAnimals.append(Animal(name: "zebra", des: "live in big place with tree ...", image: "zebra"))
        
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animalType[section]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfNotKillerAnimals.count
        }
        else
        {
            return listOfKillerAnimals.count
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! zooTableViewCell
        
        if indexPath.section == 0 {
             cell.setAnimal(animal: listOfNotKillerAnimals[indexPath.row])
        }
        else
        {
             cell.setAnimal(animal: listOfKillerAnimals[indexPath.row])
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            listOfNotKillerAnimals.insert(listOfNotKillerAnimals[indexPath.row], at: 0)
            listOfNotKillerAnimals.remove(at: indexPath.row)
            
        }
        else
        {
            
            listOfKillerAnimals.insert(listOfKillerAnimals[indexPath.row], at: 0)
           listOfKillerAnimals.remove(at: indexPath.row)
        }
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
}
