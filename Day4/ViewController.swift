//
//  ViewController.swift
//  Day4
//
//  Created by User on 2019-07-03.
//  Copyright © 2019 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource {
    
    
   // @IBOutlet weak var collegepicker: UIPickerView!
    @IBOutlet weak var txtCollegeName: UITextField!
    @IBOutlet weak var txtCourseName: UITextField!
    @IBOutlet weak var CoursePicker: UILabel!
    @IBOutlet weak var PickerCourseName: UIPickerView!
    var course_list = ["Android Fundamentals", "iOS Fundamentals", "Swift Programming", "Database Design", "Programming in Java", "Web Development in PHP", "Machine Learning", "Data Analytics with R", "Learn Ruby - The Hard Way", "Data Structures in C++"]
    var collegeName = ["Canadore College", "Seneca College", "Northern College", "Sheridan College", "Durham College"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.PickerCourseName.delegate = self
        self.PickerCourseName.dataSource = self
        self.txtCourseName.delegate = self
        self.txtCollegeName.delegate = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0)
        {
        return self.collegeName.count
        }
        else{
            return self.course_list.count
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if (component==0)
        {
            return "\(row + 1) - \(self.collegeName[row])"}
        else{
            return "\(row + 1) - \(self.course_list[row])"}
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // self.CoursePicker.text = self.course_list[row]
        let strCollegeName = self.collegeName[pickerView.selectedRow(inComponent: row)]
        
      //  let strCourseName = self.PickerCourseName[pickerView.selectedRow(inComponent: row)]
    }

}

extension ViewController: UITextFieldDelegate
{
   /* func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if !textField.text!.isEmpty
        {
            if textField.tag == 0
            {
            
        }
            else{}
    }
        else{}
}*/
}
