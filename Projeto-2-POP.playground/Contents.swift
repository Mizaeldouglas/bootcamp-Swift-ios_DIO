import UIKit

protocol PaymentMetthod {
	func makePayment(amount: Double)
}


struct CreditCard: PaymentMetthod {
	func makePayment(amount: Double) {
		print("Pagamento de \(amount) realizado com cartão de crédito.")
	}
}


struct PayPal:PaymentMetthod {
	func makePayment(amount: Double) {
		print("Pagamento de \(amount) realizado com PayPal.")
	}
}


func processpayment(using method: PaymentMetthod, amount: Double) {
	method.makePayment(amount: amount)
}


let creditCard = CreditCard()
let payPal =  PayPal()

processpayment(using: creditCard, amount: 100.0)
processpayment(using: payPal, amount: 25.50)
