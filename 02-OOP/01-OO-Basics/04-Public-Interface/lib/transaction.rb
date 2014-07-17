# Optional
class Transaction
  def initialize(amount)
    @amount = amount
    @date = Date.today
    # Initialize amount and date of transaction
  end

  def to_s
    if @amount<0
      print "Vous avez retiré #{-@amount} le #{@date.strftime}"
    else
      print "Vous avez déposé #{@amount} le #{@date.strftime}"
    end
    # Nicely print transaction infos using Time#strftime.
  end
end
