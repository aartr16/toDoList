//
//  CompleteToDoViewController.swift
//  toDoList
//
//  Created by Scholar on 6/28/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name

        // Do any additional setup after loading the view.
    }
    @IBAction func completeTapped(_sender: Any) {
        // code that actually deletes go here
    }
    
    var previousVC = AddToViewController()
    var selectedToDo = ToDo()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
