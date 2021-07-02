    //
    //  AppView.swift
    //  fruits
    //
    //  Created by Taher fawaz on 27/04/2021.
    //
    
    import SwiftUI
    
    struct AppView: View {
        var body: some View {
            
            TabView{
                AvocadosView()
                    .tabItem
                    {
                        Image("tab3b")
                            
                        Text("Avocados")
                    }
                
                ContentView()
                    .tabItem
                    {
                        Image("tab2b")
                        Text("Recipes")
                    }
                
                RipeningStagesView()
                    .tabItem
                    {
                        Image("tab1b")
                        Text("Ripening")
                    }
                SettingsView()
                    .tabItem
                    {
                        Image("tab4b")
                        Text("Settings")
                    }
            }
            .edgesIgnoringSafeArea(.top)
            .accentColor(Color.primary)
            
            
        }
    }
    
    struct AppView_Previews: PreviewProvider {
        static var previews: some View {
            AppView()
        }
    }
