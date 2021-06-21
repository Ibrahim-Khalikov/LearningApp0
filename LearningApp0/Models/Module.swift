//
//  Module.swift
//  LearningApp0
//
//  Created by cloud_vfx on 21/06/21.
//

import Foundation

struct Module: Decodable, Identifiable {
    
    var id:Int
    var category:String
    var content: Content
    var test: Test
}
struct Content: Decodable, Identifiable {
    var id:Int
    var image:String
    var time:String
    var description:String
    var lesson: Lesson
}
struct Lesson: Decodable, Identifiable {
    var id:Int
    var title:String
    var video: String
    var duration:String
    var explanation:String
}
struct Test: Decodable, Identifiable {
    var id:Int
    var image:String
    var time:String
    var description:String
    var questions: [Question]
}
struct Question: Decodable, Identifiable {
    var id:Int
    var content:String
    var correctIndex:Int
    var answers:[String]
}
