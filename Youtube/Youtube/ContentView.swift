//
//  ContentView.swift
//  Youtube
//
//  Created by macOS User on 28/01/21.
//

import SwiftUI
 
struct ContentView: View {
    var body: some View {
        ZStack{
            TabView{
                Home()
                    .tabItem{
                        Image(systemName: "house.fill")
                        Text("Beranda")
                    }
                Home()
                    .tabItem{
                        Image(systemName: "paperplane.fill")
                        Text("Explore")
 
                    }
                Home()
                    .tabItem{
                        Image(systemName: "tray.fill")
                        Text("subcription")
 
                    }
 
            }
 
        }
    }
}
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
struct Home: View {
    var body: some View {
        NavigationView{
            Kontent()
                .navigationBarItems(
                    leading: HStack{
                        Button(action: {print("Hello Button")}){
                            Image("youtube_logo")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 90, height: 20)
                        }
                    },
                    trailing:
                        HStack(spacing:20){
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "tray")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "video.fill")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color.black)
                            }
                            Button(action:{print("Hello Button")}){
                                NavigationLink(destination: SettingView()){
                                    Image("profile")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .clipShape(Circle())
                                }
                            }
                        }
                )
                .navigationBarTitle("",displayMode:.inline)
 
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
 
struct Kontent: View{
    var body: some View{
        List{
 
            CellKontent (imageKontent: "kokbisa_bola", profileKontent: "kok_bisa", judul: "Mengapa bola bisa Di tendang", deskripsi: "ini adalah deskripsi video kita - 300x di tonton - 9jam yang lalu", durasi: "15:00")
 
            CellKontent (imageKontent: "kokbisa_kimia", profileKontent: "kok_bisa", judul: "Apa itu ilmu 'Kimia' sebenarnya? Apa gunanya di hidup kita?", deskripsi: "ini adalah deskripsi video kita - 300x Di tonton - 9jam yang lalu", durasi: "03:00")
 
            CellKontent (imageKontent: "kokbisa_kesehatan", profileKontent: "kok_bisa", judul: "Apa itu ilmu 'Kesehatan' / 'Kedokteran' sebenarnya?", deskripsi: "ini adalah deskripsi video kita - 300x Di tonton - 9jam yang lalu", durasi: "04:05")
 
        }
    }
}
 
//Komponen untuk cell
struct CellKontent: View {
 
    var imageKontent: String
    var profileKontent: String
    var judul: String
    var deskripsi: String
    var durasi: String
 
    var body: some View {
        //Konten 1
        VStack{
            ZStack (alignment: .bottomTrailing){
                Image(imageKontent)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                Text(durasi)
                    .padding()
                    .foregroundColor(Color.white)
                    .font(.caption)
                    .background(Color.black)
                    .cornerRadius(5)
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
 
            HStack(spacing: 20){
                Image(profileKontent)
                    .resizable()
                    .frame(width: 30, height:30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack{
                    Text(judul)
                        .font(.headline)
                    HStack{
                        Text(deskripsi)
                            .font(.caption)
                    }
                }
                Spacer()
                Image(systemName: "list.bullet")
 
            }
 
        }
    }
}
