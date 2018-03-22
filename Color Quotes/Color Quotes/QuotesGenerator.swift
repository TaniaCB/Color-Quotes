//
//  GeneradorCitas.swift
//  Color Quotes
//
//  Created by Tania on 21/2/18.
//  Copyright © 2018 TaniaCB. All rights reserved.
//

import GameKit

struct QuotesGenerator{
    let quotes = [
        Quote(text: "Sé el cambio que quieres ver en el mundo", author: "M.Gandhi"),
        Quote(text: "Stay hungry stay foolish", author: "Steve Jobs"),
        Quote(text: "Aquel que no se equivoca es el que nunca hace nada", author:"Goethe"),
        Quote(text: "Be yourself, everyone else is already taken", author: "Oscar Wilde"),
        Quote(text: "Don't cry because it's over, smile because it happened", author: "Dr. Seuss"),
        Quote(text: "So many books, so little time", author: "Frank Zappa"),
        Quote(text: "In three words I can sum up everything I've learned about life: it goes on", author: "Robert Frost"),
        Quote(text: "A friend is someone who knows all about you and still loves you", author: "Elbert Hubbard"),
        Quote(text: "Todos somos aficionados. La vida es tan corta que no da para más", author: "Charles Chaplin"),
        Quote(text: "La vida es una obra teatral que no importa cuánto haya durado, sino lo bien que haya sido representada", author: "Séneca"),
        Quote(text: "Se necesitan dos años para aprender a hablar, y sesenta para aprender a callar", author: "Ernest Hemingway"),
        Quote(text: "El éxito tiene muchos padres, el fracaso es huérfano", author: "John F. Kennedy")
    ]
        
    
    func randomQuoteGenerate() -> Quote {
        let numberRand = GKRandomSource.sharedRandom().nextInt(upperBound: quotes.count)
        
        return quotes[numberRand]
    }
}
