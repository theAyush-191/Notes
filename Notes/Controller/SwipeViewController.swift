//
//  SwipeViewController.swift
//  Notes
//
//  Created by Ayush Singh on 27/08/25.
//

import UIKit
import SwipeCellKit

class SwipeViewController: UITableViewController,SwipeTableViewCellDelegate {
    
    var cell:UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight=70.0
        // Do any additional setup after loading the view.
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "noteCell", for: indexPath) as! SwipeTableViewCell
        cell.delegate=self
        configureCell(cell, at: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeCellKit.SwipeActionsOrientation) -> [SwipeCellKit.SwipeAction]? {
        
        guard orientation == .right else { return nil }
        
        //delete Action
        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            
            self.deleteNote(at: indexPath)
            
        }
            // customize the action appearance
            deleteAction.image = UIImage(named: "Delete-icon")
         
        //edit action
        let editAction=SwipeAction(style: .default, title: "Edit") { action, indexPath in
            self.editNote(at: indexPath){
                action.fulfill(with: .reset)
            }
        }
        let config = UIImage.SymbolConfiguration(pointSize: 28, weight: .medium)
        editAction.image = UIImage(systemName: "pencil", withConfiguration: config)
        editAction.backgroundColor=UIColor.systemBlue
        
            return [deleteAction, editAction]
        
    }
    
    
//MARK: - Delete and Edit Cell Method
    func deleteNote(at indexPath: IndexPath) {
    
    }
    
    func editNote(at indexPath: IndexPath, onCancel: @escaping () -> Void) {
        
        
    }
    
    func configureCell(_ cell: SwipeTableViewCell, at indexPath: IndexPath) {

    }
    
}
