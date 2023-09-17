//
//  Plant.swift
//  Plantid
//
//  Created by Ryan Walton on 20/8/2023.
//

import Foundation
import Combine

enum Month: String, CaseIterable, Identifiable {
    
    
    case January, February, March, April, May, June, July, August, September, October, November, December, month
    var id: Self { self }
}

class Plant: NSObject, NSCoding, ObservableObject {
    @Published var botanicalName: String
    @Published var commonName: String
    @Published var indigenousLanguageName: String
    @Published var isNative: Bool
    @Published var plantType: String
    @Published var plantFamily: String
    @Published var plantMorphology: String
    @Published var attributes: String
    @Published var status: String
    @Published var stemColour: String
    @Published var leafColour: String
    @Published var flowerOrganisation: String
    @Published var flowerColour: String
    @Published var floweringStartTime: Month
    @Published var floweringEndTime: Month
    @Published var flowerDescription: String
    @Published var seedOrganisation: String
    @Published var seedColour: String
    @Published var seedTime: DateInterval?
    @Published var seedDescription: String
    @Published var plantDescription: String
    @Published var userFieldNotes: String
    @Published var chemCategory: String
    @Published var resistances: String
    @Published var chemMethod: String
    @Published var chemOptimalTime: String
    @Published var link: String
    
    init(botanicalName: String, commonName: String, indigenousLanguageName: String, isNative: Bool, plantType: String, plantFamily: String, plantMorphology: String, attributes: String, status: String, stemColour: String, leafColour: String, flowerOrganisation: String, flowerColour: String, floweringStartTime: Month, floweringEndTime: Month, flowerDescription: String, seedOrganisation: String, seedColour: String, seedTime: DateInterval, seedDescription: String, plantDescription: String, userFieldNotes: String, chemCategory: String, resistances: String, chemMethod: String, chemOptimalTime: String, link: String) {
        self.botanicalName = botanicalName
        self.commonName = commonName
        self.indigenousLanguageName = indigenousLanguageName
        //isNative is currently set to only true or false, doesn't include "unknown"
        self.isNative = isNative
        self.plantType = plantType
        self.plantFamily = plantFamily
        self.plantMorphology = plantMorphology
        self.attributes = attributes
        self.status = status
        self.stemColour = stemColour
        self.leafColour = leafColour
        self.flowerOrganisation = flowerOrganisation
        self.flowerColour = flowerColour
        self.floweringStartTime = floweringStartTime
        self.floweringEndTime = floweringEndTime
        self.flowerDescription = flowerDescription
        self.seedOrganisation = seedOrganisation
        self.seedColour = seedColour
        self.seedTime = seedTime
        self.seedDescription = seedDescription
        self.plantDescription = plantDescription
        self.userFieldNotes = userFieldNotes
        self.chemCategory = chemCategory
        self.resistances = resistances
        self.chemMethod = chemMethod
        self.chemOptimalTime = chemOptimalTime
        self.link = link
    }
    
    override init() {
        self.botanicalName = ""
        self.commonName = ""
        self.indigenousLanguageName = ""
        self.isNative = false
        self.plantType = ""
        self.plantFamily = ""
        self.plantMorphology = ""
        self.attributes = ""
        self.status = ""
        self.stemColour = ""
        self.leafColour = ""
        self.flowerOrganisation = ""
        self.flowerColour = ""
        self.floweringStartTime = Month.month
        self.floweringEndTime = Month.month
        self.flowerDescription = ""
        self.seedOrganisation = ""
        self.seedColour = ""
        self.seedTime = nil
        self.seedDescription = ""
        self.plantDescription = ""
        self.userFieldNotes = ""
        self.chemCategory = ""
        self.resistances = ""
        self.chemMethod = ""
        self.chemOptimalTime = ""
        self.link = ""
    }
    
    init(botanicalName: String) {
        self.botanicalName = botanicalName
        self.commonName = ""
        self.indigenousLanguageName = ""
        self.isNative = false
        self.plantType = ""
        self.plantFamily = ""
        self.plantMorphology = ""
        self.attributes = ""
        self.status = ""
        self.stemColour = ""
        self.leafColour = ""
        self.flowerOrganisation = ""
        self.flowerColour = ""
        self.floweringStartTime = Month.month
        self.floweringEndTime = Month.month
        self.flowerDescription = ""
        self.seedOrganisation = ""
        self.seedColour = ""
        self.seedTime = nil
        self.seedDescription = ""
        self.plantDescription = ""
        self.userFieldNotes = ""
        self.chemCategory = ""
        self.resistances = ""
        self.chemMethod = ""
        self.chemOptimalTime = ""
        self.link = ""
    }
    
