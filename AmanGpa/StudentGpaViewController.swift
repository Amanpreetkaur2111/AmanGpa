//
//  StudentGpaViewController.swift
//  AmanGpa
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit
import AVFoundation

class StudentGpaViewController: UIViewController {
    
    @IBOutlet var Courses: [UITextField]!
    
    
    @IBOutlet var CourseLabel: [UILabel]!
    
    
    @IBOutlet var GPALabel: UILabel!
    var SemDelegate: semesterTableViewController?
    var audio: AVAudioPlayer!
    let sound = ["Win"]
    
    var marks: Double?
    var gpa = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
for item in CourseLabel.indices {
    CourseLabel[item].text = storeStudent.CourseArray[(SemDelegate!.semesterIndx)][item]
        }

        // Do any additional setup after loading the view.
    }
    

    @IBAction func Calculate(_ sender: UIButton) {

        for i in Courses.indices{
            
            marks = GpaConvert(grades: Int(Courses[i].text!)!)
            students.StudentSave[SemDelegate!.stud_index].marks[SemDelegate!.semesterIndx][i] = Int(Courses[i].text!)!
            
            
        }
  
      GPALabel.text = "GPA:\(gpa)/4"
        
        if gpa > 2.8{
          
        let selectbutton = sound[sender.tag]
        let soundurl = Bundle.main.url(forResource: selectbutton, withExtension: "wav")
        audio = try! AVAudioPlayer(contentsOf: soundurl!)
        audio.play()
            
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
func GpaConvert(grades: Int) ->
        Double {
    switch grades {
                
        case 0...49:
        marks = 0.0
        case 50...59:
        marks = 1.0
        case 60...62:
        marks = 1.7
        case 63...66:
        marks = 2.0
        case 67...69:
        marks = 2.3
        case 70...72:
        marks = 2.7
        case 73...76:
        marks = 3.0
        case 77...79:
        marks = 3.2
        case 80...86:
        marks = 3.5
        case 87...93:
        marks = 3.7
        case 94...100:
        marks = 4.0
    default:
        break
            }
            
        return marks!
    }

}
