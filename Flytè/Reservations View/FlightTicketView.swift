//
//  FlightTicketView.swift
//  Flyte
//
//  Created by Mattia Fochesato on 10/12/21.
//

import SwiftUI

enum TicketType: Int {
    case ticket = 0
    case booking = 1
    case dashboard = 2
}

struct FlightTicketView: View {
    let ticketType: TicketType
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                //Starting Airport
                VStack(spacing: 0) {
                    Image(systemName: "airplane.departure")
                        .foregroundColor(Color("AccentColor"))
                    Text("19:55")
                    Text("NAP")
                        .font(.title)
                        .bold()
                        .padding([.top, .bottom], -6)
                    Text("Naples")
                        .bold()
                        .foregroundColor(.gray)
                }
                Spacer()
                
                //Center airplane + date of the flight
                VStack {
                    ZStack {
                        ZStack(alignment: .top) {
                            Color.clear
                            Text("10 Dec 2021")
                                .bold()
                                .padding(.top, 16)
                        }
                        Rectangle()
                            .foregroundColor(Color("AccentColor"))
                            .frame(height: 2)
                        
                        Circle()
                            .frame(width: 40, height: 40, alignment: .center)
                            .foregroundColor(Color("AccentColor"))
                        
                        Image(systemName: "airplane")
                            .foregroundColor(.white)
                    }
                    
                }
                
                Spacer()
                //Arriving Airport
                VStack(spacing: 0) {
                    Image(systemName: "airplane.arrival")
                        .foregroundColor(Color("AccentColor"))
                    Text("21:00")
                    Text("MXP")
                        .font(.title)
                        .bold()
                        .padding([.top, .bottom], -6)
                    Text("Milan")
                        .bold()
                        .foregroundColor(.gray)
                }
                
            }
            .padding([.leading, .trailing], 20)
            .padding(.top, 0)
            .frame(height: 120)
            
            Line()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .frame(height: 1)
                .foregroundColor(.gray)
               
            if ticketType == .ticket {
                HStack {
                    Spacer()
                    VStack {
                        Text("Gate")
                            .bold()
                            .foregroundColor(.gray)
                        Text("A12")
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    
                        VStack {
                            Text("Seat")
                                .bold()
                                .foregroundColor(.gray)
                            Text("12A")
                                .font(.title3)
                                .bold()
                        }
                        Spacer()
                    
                }.padding(.bottom, 1)
            }
            if ticketType != .dashboard {
                HStack {
                    Spacer()
                    VStack {
                        Text("Class")
                            .bold()
                            .foregroundColor(.gray)
                        Text("Economy")
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    VStack {
                        Text("Flight")
                            .bold()
                            .foregroundColor(.gray)
                        Text("FR1243")
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                }
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                    .foregroundColor(.gray)
            }
            if ticketType == .ticket {
                HStack {
                    Spacer()
                    Image("QR")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                    Spacer()
                }.frame(height: 140)
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                    .frame(height: 1)
                    .foregroundColor(.gray)
            }
            if ticketType == .ticket {
                HStack {
                    Spacer()
                    Button {
                        print("TODO")
                    } label: {
                        Image("AddToWallet")
                            .resizable()
                            .scaledToFit()
                    }.frame(minWidth: 0, maxWidth: .infinity)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)

                    Spacer()
                    
                    Button("Manage Ticket") {
                        
                    }.foregroundColor(.white)
                        .font(.system(.title3).bold())
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(16)
                        .background(Color.accentColor)
                        .cornerRadius(16)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                        
                    
                    Spacer()
                }
            }else if ticketType == .booking {
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "pencil")
                        Text("Manage Reservation")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                    }.foregroundColor(Color("AccentColor"))
                        .font(.system(.title3).bold())
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(4)
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                        
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "bag.fill")
                        Text("Check In")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                    }.foregroundColor(.white)
                        .font(.system(.title3).bold())
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(18)
                        .background(Color.accentColor)
                        .cornerRadius(16)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                    
                    
                    Spacer()
                }
            } else if ticketType == .dashboard {
                VStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "wallet.pass.fill")
                        Text("Open Boarding Pass")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                    }.foregroundColor(Color("AccentColor"))
                        .font(.system(.title3).bold())
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(16)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                        
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "pencil")
                        Text("Manage Reservation")
                            .lineLimit(2)
                            .multilineTextAlignment(.leading)
                    }.foregroundColor(.white)
                        .font(.system(.title3).bold())
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(10)
                        .background(Color.accentColor)
                        .cornerRadius(16)
                        .shadow(color: Color("ShadowColor"), radius: 6, x: 3, y: 3)
                    
                    
                    Spacer()
                }
                .padding([.trailing, .leading], 10)
                .padding(.top, 10)
            }
            
            Spacer()
        }
        .frame(height: (ticketType == .ticket ? 490 : (ticketType == .booking ? 275 : 270)))
        .background(Color("TravelPlaceCardColor"))
        .cornerRadius(16)
        .clipShape(PassShape())
        .shadow(color: Color("ShadowColor"), radius: 6, x: 6, y: 6)
        
    }
}

//Create the cutout in the shape of the ticket
struct PassShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x:0, y: 0))
            path.addLine(to: CGPoint(x:rect.width, y:0))
            path.addArc(center: CGPoint(x: rect.width, y: /*rect.height/4*/130), radius: /*rect.height/16*/25, startAngle: .degrees(270), endAngle: .degrees(90), clockwise: true )
            path.addLine(to: CGPoint(x:rect.width, y:rect.height))
            path.addLine(to: CGPoint(x:0, y:rect.height))
            path.addArc(center: CGPoint(x: 0, y: /*rect.height/4*/130), radius: /*rect.height/16*/25, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true )
        }
    }
}

//Line to create a dashed line
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct FlightTicketView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FlightTicketView(ticketType: .dashboard)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Light preview")
            
            FlightTicketView(ticketType: .booking)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .previewDisplayName("Light preview")
            
            FlightTicketView(ticketType: .ticket)
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
                .environment(\.colorScheme, .dark)
                .previewDisplayName("Dark preview")
        }
    }
}
