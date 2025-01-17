/*
 * Copyright 2024 OmniOne.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation

public struct Provider: Jsonable {
    public var did: String
    public var certVcRef: String
    
    public init(did: String, certVcRef: String) {
        self.did = did
        self.certVcRef = certVcRef
    }
    
    enum CodingKeys: String, CodingKey {
        case did
        case certVcRef
    }
    
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(did, forKey: .did)
        try container.encode(certVcRef, forKey: .certVcRef)
    }
}
