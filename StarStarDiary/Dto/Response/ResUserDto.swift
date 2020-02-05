//
//  ResUserDto.swift
//  MashUpAPITest
//
//  Created by 이동영 on 2020/02/06.
//  Copyright © 2020 이동영. All rights reserved.
//

import Foundation

struct ResUserDto: Decodable {
    let constellation: String
    let horoscopeAlarmFlag: Bool
    let horoscopeTime: LocalTime
    let id: Int
    let questionAlarmFlag: Bool
    let questionTime: LocalTime
    let timeZone: String
    let userId: String
}
