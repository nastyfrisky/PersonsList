//
//  Person.swift
//  Persons List
//
//  Created by Анастасия Ступникова on 09.02.2022.
//

struct Person {
    var name: String
    var surname: String
    var email: String
    var phone: String
}

class DataManager {
    static let names = [
        "Яна",
        "Настя",
        "Влад",
        "Герман",
        "Ибрагим",
        "Катя",
        "Даниил",
        "Александр",
        "Ольга",
        "Алексей"
    ].shuffled()

    static let surnames = [
        "Алексеева",
        "Морозова",
        "Матковский",
        "Мальцев",
        "Гаджиев",
        "Сухарева",
        "Пантелеев",
        "Некрасов",
        "Чемисова",
        "Сысой"
    ].shuffled()

   static let email = [
        "aleksey@mail.ru",
        "moroz@mail.ru",
        "matka@mail.ru",
        "malka@mail.ru",
        "skam@mail.ru",
        "sukhar@mail.ru",
        "pantel@mail.ru",
        "nekras@mail.ru",
        "chemis@mail.ru",
        "sysy@mail.ru"
   ].shuffled()

    static let phones = [
         "89854443322",
         "89019998877",
         "89257776655",
         "89625554433",
         "89859998877",
         "89299277766",
         "89010654433",
         "84955554433",
         "89775554433",
         "89622900000"
    ].shuffled()
    
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        for index in 0...9 {
            persons.append(Person(
                name: names[index],
                surname: surnames[index],
                email: email[index],
                phone: phones[index])
            )
        }
        
        return persons
    }
}
