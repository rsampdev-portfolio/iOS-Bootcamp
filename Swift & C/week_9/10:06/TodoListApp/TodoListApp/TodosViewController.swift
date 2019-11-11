//
//  ViewController.swift
//  TodoListApp
//
//  Created by Rodney Sampson on 10/6/16.
//  Copyright © 2016 com.rsampdev. All rights reserved.
//

import UIKit

class TodosViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var todoStore = TodoStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    @IBAction func addTodo(_ sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let nav = storyboard.instantiateViewController(withIdentifier: "TodoCreatorViewControllerNav") as! UINavigationController
        
        let dest = nav.viewControllers.first as! TodoCreatorViewController
        dest.todos = self.todoStore.todos
        self.present(nav, animated: true, completion: nil)
    }
    
}

extension TodosViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.todoStore.todos[indexPath.row].isDone = true
        self.tableView.reloadData()
    }
    
}

extension TodosViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        for todo in self.todoStore.todos {
            if todo.isDone == true {
                self.todoStore.todos.remove(at: self.todoStore.todos.index(of: todo)!)
            }
        }
        
        return self.todoStore.todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoCell") as! TodoCell
        let todo = self.todoStore.todos[indexPath.row]
        cell.todo = todo
        cell.nameLabel.text = todo.name
        cell.dueDateLabel.text = todo.dueDate.description
        return cell
    }
    
}

