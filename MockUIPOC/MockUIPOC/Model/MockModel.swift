import Foundation

// MARK: - Welcome
struct MockModel: Codable {
    let lastSigned: String
    let data: DataClass
}

// MARK: - DataClass
struct DataClass: Codable {
    let sections: [Section]
}

// MARK: - Section
struct Section: Codable {
    let rows: [Row]
    let sectionTitle: String?
}

// MARK: - Row
struct Row: Codable {
    let identifier: String
    let total, name, amount, accountNumber: String?

    enum CodingKeys: String, CodingKey {
        case identifier = "Identifier"
        case total = "Total"
        case name, amount, accountNumber
    }
}
