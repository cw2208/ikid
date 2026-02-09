//  KnockVC.swift
//  iKid
//
//  Created by Christina Wang on 2/8/26.
//
import UIKit

class KnockVC: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!

    private let steps = [
        "Knock, knock.",
        "Who’s there?",
        "Lettuce.",
        "Lettuce who?",
        "Lettuce in — it’s cold out here!"
    ]

    private var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.textAlignment = .center
        jokeLabel.numberOfLines = 0
        jokeLabel.text = steps[index]
        title = "Knock"
    }

    @IBAction func nextTapped(_ sender: UIButton) {
        index = (index + 1) % steps.count

        UIView.transition(with: jokeLabel,
                          duration: 0.5,
                          options: [.transitionFlipFromRight],
                          animations: {
            self.jokeLabel.text = self.steps[self.index]
        })
    }
}


