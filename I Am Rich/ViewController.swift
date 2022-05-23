//
//  ViewController.swift
//  I Am Rich
//
//  Created by Negin Zahedi on 2022-05-23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var money: UIImageView!
    @IBOutlet weak var person: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create a gradient layer
        let gradientLayer = CAGradientLayer()
        //set the size of the layer to be equal to size of the display
        gradientLayer.frame = view.bounds
        // set an array of thr Core Graphics colors to create the gradient
        gradientLayer.colors = [#colorLiteral(red: 0.5773623586, green: 0.8689923882, blue: 0.6995967031, alpha: 1).cgColor, #colorLiteral(red: 0.2383848727, green: 0.5241492987, blue: 0.6266734004, alpha: 1).cgColor]
        // Diagonal: top left to bottom corner.
        gradientLayer.startPoint = CGPoint(x: 0, y: 0) // Top left corner.
        gradientLayer.endPoint = CGPoint(x: 1, y: 1) // Bottom right corner.
        // Rasterize this static layer to improve app performance.
        gradientLayer.shouldRasterize = true
        // Apply the gradient to the view.
        view.layer.addSublayer(gradientLayer)
        //add labels and images
        view.addSubview(money)
        view.addSubview(person)
        view.addSubview(text)
    }
}

