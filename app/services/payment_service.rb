class PaymentService
  include Singleton

  def process_payment(payment)
    customer = Stripe::Customer.create email: payment.email, card: payment.token
    Stripe::Charge.create customer: customer.id, amount: 1000, description: 'Premium', currency: 'usd'
  end
end
