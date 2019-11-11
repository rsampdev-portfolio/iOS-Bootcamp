//
//  TodoCreatorViewController.swift
//  TodoListApp
//
//  Created by Rodney Sampson on 10/6/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import Foundation
import UIKit

class TodoCreatorViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var detailsTextView: UITextView!
    @IBOutlet var dueDatePicker: UIDatePicker!
    
    var todos: [Todo]!
    
    @IBAction func createTodo(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let nav = storyboard.instantiateViewController(withIdentifier: "TodosViewControllerNav") as! UINavigationController
        let dest = nav.viewControllers.first as! TodosViewController
        
        let name = self.nameTextField.text
        let details = self.detailsTextView.text
        let date = self.dueDatePicker.date
        
        if name?.isEmpty == false && details?.isEmpty == false {
            let todo = Todo(name: name!, details: details!, dueDate: date)
            self.todos.append(todo)
            dest.todoStore.todos = self.todos
            self.present(nav, animated: true, completion: nil)
        }
    }
    
}
