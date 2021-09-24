currencies = ["EUR", "USD", "LMP", "CLP", "BIT"]
amounts = [10000,20000,30000,40000]
fees = [1000,2000,3000,4000,5000]

10.times do
  w = Withdrawal.new(currency: currencies.sample, amount: amounts.sample, fee: fees.sample)
  w.save!
end
