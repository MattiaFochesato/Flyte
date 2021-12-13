//
//  TopDestinationCardView.swift
//  Flyte
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

struct TopDestination: Hashable {
    
    let image: String
    let placeName: String
    let placePosition: String
    let startingPrice: String
    
    
    static let destinationsList = [
        TopDestination(image: "Naples", placeName: "Naples", placePosition: "Italy", startingPrice: "12,99€"),
        TopDestination(image: "London", placeName: "London", placePosition: "England", startingPrice: "22,99€"),
        TopDestination(image: "SantElmo", placeName: "Naples", placePosition: "Italy", startingPrice: "12,99€"),
    ]
}

struct TopDestinationCardView: View {
    let destination: TopDestination
    
    var body: some View {
        HStack(spacing: 0) {
            Image(destination.image)
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .cornerRadius(14)
                //.scaledToFill()
                //.shadow(color: .black, radius: 10, x: 0, y: -4)
                .padding(6)
                
                VStack(alignment: .leading) {
                    Text(destination.placeName)
                        .font(.title3).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(destination.placePosition)
                        .foregroundColor(Color("SecondaryTextColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(destination.startingPrice)
                        .bold()
                        .foregroundColor(Color("AccentColor"))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding(.leading, 4)
            Image(systemName: "chevron.forward")
                .padding(.trailing, 4)
        }
        .frame(width: 200, height: 70)
        .background(Color("TravelPlaceCardColor"))
        .cornerRadius(16)
        .shadow(color: Color("ShadowColor"), radius: 6, x: 6, y: 6)
        
    }
}

struct TopDestinationCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TopDestinationCardView(destination: TopDestination.destinationsList.first!)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Light preview")
            
            TopDestinationCardView(destination: TopDestination.destinationsList.first!)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark preview")
        }
    }
}
