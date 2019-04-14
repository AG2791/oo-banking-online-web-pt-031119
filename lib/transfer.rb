class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,receiver,amount) 
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end
  
  def valid?
    sender.valid? && receiver.valid? && send
    
  end

def execute transaction
    if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      reject_transfer
    end
 end
 
 def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      receiver.balance -= amount
      sender.balance += amount
      self.status = "reversed"
    else
      reject_transfer
    end
  end
  
  
  
  
end
