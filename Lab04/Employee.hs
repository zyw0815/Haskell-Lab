data Employee = FullTime String Float | Contractor String Float

monthlyPay :: Employee -> Float
monthlyPay (FullTime _ salary) = salary / 12
monthlyPay (Contractor _ rate) = rate * 160