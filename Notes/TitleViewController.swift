//
//  ViewController.swift
//  Notes
//
//  Created by Ayush Singh on 26/08/25.
//

import UIKit
import RealmSwift
import SwipeCellKit

class TitleViewController: SwipeViewController {
   
    let realm=try! Realm()
    
    var notes:Results<NoteObject>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notes=realm.objects(NoteObject.self)
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        var titleText=UITextField()
        let alert=UIAlertController(title: "Add Note", message: "Enter Note Name", preferredStyle: .alert)
        
        alert.addTextField { textField in
            textField.placeholder="Note Title"
            titleText=textField
        }
        
        let action=UIAlertAction(title: "Add", style: .default) { alert in
            if let newNote=titleText.text,!newNote.isEmpty{
                self.addNote(title: newNote, content: "")
                self.tableView.reloadData()
            }
            
        }
        
        
        
        let cancel=UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(action)
        alert.addAction(cancel)
        
        tableView.reloadData()
        present(alert, animated: true)
    }
    

    //MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=super.tableView(tableView, cellForRowAt: indexPath)
    
        let note=notes[indexPath.row]
        cell.textLabel?.text=note.title
        return cell

    }
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "titleToContent", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! ContentViewController
        if let indexPath=tableView.indexPathForSelectedRow{
            destinationVC.note=notes[indexPath.row]
        }
    }
    
    override func configureCell(_ cell: SwipeTableViewCell, at indexPath: IndexPath) {
        let note = notes[indexPath.row]
            cell.textLabel?.text = note.title
    }
//    
    //MARK: - Realm Methods
    func addNote(title: String, content: String = "") {
        let note = NoteObject()
        note.title = title
        note.content = content
        
        try! realm.write {
            realm.add(note)
        }
    }
    
    
//MARK: - Delete and Edit Cell Method
    override func deleteNote(at indexPath: IndexPath) {
        if let deleteNotes=self.notes?[indexPath.row]{
                        do {
                            try self.realm.write{
                                self.realm.delete(deleteNotes)
                            }
                        }catch{
        
                            print("Error deleting category:\(error)")
                        }
                        tableView.reloadData()
                    }
    }
    
    override func editNote(at indexPath: IndexPath, onCancel: @escaping () -> Void) {
        if let note=self.notes?[indexPath.row]{
            let alert=UIAlertController(title: "Edit Title", message: "", preferredStyle: .alert)
            var textField=UITextField()
            alert.addTextField{ alertTextField in
                alertTextField.text=note.title
                textField=alertTextField
            }
            
            let action=UIAlertAction(title: "Save", style: .default) { alert in
                do{
                    try self.realm.write {
                        note.title=textField.text ?? note.title
                    }
                    self.tableView.reloadData()
                }catch{
                    print("Error editing Title:\(error)")
                }
                
                
            }
            
            let cancel=UIAlertAction(title: "Cancel", style: .cancel) { alert in
                
            }
            alert.addAction(action)
            alert.addAction(cancel)
            present(alert, animated: true)
            
        }
        
    }

}

