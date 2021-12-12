//
// Niote.swift
//  NoteApp7
//
//  Created by HANAN on 08/05/1443 AH.
//

import Foundation

class Note {
    var content: String?
    let dateCreated = Date()
    
    init(withContent content: String) {
        self.content = content
    }
}
