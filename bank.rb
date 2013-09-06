class BankAccount
	def initialize
		@balance = 0.00
		puts "What is the first name on this account?"
		@first_name = gets.chomp
		puts "What is the last name on this account?"
		@last_name = gets.chomp
		puts "Please deposit money into this account."
		@available_credit = 10000.00
		@credit_balance = 0.00
	end

	def deposit(amount)
		if amount > 0
			@balance = @balance + amount
		else
			puts "Please enter a positive number."
		end

	end

	def withdraw(amount)
		if amount > 0
			if @balance < amount
				puts "You are attempting to withdraw more funds than you have available. You will be charged a $10 fee."
				@balance = @balance - 10.00
				puts "Remaining balance: #{@balance}"
			else
				@balance = @balance - amount
				puts "Remaining balance: #{@balance}"
			end
		else
			puts "Please enter a positive number."
		end

	end
	
	def use_credit_card
		puts "What is the purchase amount you would like to put on your credit card?"
		purchase = gets.chomp.to_f
		if purchase > @available_credit 
			puts "Decline. Credit available: #{@available_credit}"
		else
			@credit_balance = @credit_balance + purchase
			@available_credit = @available_credit - purchase
			puts "Your credit debt is now #{@credit_balance} and your available credit is #{@available_credit}."
		end
	end
	def pay_credit_card_bill
		puts "How much would you like to pay to your credit card bill?"
		bill_pay = gets.chomp.to_f
		if bill_pay < @balance && bill_pay > 0
			@balance = @balance - bill_pay
			@credit_balance = @credit_balance - bill_pay
			@available_credit = @available_credit + bill_pay
			
		elsif bill_pay < 0
			puts "Please enter a positive amount."
		else
			puts "You do not have #{bill_pay} funds available in your account."
		end
	end
	def balance_check
		puts "This account belongs to #{@first_name} #{@last_name} and has $#{@balance} available."
		puts "You have a balance of $#{@credit_balance} on your credit card and $#{@available_credit} available credit."
	end



end
