//
//  PlanNextTripCardView.swift
//  Flyte
//
//  Created by Mattia Fochesato on 13/12/21.
//

import SwiftUI

struct PlanNextTripCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            PlanNextTripItem(icon: "person.2.fill", text: "1 Passenger")
                .padding(.trailing, 8)
            
            HStack {
                PlanNextTripItem(icon: "airplane.departure", text: "Naples")
                Spacer()
                PlanNextTripItem(icon: "airplane.arrival", text: "Verona")
            }.padding(.trailing, 8)
            
            HStack {
                PlanNextTripItem(icon: "calendar", text: "10 Dec")
                Spacer()
                PlanNextTripItem(icon: "calendar", text: "13 Dec")
            }.padding(.trailing, 8)
            
            Button(action: {
                
            }) {
                Image(systemName: "bag.fill")
                Text("Search Flights")
            }.foregroundColor(.white)
                .font(.system(.headline).bold())
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding(10)
                .background(Color.accentColor)
                .cornerRadius(16)
                .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                .padding([.trailing, .leading], 8)
        }
        //.frame(height: 200)
        .padding([.bottom, .top], 10)
        .background(Color("TravelPlaceCardColor"))
        .cornerRadius(16)
        .shadow(color: Color("ShadowColor"), radius: 6, x: 6, y: 6)
        
    }
}

struct PlanNextTripItem: View {
    let icon: String
    let text: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(Color("SecondaryTextColor"))
            Text(text)
                .minimumScaleFactor(0.8)
                .lineLimit(1)
            Spacer()
            Image(systemName: "chevron.down")
                .font(.system(.body).bold())
                .foregroundColor(Color.accentColor)
        }.padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 14)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color("InputCornerColor"), lineWidth: 2))
            .background(Color("InputBackgroundColor"))
            .cornerRadius(16)
            .padding([.leading], 8)
    }
}

struct PlanNextTripCardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlanNextTripCardView()
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .frame(width: 350)
                .previewDisplayName("Light preview")
            
            PlanNextTripCardView()
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .frame(width: 350)
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark preview")
        }
    }
}
