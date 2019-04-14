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

# def execute transaction
#   if valid? = true
    
# end
  
  
end
