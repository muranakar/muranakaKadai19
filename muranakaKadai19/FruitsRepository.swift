//
//  FruitsRepository.swift
//  muranakaKadai19
//
//  Created by 村中令 on 2021/11/21

import UIKit

class FruitsRepository {
    static func setFruits(fruits: [Fruit]) {
        let data = try? JSONEncoder().encode(fruits)
        UserDefaults.standard.set(data, forKey: "persons")
    }

    static func readFruits() -> [Fruit]? {
        let data = UserDefaults.standard.data(forKey: "persons")
        guard let data = data else { return nil }
        let persons = try? JSONDecoder().decode(Array<Fruit>.self, from: data)
        return persons
    }
}
