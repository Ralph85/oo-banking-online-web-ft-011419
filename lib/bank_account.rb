class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    @@all = []

    def initialize(name, balance=1000, status='open')
        @name = name
        @balance = balance
        @status = status

        @@all << self
    end

    def deposit(dep_amount)
        @balance += dep_amount
    end

    def display_balance
        p "Your balance is $#{balance}."
    end

    def valid?
        @balance > 0 && @status == "open"
    end

    def close_account
        @status = "closed"
    end


end