//: Playground - noun: a place where people can play

import UIKit

struct Card {
    var value: String
    var suit: String
    var numerical_value: Int
}

class Deck {
    let values = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
    let suits = ["Clubs", "Spades", "Hearts", "Diamonds"]
    var cards = [Card]()
    init() {
        buildDeck()
    }
    private func buildDeck(){
        for i in 0..<suits.count {
            for j in 0..<values.count {
                let newCard = Card(value: values[j], suit: suits[i], numerical_value: j)
                cards.append(newCard)
            }
        }
    }
    func reset() {
        cards=[Card]()
        buildDeck()
    }
    func draw() -> Card? {
        return cards.popLast()
    }
}

class Player {
    var hand = [Card]()
    
    func draw(fromDeck deck: Deck) {
        if let drawCard = deck.draw() {
            hand.append(drawCard)
        } else {
            print("Out of cards.")
        }
    }
    func discard(card: Card) -> Bool {
        for i in 0..<hand.count {
            if(card.suit == hand[i].suit && card.value == hand[i].value){
                hand.remove(at: i)
                return true
            }
        }
        return false
    }
}

let deck1 = Deck()
let player1 = Player()
print("Deck:")
for _ in 0..<10 {
    player1.draw(fromDeck: deck1)
}
player1.discard(card: player1.hand[4])
for i in 0..<player1.hand.count {
    print(player1.hand[i])
}
