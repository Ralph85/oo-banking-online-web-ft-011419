class Transfer

  attr_reader :sender, :receiver
  attr_accessor :status, :amount

  @@all = []
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount

    @@all << self
  end

  def valid?
    sender.valid? && receiver.valid?
  end

  def execute_transaction
    if status == "pending" && sender.balance > amount && valid?
      @sender.balance -= amount
      @receiver.balance += amount
      @status = "complete"
      #  check if both accounts are valid then 
      #  decrease the senders balance by the amount
      #  increase the recievers balance the aMOUNT
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer 
    if @status == "complete"
      @sender.balance += amount
      @receiver.balance -= amount
      @status = "reversed"
    end
  end
end # End of Class
