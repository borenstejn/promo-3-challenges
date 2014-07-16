class OrangeTree

  attr_reader :age, :height, :fruits
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @age = 0
    @height = 0
    @dead = false
    @fruits = 0
  end

  def one_year_passes!
    @age+=1

    if @height<10
      @height+=1
    end

    if @age >= 50 && rand(101-@age) == 0
      @dead = true
    end

    if @age == 100
      @dead = true
    end

    if @age > 5 && @age <= 10
      @fruits = 100
    elsif @age > 10 && @age <= 15
      @fruits = 200
    else @fruits = 0
    end

  end

  def dead?
    @dead
  end


  def pick_a_fruit!
    @fruits-=1
  end

end


