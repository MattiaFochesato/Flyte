//
//  FlightsListView.swift
//  Flyte
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

struct FlightsListView: View {
    var body: some View {
        ScrollView {
            
            FlightTicketView(ticketType: .ticket)
            
        }
    }
}

struct FlightsListView_Previews: PreviewProvider {
    static var previews: some View {
        FlightsListView()
    }
}
