//
//  FileSystemService.swift
//  Voltix
//
//  Created by Enrique Souza Soares on 03/02/24.
//

import Foundation

class FileSystemService {
    private let documentsDirectoryURL: URL

    init() {
        documentsDirectoryURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    }

    func save(data: Data, withFileName fileName: String) {
        let fileURL = documentsDirectoryURL.appendingPathComponent(fileName)

        do {
            try data.write(to: fileURL)
        } catch {
            print("Error writing file: \(error)")
        }
    }

    func load(withFileName fileName: String) -> Data? {
        let fileURL = documentsDirectoryURL.appendingPathComponent(fileName)

        do {
            return try Data(contentsOf: fileURL)
        } catch {
            print("Error reading file: \(error)")
            return nil
        }
    }
}

