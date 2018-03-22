//
//  ViewController.swift
//  Color Quotes
//
//  Created by Tania on 21/2/18.
//  Copyright © 2018 TaniaCB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var newQuoteButton: UIButton!
    
    let quotesGenerator = QuotesGenerator()
    let colorsGenerator = ColorGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newDate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newDate() {
        let quote = quotesGenerator.randomQuoteGenerate()
        let color = colorsGenerator.randomColorGenerate()
        
        quoteLabel.text = quote.text
        authorLabel.text = quote.author
        
        view.backgroundColor = color;
        newQuoteButton.tintColor = color;
    }
    
}

