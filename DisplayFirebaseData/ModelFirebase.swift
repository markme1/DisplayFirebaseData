//
//  ModelFirebase.swift
//  DisplayFirebaseData
//
//  Created by mark me on 6/15/20.
//  Copyright © 2020 mark me. All rights reserved.
//

import Foundation
import UIKit

class ModelFirebase {
    var firstName: String!
    var lastName: String!
    var emailId: String!
    
    init(firstName: String, lastName: String, emailId: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.emailId = emailId
    }
}
