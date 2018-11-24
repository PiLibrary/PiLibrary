//
//  PiString.swift
//  PiLibrary
//
//  Created by PrInCeInFiNiTy on 23/10/2561 BE.
//

import UIKit

extension PiLibrary
{
   public static func removeNullString(stringData: String?) -> String
    {
        if (stringData?.isEmpty) != nil
        {
            return String(format: "%@", stringData!)
        }
        else
        {
            return("")
        }
    }
    
   public static func changeNullString(stringData: String? , changeString: String?) -> String
    {
        if (stringData?.isEmpty) != nil && (changeString?.isEmpty) != nil
        {
            return String(format: "%@", stringData!)
        }
        else if (changeString?.isEmpty) != nil
        {
            return String(format: "%@", changeString!)
        }
        else
        {
            return("")
        }
    }
    
   public static func emailValid(stringData: String?) -> Bool
    {
        if removeNullString(stringData: stringData) != ""
        {
            let emailFormat:String! = "^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,20})$"
            let predicateEmailFormat = NSPredicate(format:"SELF MATCHES %@", emailFormat)
            return predicateEmailFormat.evaluate(with: stringData)
        }
        else
        {
            return false
        }
    }
    
    public static func test() -> String
    {
        return "1234"
    }
}
