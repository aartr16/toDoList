//
//  ToDoTableViewController.swift
//  toDoList
//
//  Created by Scholar on 6/27/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    // will call function in viewdidload function to populate todo array
    
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        toDos = createToDos()
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    } // END OF VIEW DID LOAD FUNCTION

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        // only thing in all three iterations that is not included
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // look at the array you built and figure out how many items are in the are and make that many rows
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
          cell.textLabel?.text = "❗️" + toDo.name
        } else {
          cell.textLabel?.text = toDo.name
        }

        return cell
    }
    
    
    
    // returns an array of todo's
    func createToDos() -> [ToDo] {
        // creating an instance of a class
        let swift = ToDo()
        swift.name = "Show everyone we know Swift"
        swift.important = true
        let dog = ToDo()
        dog.name = "Walk the dog"
        dog.important = true
        // important is set to false by default
        return [swift, dog]
    }
    
}
