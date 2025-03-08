//
//  Helper.swift
//  Eater
//
//  Created by 刀子叉子勺 on 2025/3/8.
//

func dishSelection(arrayDishes dishes: [String]) -> String {
    if let dish: String = dishes.randomElement() {
        return dish
    } else {
        return "No Such Data!"
    }
}
