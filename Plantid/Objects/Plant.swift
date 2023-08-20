//
//  Plant.swift
//  Plantid
//
//  Created by Ryan Walton on 20/8/2023.
//

import Foundation

class Plant: NSObject, NSCoding {
    var botanicalName: String
    var commonName: String
    var indigenousLanguageName: String
    var plantType: String
    var plantFamily: String
    var plantMorphology: String
    var attributes: String
    var status: String
    var stemColour: String
    var leafColour: String
    var flowerOrganisation: String
    var flowerColour: String
    var floweringTime: DateInterval?
    var flowerDescription: String
    var seedOrganisation: String
    var seedColour: String
    var seedTime: DateInterval?
    var seedDescription: String
    var plantDescription: String
    var userFieldNotes: String
    var chemCategory: String
    var resistances: String
    var chemMethod: String
    var chemOptimalTime: String
    
    init(botanicalName: String, commonName: String, indigenousLanguageName: String, plantType: String, plantFamily: String, plantMorphology: String, attributes: String, status: String, stemColour: String, leafColour: String, flowerOrganisation: String, flowerColour: String, floweringTime: DateInterval, flowerDescription: String, seedOrganisation: String, seedColour: String, seedTime: DateInterval, seedDescription: String, plantDescription: String, userFieldNotes: String, chemCategory: String, resistances: String, chemMethod: String, chemOptimalTime: String) {
        self.botanicalName = botanicalName
        self.commonName = commonName
        self.indigenousLanguageName = indigenousLanguageName
        self.plantType = plantType
        self.plantFamily = plantFamily
        self.plantMorphology = plantMorphology
        self.attributes = attributes
        self.status = status
        self.stemColour = stemColour
        self.leafColour = leafColour
        self.flowerOrganisation = flowerOrganisation
        self.flowerColour = flowerColour
        self.floweringTime = floweringTime
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
    }
    
    required init?(coder aDecoder: NSCoder) {
            self.botanicalName = aDecoder.decodeObject(forKey: "botanicalName") as? String ?? ""
            self.commonName = aDecoder.decodeObject(forKey: "commonName") as? String ?? ""
            self.indigenousLanguageName = aDecoder.decodeObject(forKey: "indigenousLanguageName") as? String ?? ""
            self.plantType = aDecoder.decodeObject(forKey: "plantType") as? String ?? ""
            self.plantFamily = aDecoder.decodeObject(forKey: "plantFamily") as? String ?? ""
            self.plantMorphology = aDecoder.decodeObject(forKey: "plantMorphology") as? String ?? ""
            self.attributes = aDecoder.decodeObject(forKey: "attributes") as? String ?? ""
            self.status = aDecoder.decodeObject(forKey: "status") as? String ?? ""
            self.stemColour = aDecoder.decodeObject(forKey: "stemColour") as? String ?? ""
            self.leafColour = aDecoder.decodeObject(forKey: "leafColour") as? String ?? ""
            self.flowerOrganisation = aDecoder.decodeObject(forKey: "flowerOrganisation") as? String ?? ""
            self.flowerColour = aDecoder.decodeObject(forKey: "flowerColour") as? String ?? ""
            self.floweringTime = aDecoder.decodeObject(forKey: "floweringTime") as? DateInterval ?? nil
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
        }

        func encode(with aCoder: NSCoder) {
            aCoder.encode(botanicalName, forKey: "botanicalName")
            aCoder.encode(commonName, forKey: "commonName")
            aCoder.encode(indigenousLanguageName, forKey: "indigenousLanguageName")
            aCoder.encode(plantType, forKey: "plantType")
            aCoder.encode(plantFamily, forKey: "plantFamily")
            aCoder.encode(plantMorphology, forKey: "plantMorphology")
            aCoder.encode(attributes, forKey: "attributes")
            aCoder.encode(status, forKey: "status")
            aCoder.encode(stemColour, forKey: "stemColour")
            aCoder.encode(leafColour, forKey: "leafColour")
            aCoder.encode(flowerOrganisation, forKey: "flowerOrganisation")
            aCoder.encode(flowerColour, forKey: "flowerColour")
            aCoder.encode(floweringTime, forKey: "floweringTime")
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
        }
    }


