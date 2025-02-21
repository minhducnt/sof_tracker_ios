//
//  SofReputation.swift
//  SofTracker
//
//  Created by TMA on 21/2/25.
//

import Foundation

struct SofReputation: Codable {
    let reputationHistoryType: String?
    let reputationChange: Int?
    let postId: Int?
    let creationDate: String?
    let userId: Int?

    enum CodingKeys: String, CodingKey {
        case reputationHistoryType = "reputation_history_type"
        case reputationChange = "reputation_change"
        case postId = "post_id"
        case creationDate = "creation_date"
        case userId = "user_id"
    }
}
