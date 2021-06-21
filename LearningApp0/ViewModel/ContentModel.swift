//
//  ContentModel.swift
//  LearningApp0
//
//  Created by cloud_vfx on 21/06/21.
//

import Foundation

class ContentModel: ObservableObject {

    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init(){
        getlocalData()
    }
    
    func getlocalData(){
        
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsondecoder = JSONDecoder()
            
            let module = try jsondecoder.decode([Module].self, from: jsonData)
            
            self.modules = module
        }
        catch{
            print("couldn't find json path")
        }
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData 
        }
        catch{
            print("couldn't find style data")
        }
    }
}