    //SERIALIZATION Constructor
    required init?(coder aDecoder: NSCoder) {
            self.botanicalName = aDecoder.decodeObject(forKey: "botanicalName") as? String ?? ""
            self.commonName = aDecoder.decodeObject(forKey: "commonName") as? String ?? ""
            self.indigenousLanguageName = aDecoder.decodeObject(forKey: "indigenousLanguageName") as? String ?? ""
        self.isNative = aDecoder.decodeObject(forKey: "isNative") as? Bool ?? false
            self.plantType = aDecoder.decodeObject(forKey: "plantType") as? String ?? ""
            self.plantFamily = aDecoder.decodeObject(forKey: "plantFamily") as? String ?? ""
            self.plantMorphology = aDecoder.decodeObject(forKey: "plantMorphology") as? String ?? ""
            self.attributes = aDecoder.decodeObject(forKey: "attributes") as? String ?? ""
            self.status = aDecoder.decodeObject(forKey: "status") as? String ?? ""
            self.stemColour = aDecoder.decodeObject(forKey: "stemColour") as? String ?? ""
            self.leafColour = aDecoder.decodeObject(forKey: "leafColour") as? String ?? ""
            self.flowerOrganisation = aDecoder.decodeObject(forKey: "flowerOrganisation") as? String ?? ""
            self.flowerColour = aDecoder.decodeObject(forKey: "flowerColour") as? String ?? ""
        self.floweringStartTime = aDecoder.decodeObject(forKey: "floweringStartTime") as? Month ?? Month.month
        self.floweringEndTime = aDecoder.decodeObject(forKey: "floweringEndTime") as? Month ?? Month.month
            self.flowerDescription = aDecoder.decodeObject(forKey: "flowerDescription") as? String ?? ""
            self.seedOrganisation = aDecoder.decodeObject(forKey: "seedOrganisation") as? String ?? ""
            self.seedColour = aDecoder.decodeObject(forKey: "seedColour") as? String ?? ""
            self.seedTime = aDecoder.decodeObject(forKey: "seedTime") as? DateInterval ?? nil
            self.seedDescription = aDecoder.decodeObject(forKey: "seedDescription") as? String ?? ""
            self.plantDescription = aDecoder.decodeObject(forKey: "plantDescription") as? String ?? ""
            self.userFieldNotes = aDecoder.decodeObject(forKey: "userFieldNotes") as? String ?? ""
            self.chemCategory = aDecoder.decodeObject(forKey: "chemCategory") as? String ?? ""
            self.resistances = aDecoder.decodeObject(forKey: "resistances") as? String ?? ""
            self.chemMethod = aDecoder.decodeObject(forKey: "chemMethod") as? String ?? ""
            self.chemOptimalTime = aDecoder.decodeObject(forKey: "chemOptimalTime") as? String ?? ""
            self.link = aDecoder.decodeObject(forKey: "link") as? String ?? ""
        }
        
    //SERIALIZATION Encoder
        func encode(with aCoder: NSCoder) {
            aCoder.encode(botanicalName, forKey: "botanicalName")
            aCoder.encode(commonName, forKey: "commonName")
            aCoder.encode(indigenousLanguageName, forKey: "indigenousLanguageName")
            aCoder.encode(isNative, forKey: "isNative")
            aCoder.encode(plantType, forKey: "plantType")
            aCoder.encode(plantFamily, forKey: "plantFamily")
            aCoder.encode(plantMorphology, forKey: "plantMorphology")
            aCoder.encode(attributes, forKey: "attributes")
            aCoder.encode(status, forKey: "status")
            aCoder.encode(stemColour, forKey: "stemColour")
            aCoder.encode(leafColour, forKey: "leafColour")
            aCoder.encode(flowerOrganisation, forKey: "flowerOrganisation")
            aCoder.encode(flowerColour, forKey: "flowerColour")
            aCoder.encode(floweringStartTime, forKey: "floweringStartTime")
            aCoder.encode(floweringEndTime, forKey: "floweringEndTime")
            aCoder.encode(flowerDescription, forKey: "flowerDescription")
            aCoder.encode(seedOrganisation, forKey: "seedOrganisation")
            aCoder.encode(seedColour, forKey: "seedColour")
            aCoder.encode(seedTime, forKey: "seedTime")
            aCoder.encode(seedDescription, forKey: "seedDescription")
            aCoder.encode(plantDescription, forKey: "plantDescription")
            aCoder.encode(userFieldNotes, forKey: "userFieldNotes")
            aCoder.encode(chemCategory, forKey: "chemCategory")
            aCoder.encode(resistances, forKey: "resistances")
            aCoder.encode(chemMethod, forKey: "chemMethod")
            aCoder.encode(chemOptimalTime, forKey: "chemOptimalTime")
            aCoder.encode(link, forKey: "link")
        }
    }


