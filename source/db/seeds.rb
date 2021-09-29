Customer.create(first_name: "johny", last_name: "flow")
Customer.create(first_name: "raj", last_name: "jamnis")
Customer.create(first_name: "andrew", last_name: "chung")
Customer.create(first_name: "mike", last_name: "smith")

# maybe we need status column?
# successful transactions:
5.times do
  Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:1)
end

3.times do
  Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:2)
end

Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:3)
Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:4)

#failed transactions
3.times do
  Charge.create(created: Time.now, paid: false, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:3)
end

2.times do
  Charge.create(created: Time.now, paid: false, amount: rand(100..9900), currency: "usd", refunded: false, customer_id:4)
end

#disputed transactions
3.times do
  Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: true, customer_id:1)
end

2.times do
  Charge.create(created: Time.now, paid: true, amount: rand(100..9900), currency: "usd", refunded: true, customer_id:2)
end