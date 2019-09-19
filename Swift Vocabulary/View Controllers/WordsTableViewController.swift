//
//  WordsTableViewController.swift
//  Swift Vocabulary
//
//  Created by Christian Lorenzo on 9/18/19.
//  Copyright © 2019 Christian Lorenzo. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    //Variables:
    
    var vocaWords: [VocabularyWord] = [
        VocabularyWord(word: "Blue:", definition: "It's a color."),
        VocabularyWord(word: "Stipend:", definition: "A fixed regular sum paid as a salary or allowance."),
        VocabularyWord(word: "Whim:", definition: "A sudden desire or change of mind, especially one that is unusual or unexplained"),
        VocabularyWord(word: "Fifth Amendment:", definition: "An amendment to the Constitution that contains a number of provisions relating to criminal law, including guarantees of due process and of the right to refuse to answer questions in order to avoid incriminating oneself.")
        
    ]

    
    
    
    // MARK: - Table view data source
    //Functions:

    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocaWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        
        let words = vocaWords[indexPath.row]
        cell.textLabel?.text = words.word
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            let destination = segue.destination as? DefinitionViewController
            
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            
            destination?.vocaWord = vocaWords[indexPath.row]
        }
    }
    

    

}
