//
//  StudyTask.swift
//  ServeyKitDemo
//
//  Created by Krup@ on 18/07/22.
//

import ResearchKit

struct StudyTasks {
    
    static let surveyTask: ORKOrderedTask = {
        var steps = [ORKStep]()
        
        let instructionStep = ORKInstructionStep(identifier: "Intro")
        instructionStep.title = "It's lovely to meet you!"
        
        instructionStep.text = "Let's get to know you better to personalise and improve your experience on Marvin’s Den! \n\nThis is to suggest you with specific meals, plans and meal providers that best match with your goals, needs and preferences. We take personal data seriously."
        steps += [instructionStep]
        
        let questQuestionStepTitle = "What are you trying to get out of Marvin’s Den?"
        let textChoices = [
            ORKTextChoice(text: "Stay healthy and feeling good", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Maintain/Gain lean weight (build muscle)", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Lose weight", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Just can’t cook sometimes/often so this helps me save time", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "I need help following a diet", value: 4 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Other", value: 5 as NSCoding & NSCopying & NSObjectProtocol)
        ]
        let questAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
        let questQuestionStep = ORKQuestionStep(identifier: "Purpose", title: questQuestionStepTitle, placeholderr: "", text: "", question: questQuestionStepTitle, answer: questAnswerFormat)
        steps += [questQuestionStep]
        
        let questQuestionStepTitle2 = "Do you know your BMR? If not, don’t worry, we just need to ask you a few questions"
        let questAnswerFormat2: ORKBooleanAnswerFormat = ORKAnswerFormat.booleanAnswerFormat(withYesString: "Yes, I know my BMR", noString: "No, I'll answer more questions")
        let questQuestionStep2 = ORKQuestionStep(identifier: "BMR", title: questQuestionStepTitle2, placeholderr: "", text: "Okay, got it. As you have specific requirements, let’s help you find the right plan for you by answering just a few questions!", question: questQuestionStepTitle2, answer: questAnswerFormat2)
        steps += [questQuestionStep2]
        
        let questQuestionStepTitle4 = "What's your BMR?"
        let questAnswerFormat4: ORKNumericAnswerFormat = ORKAnswerFormat.integerAnswerFormat(withUnit: "")
        let questQuestionStep4 = ORKQuestionStep(identifier: "Enter BMR", title: questQuestionStepTitle4, placeholderr: "Please enter your BMR", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle4, answer: questAnswerFormat4)
        steps += [questQuestionStep4]
        
        let questQuestionStepTitle5 = "How old are you?"
        let questAnswerFormat5: ORKNumericAnswerFormat = ORKAnswerFormat.integerAnswerFormat(withUnit: "")
        let questQuestionStep5 = ORKQuestionStep(identifier: "Age", title: questQuestionStepTitle5, placeholderr: "Please enter your age", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle5, answer: questAnswerFormat4)
        steps += [questQuestionStep5]
        
        let questQuestionStepTitle6 = "What's your gender?"
        let textChoices6 = [
            ORKTextChoice(text: "Male", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Female", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Other", value: 2 as NSCoding & NSCopying & NSObjectProtocol)
        ]
        let questAnswerFormat6: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices6)
        let questQuestionStep6 = ORKQuestionStep(identifier: "Gender", title: questQuestionStepTitle6, placeholderr: "", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle6, answer: questAnswerFormat6)
        steps += [questQuestionStep6]
        
        let questQuestionStepTitle7 = "What's your height (inches)?"
        let questAnswerFormat7: ORKHeightAnswerFormat = ORKAnswerFormat.heightAnswerFormat(with: .metric)
        let questQuestionStep7 = ORKQuestionStep(identifier: "Height", title: questQuestionStepTitle7, placeholderr: "Please enter your height (inches)", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle7, answer: questAnswerFormat7)
        steps += [questQuestionStep7]
        
        let questQuestionStepTitle8 = "What's your weight (lbs)?"
        let questAnswerFormat8: ORKWeightAnswerFormat = ORKAnswerFormat.weightAnswerFormat()
        let questQuestionStep8 = ORKQuestionStep(identifier: "Weight", title: questQuestionStepTitle8, placeholderr: "Please enter your weight (lbs)", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle8, answer: questAnswerFormat8)
        steps += [questQuestionStep8]
        
