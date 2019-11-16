//
//  student.swift
//  AmanGpa
//
//  Created by MacStudent on 2019-11-15.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

struct students {
    
    var FirstName: String
    var LastName: String
    var StudentId: String
    var marks = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
    var gpa = [0.0,0.0,0.0]
    var cgpa: Double{
        
        return (gpa[0] + gpa[1] + gpa[2]) / 3
    }
    
    static var StudentSave = [students]()
    
}
