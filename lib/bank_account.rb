class Account

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
     @name = "Avi"
     @balance = 1000
     @status = 'open'
   end

   def deposit(amount)
     @balance += amount
   end

   def display_balance
     "Your Balance is $#{self.balance}."
   end

   def valid?
     self.balance > 0 && self.status == "open" ? true : false
   end

   def close_account
     self.status = "closed"
   end
 end
