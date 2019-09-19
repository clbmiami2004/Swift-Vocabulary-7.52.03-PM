//
//  DefinitionViewController.swift
//  Swift Vocabulary
//
//  Created by Christian Lorenzo on 9/18/19.
//  Copyright © 2019 Christian Lorenzo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocaWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
        // Do any additional setup after loading the view.
    }
    
    
    func updateViews() {
        guard let vocaWord = vocaWord else {return}
        
        wordLabel.text = vocaWord.word
        
        definitionTextView.text = vocaWord.definition
    }
    
    
    
    @IBOutlet weak var wordLabel: UILabel!
    
    
    
    @IBOutlet weak var definitionTextView: UITextView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
