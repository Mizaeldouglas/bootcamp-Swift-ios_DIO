import UIKit

enum Rank: Int {
	case ace = 1
	case two , tree, four, five, six, seven, eight, nini , ten
	case jack, queen, king
	
	
	func sempleDescription() -> String {
		switch self {
		case .ace:
			return "ace"
		case .jack:
			return "jack"
		case .queen:
			return "queen"
		case .king:
			return "king"
		default:
			return String(self.rawValue)
		}
	}
}

let ace = Rank.ace
ace.rawValue


if let convertRandk = Rank(rawValue: 3) {
	let treeenDescription = convertRandk.sempleDescription()
	
}

enum Suit {
	case spades, hearts, diamonds, clubs
	
	func simpleDescription() -> String {
		switch self{
		case .spades:
			return "spades"
		case .hearts:
			return "hearts"
		case .diamonds:
			return "diamonds"
		case .clubs:
			return "clubs"
		}
	}
}

let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()


enum ServerResponse {
	case result(String, String)
	case failure(String)

}
let sucess = ServerResponse.result("6:00 am", "8:09 pm")
let faulure = ServerResponse.failure("Fora do intervalo")

switch sucess {
case let .result(sunrise, sunset):
	print("O nasecer do sol é \(sunrise) e o pôr do sol é \(sunset)")
case let .failure(message):
	print("falha ... \(message)")
}


// Strucs

struct Card {
	var rank :Rank
	var suit: Suit
	
	func simpleDescription() -> String {
		return "O \(rank.sempleDescription()) do \(suit.simpleDescription())"
	}
}
let treeOfSpades = Card(rank: .tree, suit: .spades)
let TreeOfSpadesDescription = treeOfSpades.simpleDescription()


