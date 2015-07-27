//
//  LocalUserInfoPersistance.swift
//  
//
//  Created by Ziyao Wang on 7/24/15.
//
//


import UIKit
import SwiftyJSON
import Alamofire

class LocalUserInfoPeresistance: NSObject {
    
    struct UserInfo {
        static let Phone = "UserPhoneNumber"
        static let Id = "UserId"
        static let Token = "UserToken"
    }
    
    class func storeUserInfo(phone: String, id: Int, token: String) {
        let userDefault = NSUserDefaults.standardUserDefaults()
        userDefault.setObject(phone, forKey: UserInfo.Phone)
        userDefault.setInteger(id, forKey: UserInfo.Id)
        userDefault.setObject(token, forKey: UserInfo.Token)
        userDefault.synchronize()
    }
    
    class func getUserPhoneNumber() -> String {
        let userDefault = NSUserDefaults.standardUserDefaults()
        let phone: String = userDefault.objectForKey(UserInfo.Phone) as! String
        return phone
    }
    
    class func getUserToken() -> NSString {
        let userDefault = NSUserDefaults.standardUserDefaults()
        let token: NSString = userDefault.objectForKey(UserInfo.Token) as! NSString
        return token
    }
    
    
}
