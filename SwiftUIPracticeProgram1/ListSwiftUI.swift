//
//  ListSwiftUI.swift
//  SwiftUIPracticeProgram1
//
//  Created by Anjali Sikarwar on 13/07/25.
//

import SwiftUI

struct ListSwiftUI: View {
    
    @State private var fruits: [String] = ["Banana", "Apple", "Orange", "Papaya", "Pineaapple", "Mango"]
    @State private var vaggies: [String] = [
        "Tommato", "Bins", "Onion", "Coliflower", "Carrot"
    ]
    
    var body: some View {
        NavigationStack {
            List{
                Section{
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit)
                            .font(.caption)
                            .foregroundStyle(Color.black)
                            .background(Color.yellow)
//                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    HStack {
                        Text("Fruit")
                        Image(systemName: "flame")
                    }
                    .font(.headline)
                    .bold()
                    .foregroundStyle(Color.orange)
                }
                
                Section("Vaggies") {
                    ForEach(vaggies, id: \.self) { vaggies in
                        Text(vaggies )
                    }
                }
            }
//            .foregroundStyle(Color.green)
//            .listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                }
            }
        }
        .tint(.red)
    }
    
    var addButton: some View {
        Button("Add") {
            add()
        }
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(source: IndexSet, destination: Int) {
        fruits.move(fromOffsets: source, toOffset: destination)
    }
    
    func add() {
        fruits.append("Kivi")
    }
}

#Preview {
    ListSwiftUI()
}
