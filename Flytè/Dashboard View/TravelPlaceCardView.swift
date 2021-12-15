//
//  TravelPlaceCardView.swift
//  Flytè
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

struct TravelPlaceInfo: Hashable {
    let image: String
    let placeName: String
    let placePosition: String
    
    
    static let placesList = [
        TravelPlaceInfo(image: "SantElmo", placeName: "Castel Sant'Elmo", placePosition: "Naples, Italy"),
        TravelPlaceInfo(image: "SantElmo", placeName: "Castel Sant'Elmo", placePosition: "Naples, Italy"),
        TravelPlaceInfo(image: "SantElmo", placeName: "Castel Sant'Elmo", placePosition: "Naples, Italy")
    ]
}

struct TravelPlaceCardView: View {
    let travelPlace: TravelPlaceInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(travelPlace.image)
                .resizable()
                //.aspectRatio(nil, contentMode: .fill)
                //.scaledToFill()
                .shadow(color: .black, radius: 10, x: 0, y: -4)
            Spacer()
            Text(travelPlace.placeName)
                .font(.title2).bold()
                .padding(.leading, 12)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("􀜈 \(travelPlace.placePosition)")
                .foregroundColor(Color("SecondaryTextColor"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 6)
                .padding(.leading, 12)
        }
        .frame(width: 300, height: 250)
        .background(Color("TravelPlaceCardColor"))
        .cornerRadius(16)
        .shadow(color: Color("ShadowColor"), radius: 6, x: 6, y: 6)
        
    }
}

struct TravelPlaceCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TravelPlaceCardView(travelPlace: TravelPlaceInfo.placesList.first!)
            
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Default preview")
            
            TravelPlaceCardView(travelPlace: TravelPlaceInfo.placesList.first!)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark preview")
        }
        
    }
}
