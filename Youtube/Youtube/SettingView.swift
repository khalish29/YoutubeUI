//
//  SettingView.swift
//  Youtube
//
//  Created by macOS User on 01/02/21.
//

import  SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            Form{
                //Setting Foto Profile
                Section(){
                    HStack{
                        Image("profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        //name dan stasus
                        VStack(alignment: .leading){
                            Text("Khalish Wiriadinata")
                                .font(.headline)
                            Text("Ui Designer")
                                .font(.caption)
                        }
                    }
                    .padding(.top,10)
                    .padding(.bottom,10)
                }
                
                //Section pengaturan umum
                Section(header: Text("Pengaturan Umum")){
                    HStack(spacing: 20){
                        Image(systemName: "star.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Video Favorite")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "tv")
                            .frame(width: 35, height: 35)
                            .background(Color.green)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Channel")
                    }

                }
                
                //Section pengaturan Akun
                Section(header: Text("Pengaturan Akun")){
                    HStack(spacing: 20){
                        Image(systemName: "heart")
                            .frame(width: 35, height: 35)
                            .background(Color.red)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Like Video")
                    }
                    
                    HStack(spacing: 20){
                        Image(systemName: "lock.fill")
                            .frame(width: 35, height: 35)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                        Text("Channel")
                    }

                }
            }.navigationBarTitle("Setting")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
