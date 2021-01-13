//
//  PhonebookData.swift
//  AutoLayoutStudy
//
//  Created by Yeon on 2021/01/13.
//

import Foundation

struct PhonebookData {
    let name: String
    let phone: String
}

var data: [String : [PhonebookData]] =
    [
        "ㄱ" : [
            PhonebookData(name: "게임봇1", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇2", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇3", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇4", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇5", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇6", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇7", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇8", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇9", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇10", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇11", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇12", phone: "010-1111-2222"),
            PhonebookData(name: "게임봇13", phone: "010-1111-2222"),
            PhonebookData(name: "글랜", phone: "010-1111-2222"),
            PhonebookData(name: "그린", phone: "010-1111-2222"),
            PhonebookData(name: "가나다", phone: "010-1111-2222"),
            PhonebookData(name: "꼬말", phone: "010-1111-2222"),
        ],
        "ㄴ" : [
        ],
        "ㄷ" : [
            PhonebookData(name: "도미닉", phone: "010-1111-2222"),
            PhonebookData(name: "델마", phone: "010-1111-2222"),
            PhonebookData(name: "다흰", phone: "010-1111-2222")
        ],
        "ㄹ" : [
            PhonebookData(name: "라자냐", phone: "010-1111-2222"),
            PhonebookData(name: "리나", phone: "010-1111-2222"),
            PhonebookData(name: "림윈", phone: "010-1111-2222")
        ],
        "ㅁ" : [
            PhonebookData(name: "민디", phone: "010-1111-2222")
        ],
        "ㅂ" : [
            PhonebookData(name: "밤", phone: "010-1111-2222"),
            PhonebookData(name: "붱이", phone: "010-1111-2222")
        ],
        "ㅅ" : [
            PhonebookData(name: "소대", phone: "010-1111-2222"),
            PhonebookData(name: "솔", phone: "010-1111-2222")
        ],
        "ㅇ" : [
            PhonebookData(name: "오동나무", phone: "010-1111-2222"),
            PhonebookData(name: "야곰", phone: "010-1111-2222"),
            PhonebookData(name: "이니", phone: "010-1111-2222")
        ],
        "ㅈ" : [
            PhonebookData(name: "제이크", phone: "010-1111-2222"),
            PhonebookData(name: "준스", phone: "010-1111-2222"),
            PhonebookData(name: "제이콥", phone: "010-1111-2222"),
            PhonebookData(name: "찌루루", phone: "010-1111-2222")
        ],
        "ㅊ" : [
        ],
        "ㅋ" : [
        ],
        "ㅌ" : [
            PhonebookData(name: "태태", phone: "010-1111-2222")
        ],
        "ㅍ" : [
        ],
        "ㅎ" : [
        ]
    ]

var datas = data.map { $0.key }.sorted()

