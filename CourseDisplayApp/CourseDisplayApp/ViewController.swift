//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Goli,Maheshwar Reddy on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
                   ["img02", "44643", "iOS", "Spring 2022"],
                   ["img03", "44656", "Data Streaming", "Summer 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the first course details (image, course num, title and sem)
        updateUI(imageNumber)
        // previous button disabled
        previousButton.isEnabled = false
    }

    @IBAction func previousButtonClicked(_ sender: UIButton) {
        // update the UI
        imageNumber -= 1
        updateUI(imageNumber)
        // next button should be enabled
        nextButton.isEnabled = true
        // when the course position is at 0, previous button should be disabled
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        //update the UI
        imageNumber += 1
        updateUI(imageNumber)
        //previous button should be enabled
        previousButton.isEnabled = true
        //once you reach the end of array, next button should be disabled
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum: Int){
        displayImage.image = UIImage(named: courses[imageNum][0])
        crsNum.text! = courses[imageNum][1]
        crsTitle.text! = courses[imageNum][2]
        crsSem.text! = courses[imageNum][3]
    }
}

