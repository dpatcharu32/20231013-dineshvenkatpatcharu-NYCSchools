//
//  SchoolListItem.swift
//  20231013-dineshvenkatpatcharu-NYCSchools
//
//  Created by Dinesh on 13/10/23.
//

import SwiftUI

struct SchoolListItem: View {
    let school: School
    
    var body: some View {
        Text(school.name)
            .lineLimit(1)
            .font(.system(.title3, design: .rounded))
            .foregroundColor(.publicNavy)
    }
}

struct SchoolListItem_Previews: PreviewProvider {
    static var previews: some View {
        SchoolListItem(school: School.sampleData[0])
    }
}
