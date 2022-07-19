//
//  ViewController.swift
//  ServeyKitDemo
//
//  Created by Krup@ on 18/07/22.
//

import UIKit
import ResearchKit

class ViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Action Survey
    @IBAction func actionSurvey(_ sender: Any) {
        let taskViewController: ORKTaskViewController
        taskViewController = ORKTaskViewController(task: StudyTasks.surveyTask, taskRun: NSUUID() as UUID)
        taskViewController.delegate = self
        taskViewController.modalPresentationStyle = .overFullScreen
        self.navigationController?.present(taskViewController, animated: true, completion: nil)
    }
}

// MARK: - ORKTaskViewController Delegate Methods
extension ViewController: ORKTaskViewControllerDelegate {
    
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        taskViewController.dismiss(animated: true, completion: nil)
    }
}
