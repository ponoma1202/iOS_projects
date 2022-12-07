//
//  CardListViewModel.swift
//  Quzlet-ish
//
//  Created by Vasilisa Ponomarenko on 11/13/22.
//

import Foundation

import Combine

class CardListViewModel: ObservableObject {
    @Published var cardRepository = CardRepository()
    
    @Published var cardViewModels: [CardViewModel] = []
    
    private var cancellables: Set<AnyCancellable> = []

    func add(_ card: Card) {
    cardRepository.add(card)
    }
    

    init() {
      cardRepository.$cards.map { cards in
        cards.map(CardViewModel.init)
      }
      .assign(to: \.cardViewModels, on: self)
      .store(in: &cancellables)
    }
}
