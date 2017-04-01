//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class NoteItem: NSObject {
    required override init() {
        super.init()
    }
    
    func subRelationKeys() -> String {
        var className = String(describing: self.classForCoder)
        className = lowercasedFirstChar(with: className)
        className.append("Id")
        
        return className
    }
    
    func lowercasedFirstChar(with string: String) -> String {
        var resultString = string
        let firstChar = resultString.characters.first?.description.lowercased()
        
        resultString.characters.remove(at: resultString.characters.startIndex)
        
        return firstChar!.appending(resultString)
    }
    
    class func stringClassFromString(_ className: String) -> AnyClass! {
        
        /// get namespace
        let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String;
        
        /// get 'anyClass' with classname and namespace
        let cls: AnyClass = NSClassFromString("\(namespace).\(className)")!;
        
        // return AnyClass!
        return cls;
    }
}

let note = NoteItem()

note.subRelationKeys()

let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 300))

view.backgroundColor = UIColor.orange

let namespace = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String;

let noteClass = NoteItem.self
noteClass.init()

//let instance = noteClass()


