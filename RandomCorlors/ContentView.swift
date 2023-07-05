//
//  ContentView.swift
//  RandomCorlors
//
//  Created by Nam Nguyen on 05/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        StoryBoardView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StoryBoardView: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let controller = storyboard.instantiateViewController(withIdentifier: "Home")
        let navigationController = UINavigationController(rootViewController: controller)

        return navigationController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
