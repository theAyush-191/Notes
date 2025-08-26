//
//  ContentViewController.swift
//  Notes
//
//  Created by Ayush Singh on 26/08/25.
//

import UIKit

class ContentViewController: UIViewController {
    
    var noteTitle:String=""
    var noteContent:String=""
    var newContent:String = ""
    var indexPath:Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        contentArea.text=noteContent
        title=noteTitle
    }
    
    @IBOutlet weak var contentArea: UITextView!
    

    
    override func viewWillDisappear(_ animated: Bool) {
        newContent=contentArea.text ?? ""
        if newContent != noteContent{
            if let index=indexPath{
                Notes[index].content=newContent
            }
            
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
