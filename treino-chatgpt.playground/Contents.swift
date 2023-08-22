import UIKit
import Foundation

print("Olá Mundo!!")

// parametros
func saudacao(nome: String){
	print("Olá, \(nome) é um prazer te-lo aqui!")
}

saudacao(nome: "Mizael")
saudacao(nome: "Carol")


func somaMedia(a: Int,b: Int, c: Int) -> Double {
	let soma = Double(a + b + c)
	
	return soma / 3
}

let media = somaMedia(a: 8, b: 10, c: 5)


print("A Média é : \(media)")

print("")

// Jogo de Advinhação

print("")


func jogoDeAdivinhacao(){
	let numeroAleatorio = Int(arc4random_uniform(10)) + 1
	var tentativas = 0
	
	print("Bem-Vindo ao Jogo de adivinhação!")
	
	while true {
		print("tente adivinhar o número entre 1 e 10")
		
		if let palpite = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines), let palpiteInt = Int(palpite) {
			tentativas += 1
			
			if palpiteInt < numeroAleatorio {
				print("Tente um Número mais alto")
			} else if palpiteInt > numeroAleatorio {
				print("Tente um Número mais baixo")
			} else {
				print("Parabéns! Você acertou o número em \(tentativas) tentativas.")
				break
			}
		} else {
			print("Entrada inválida. Tente novamente.")
		}
	}
}

jogoDeAdivinhacao()

,,,,,,,



    n
