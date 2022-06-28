//
//  AddToDoViewController.swift
//  toDoList
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class AddToDoViewController: UIViewController {
    
  var previousVC = AddToViewController()

    @IBOutlet weak var titleTextField: UITextField!
   

    @IBOutlet weak var importantSwitch: UISwitch!

    
    override func viewDidLoad() {
    super.viewDidLoad()

    }

  @IBAction func addTapped(_ sender: Any) {
     let toDo = ToDo()

     if let titleText = titleTextField.text {
          toDo.name = titleText
          toDo.important = importantSwitch.isOn
        }
         previousVC.toDos.append(toDo)
         previousVC.tableView.reloadData()
         navigationController?.popViewController(animated: true)
  }

}
