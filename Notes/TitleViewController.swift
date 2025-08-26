//
//  ViewController.swift
//  Notes
//
//  Created by Ayush Singh on 26/08/25.
//

import UIKit

class TitleViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hello")
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
                Notes.append(Note(name: newNote,content: ""))
                self.tableView.reloadData()
            }
            
        }
        
        
        
        let cancel=UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alert.addAction(action)
        alert.addAction(cancel)
        
        present(alert, animated: true)
    }
    

    //MARK: - Table View Data Source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Notes.count)
        return Notes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "noteList", for: indexPath)
        cell.textLabel?.text=Notes.count>0 ? Notes[indexPath.row].name : "No Notes"
        print(Notes[indexPath.row].name)
        return cell
    }
    
    //MARK: - Table View Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "titleToContent", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC=segue.destination as! ContentViewController
        if let indexPath=tableView.indexPathForSelectedRow{
            destinationVC.noteTitle=Notes[indexPath.row].name
            destinationVC.noteContent=Notes[indexPath.row].content
            destinationVC.indexPath=indexPath.row
            
        }
    }
}

