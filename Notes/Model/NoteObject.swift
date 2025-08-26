//
//  NoteObject.swift
//  Notes
//
//  Created by Ayush Singh on 27/08/25.
//
import RealmSwift
import Foundation

class NoteObject:Object{
    @Persisted(primaryKey: true) var id:String = UUID().uuidString
    @Persisted var title: String = ""
    @Persisted var content: String = ""
}
