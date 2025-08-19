import SwiftUI

struct HomeView: View {
	var body: some View {
		VStack {
			// Werbebanner (Cover)
			Image("IMG_4770")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(maxWidth: .infinity)
			
			Spacer()
			
			// Telegram-Button
			Button(action: {
				// Öffnet den Telegram-Kanal
				if let url = URL(string: "https://t.me/Truebot10_bot") {
					UIApplication.shared.open(url)
				}
			}) {
				Text("Join Now")
					.font(.headline)
					.foregroundColor(.white)
					.padding()
					.frame(maxWidth: .infinity)
					.background(Color.blue)
					.cornerRadius(10)
				}
			.padding()
		}
		.navigationTitle("Home")
	}
}