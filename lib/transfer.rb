class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender,reciever,amount) 
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
  
  def valid
     sender.valid? && reciever.valid?
 end
  
  
end
