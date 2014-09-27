//
//  Array2D.swift
//  Swiftris
//
//  Created by Thomas Kiefhaber on 9/27/14.
//  Copyright (c) 2014 Thomas Kiefhaber. All rights reserved.
//

class Array2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
        
    }
    
    subscript(column: Int, row: Int) -> T? {
        get{
            return array[(row * columns) + columns]
        }
        set(newValue){
            array[(row * columns) + columns] = newValue
        }
    }
}