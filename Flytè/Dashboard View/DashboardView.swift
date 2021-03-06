//
//  ContentView.swift
//  Flytè
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    //#### TRAVEL PLACES SECTION
                    Text("Travel Places")
                        .font(.title2).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom, -6)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(TravelPlaceInfo.placesList, id: \.self) { place in
                                TravelPlaceCardView(travelPlace: place)
                                //.padding(.leading, 8)
                                    .padding(.trailing, 10)
                            }
                        }
                        .padding(.leading, 16)
                        .padding([.bottom], 20)
                        .padding(.top, 8)
                    }
                    //#### END TRAVEL PLACES SECTION ####
                    
                    //#### PLAN TRIP SECTION
                    Text("Plan Your Next Trip")
                        .font(.title2).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom, -6)
                    
                    PlanNextTripCardView()
                        .padding([.leading, .trailing], 12)
                        .padding([.bottom], 20)
                        .padding(.top, 8)
                    //#### END PLAN TRIP SECTION ####
                    
                    //#### TOP DESTINATIONS SECTION
                    Text("Top Destinations")
                        .font(.title2).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom, -6)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(TopDestination.destinationsList, id: \.self) { place in
                                TopDestinationCardView(destination: place)
                                //.padding(.leading, 8)
                                    .padding(.trailing, 10)
                            }
                        }
                        .padding(.leading, 16)
                        .padding([.bottom], 20)
                        .padding(.top, 8)
                    }
                    //#### END TOP DESTINATIONS SECTION ####
                    Text("Your Next Flight")
                        .font(.title2).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .padding(.bottom, -6)
                    FlightTicketView(ticketType: .dashboard)
                        .padding([.leading, .trailing], 12)
                        .padding([.bottom], 20)
                        .padding(.top, 8)
                }
            }.background(Color("MainScrollViewColor"))
                .navigationTitle("Dashboard")
                .toolbar {
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.badge")
                    }
                    
                }
        }
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
