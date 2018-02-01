//
//  NewPageViewController.swift
//  DeathNote
//
//  Created by Siva Nadarassin on 27/01/2018.
//  Copyright © 2018 siva Nadarassin. All rights reserved.
//

import UIKit

class NewPageViewController: UIViewController, UITextFieldDelegate {
    
    // pour sauvegarder la page
    var page : Page?

    @IBOutlet weak var personName: UITextField!
    
    @IBOutlet weak var desc: UITextView!
    
    @IBOutlet weak var deathDate: UIDatePicker!
    
    /*
     @IBAction func doneButton(_ sender: UIBarButtonItem) {
     print("NewPageViewController:doneButton appelé")
     }
    
        */
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // cette fontion est appelee juste avant la transition
        super.prepare(for: segue, sender: sender)
        /*
         guard let button = sender as? UIBarButtonItem, button === doneButton else {
         print("Le bouton Done n'a pas ete presse, on annule tout")
         return
         }
        */
        print("NewPageViewController:prepare")
        page = Page(name: personName.text!, desc: desc.text, deathDate: deathDate.date)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        personName.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // les 2 lignes suivantes permettent de n'autoriser que des dates au dela de maintenant
        deathDate.minimumDate = Date(timeIntervalSinceNow: 0)
        deathDate.date = Date(timeIntervalSinceNow: 2)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.navigationItem.title = textField.text
    }
}

