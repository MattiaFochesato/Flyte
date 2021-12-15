//
//  FlightsListView.swift
//  Flyte
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

struct FlightsListView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                FlightTicketView(ticketType: .ticket)
                    .padding([.leading, .trailing], 12)
                    .padding([.bottom], 20)
                    .padding(.top, 8)
                
                FlightTicketView(ticketType: .booking)
                    .padding([.leading, .trailing], 12)
                    .padding([.bottom], 20)
                    .padding(.top, 8)
            }
            .navigationTitle("Your Flights")
        }
    }
}

struct FlightsListView_Previews: PreviewProvider {
    static var previews: some View {
        FlightsListView()
    }
}
