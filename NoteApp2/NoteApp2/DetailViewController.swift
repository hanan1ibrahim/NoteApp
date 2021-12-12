//
// DetailViewController.swift
//  NoteApp7
//
//  Created by HANAN on 08/05/1443 AH.
//
import UIKit

protocol NoteUpdateDelegate: class {
    func updateNote(_ note: Note, at index: Int)
}

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var note: Note?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if let note = note {
            note.content = textView.text
        }
    }
    
    func configureView() {
        if let note = note {
            textView.text = note.content
        }
    }
}
