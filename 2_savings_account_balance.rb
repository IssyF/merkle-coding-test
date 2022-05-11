def balance(opening_sum, interest_rate, tax_free_limit, tax_rate, num_months)
  current_balance = opening_sum
  # Repeat the monthly adjustments num_months times
  num_months.times do
    # Calculate the monthly interest (as a float)
    monthly_interest = current_balance * interest_rate.fdiv(100)
    # Calculate the monthly tax (as a float)
    if current_balance > tax_free_limit
      monthly_tax = (current_balance - tax_free_limit) * tax_rate.fdiv(100)
    else
      monthly_tax = 0
    end
    # Reassign the current balance at the end of the month i.e. adding on interest and deducting tax
    current_balance = current_balance + monthly_interest - monthly_tax
  end
  return current_balance
end
