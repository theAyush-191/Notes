//
//  ContentViewController.swift
//  Notes
//
//  Created by Ayush Singh on 26/08/25.
//

import UIKit
import RealmSwift

class ContentViewController: UIViewController {
    
    let realm=try! Realm()
    
    var note:NoteObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentArea.text=note.content
        title=note.title
    }
    
    @IBOutlet weak var contentArea: UITextView!
    

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        try! realm.write{
            note.content=contentArea.text
        }
        
       
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
