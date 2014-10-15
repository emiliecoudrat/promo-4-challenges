# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  # Contract for the BankAccount class

  #:iban, :transactions, :to_s

  attr_reader :name, :iban, :position, :transactions, :to_s

  # - you can print partial account infos --ok
  # - you can print transactions only with a password --- ok
  # - you can withdraw or deposit money -- public
  # - You can see the balance of the account (through the position variable) -- public

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(- amount)
    "You've just withdrawn #{amount} euros"
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(+ amount)
    "You've just deposit #{amount} euros"
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
    if args[:password].nil?
      "no password given"
    elsif args[:password] == @password
      @transactions.to_s
    else
      "wrong password"
    end
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    "#{@iban[0..3]}**************#{@iban[-3..-1]}"
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account
    "Owner: #{name} \n IBAN: #{iban} \n Current amount:#{position}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
    @transactions << amount
    @position += amount
  end
end

# new_client = BankAccount.new("Emilie", "FR76890839089089089890890", 200, "chat")