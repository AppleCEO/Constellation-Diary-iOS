//
//  API.swift
//  StarStarDiary
//
//  Created by 이동영 on 2020/02/08.
//  Copyright © 2020 mash-up. All rights reserved.
//

import Foundation

protocol APIType {
    typealias Token = String
    typealias TimeZone = String
    
    var accessToken: Token { get }
    var refreshToken: Token { get }
    var timeZone: TimeZone { get }
}

enum API {
    
    case authenticationNumbersToFindPassword(ReqFindPasswordNumberDto)
    case authenticationToFindPassword(ReqValidationFindPasswordNumberDto)
    
    case authenticationNumbersToSignUp(ReqSignUpNumberDto)
    case authenticationToSignUp(ReqValidationSignUpNumberDto)
    
    case dailyQuestion(date: String)
    
    case diaries(month: Int, year: Int)
    case writeDiary(request: ReqWriteDiaryDto)
    case diary(id: Int)
    case modifyDiary(id: Int, request: ReqModifyDiaryDto)
    case deleteDiary(id: Int)
    
    case horoscopes(constellation: String, date: String)
    case horoscope(id: Int)
    
    case modifyConstellations(request: ReqModifyConstellationDto)
    case modifyHoroscopeAlarm(request: ReqModifyHoroscopeAlarmDto)
    case modifyHoroscopeTime(request: ReqModifyHoroscopeTimeDto)
    case modifyPassword(request: ReqModifyPasswordDto)
    case modifyQuestionAlarm(request: ReqModifyQuestionAlarmDto)
    case modifyQuestionTime(request: ReqModifyQuestionTimeDto)
    
    case checkId(id: String)
    case findId(email: String)
    case signIn(request: ReqSignInDto)
    case signOut
    case signUp(request: ReqSignUpDto)
    
    case refreshToken
}
