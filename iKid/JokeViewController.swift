//
//  JokeViewController.swift
//  iKid
//
//  Created by Christina Wang on 2/8/26.
//

import UIKit

class JokeViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    // THESE are what the subclasses set
    var question: String = ""
    var punchline: String = ""

    private var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        jokeLabel.textAlignment = .center
        jokeLabel.numberOfLines = 0

        showingPunchline = false
        jokeLabel.text = question
    }

    @IBAction func nextTapped(_ sender: UIButton) {
        showingPunchline.toggle()

        let newText = showingPunchline ? punchline : question

        UIView.transition(with: jokeLabel,
                          duration: 0.5,
                          options: [.transitionFlipFromRight],
                          animations: {
            self.jokeLabel.text = newText
        })
    }
}