        // Quest question using text choice
        let questQuestionStepTitle9 = "What’s your physical activity level?"
        let textChoices9 = [
            ORKTextChoice(text: "I do little to no exercise and I have a typical office job", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "My job requires walking/standing or I do some light exercise 1-3 days a week", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "I have a fairly physical demanding job or I perform moderate exercise 3-5 days a week roughly 2 hours a day", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "I am a very active person who exercises hard 6-7 days a week", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "I am an extra active person such as a high-performing athlete", value: 4 as NSCoding & NSCopying & NSObjectProtocol)
        ]
        let questAnswerFormat9: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices9)
        let questQuestionStep9 = ORKQuestionStep(identifier: "Physical Activity", title: questQuestionStepTitle9, placeholderr: "", text: "This will help us better calculate your caloric needs.", question: questQuestionStepTitle9, answer: questAnswerFormat9)
        steps += [questQuestionStep9]
        
        let questQuestionStepTitle10 = "Do you have any allergies or dietary requirements for your meals?"
        let textChoices10 = [
            ORKTextChoice(text: "No allergies or dietary requirements", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Gluten free", value: 1 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Dairy free", value: 2 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Nut free", value: 3 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Meat free (vegetarian)", value: 4 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Vegan", value: 5 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Halal", value: 6 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Beef free", value: 7 as NSCoding & NSCopying & NSObjectProtocol),
            ORKTextChoice(text: "Low Fodmap (e.g. for irritable bowel syndrome)", value: 8 as NSCoding & NSCopying & NSObjectProtocol)
        ]
        let questAnswerFormat10: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: textChoices10)
        let questQuestionStep10 = ORKQuestionStep(identifier: "Allergies", title: questQuestionStepTitle10, placeholderr: "", text: "We'll try recommend you meals that do not include these allergies but do mention the allergies when ordering.", question: questQuestionStepTitle10, answer: questAnswerFormat10)
        steps += [questQuestionStep10]
        
        let continuousAnswerFormat11 = ORKAnswerFormat.scale(withMaximumValue: 10, minimumValue: 2, defaultValue: 5, step: 8, vertical: false, maximumValueDescription: "£10", minimumValueDescription: "£2")
        let continuousQuestionStepTitle11 = "How much do you want your meals to cost (£ per meal)?"
        let continuousQuestionStep11 = ORKQuestionStep(identifier: "Price", title: continuousQuestionStepTitle11, placeholderr: "", text: "We'll recommend you meals that fall within your budget.", question: continuousQuestionStepTitle11, answer: continuousAnswerFormat11)
        steps += [continuousQuestionStep11]
        
        let continuousAnswerFormat12: ORKEmailAnswerFormat = ORKAnswerFormat.emailAnswerFormat()
        let continuousQuestionStepTitle12 = "What's your email?"
        let continuousQuestionStep12 = ORKQuestionStep(identifier: "Email", title: continuousQuestionStepTitle12, placeholderr: "", text: "We'll use this email address to communicate your recommendations to you.", question: continuousQuestionStepTitle12, answer: continuousAnswerFormat12)
        steps += [continuousQuestionStep12]
        
        // Summary step
        let summaryStep = ORKCompletionStep(identifier: "Complete")
        summaryStep.title = "Great job, you're all set!"
        summaryStep.text = "We'll soon get in touch with our recommendations. Keep an eye out for an email/call consultation from us. For now, you can use the \"Filters\" in the next screen to find a meal prepper that works for your preferences and dietary requirements."
        steps += [summaryStep]
        
        let predicate = ORKResultPredicate.predicateForChoiceQuestionResult(with: ORKResultSelector(resultIdentifier: "Purpose"), expectedAnswerValue: 0 as NSCoding & NSCopying & NSObjectProtocol)
        let predicate1 = ORKResultPredicate.predicateForChoiceQuestionResult(with: ORKResultSelector(resultIdentifier: "Purpose"), expectedAnswerValue: 3 as NSCoding & NSCopying & NSObjectProtocol)
        let predicate2 = ORKResultPredicate.predicateForChoiceQuestionResult(with: ORKResultSelector(resultIdentifier: "Purpose"), expectedAnswerValue: 5 as NSCoding & NSCopying & NSObjectProtocol)
        let predicate4 = ORKResultPredicate.predicateForBooleanQuestionResult(with: ORKResultSelector(resultIdentifier: "BMR"), expectedAnswer: false)
        let predicate5 = ORKResultPredicate.predicateForNumericQuestionResult(with: ORKResultSelector(resultIdentifier: "Enter BMR"), expectedAnswer: 0)
        
        
        let rule = ORKPredicateStepNavigationRule(
            resultPredicatesAndDestinationStepIdentifiers: [(predicate, "Allergies"), (predicate1, "Allergies"), (predicate2, "Allergies"), (predicate4, "Age"), (predicate5, "Physical Activity")])
        var task = ORKNavigableOrderedTask(identifier: "SurveyTask", steps: steps)
        task.setNavigationRule(rule, forTriggerStepIdentifier: "Purpose")
        return task
    }()
}
