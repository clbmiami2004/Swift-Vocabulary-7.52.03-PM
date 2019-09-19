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
        VocabularyWord(word: "Blue", definition: "It's a color."),
        
    ]

    
    
    
    // MARK: - Table view data source

    

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
