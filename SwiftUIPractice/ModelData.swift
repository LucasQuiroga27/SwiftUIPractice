//
//  ModelData.swift
//  SwiftUIPractice
//
//  Created by Lucas Quiroga on 12/07/23.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("No se pudo encontrar \(filename) en el paquete principal")
    }
    
    do{
        data = try Data(contentsOf: file)
    } catch {
        fatalError("No se pudo cargar \(filename) del paquete principal \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("no se pudo parsear \(filename) \(T.self):\n\(error)")
    }
    
}
