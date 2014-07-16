class Wine
  def initialize(year, color, cepage)
    @year = year
    @color = color
    @cepage = cepage
    @sold = false
  end

  def selling
    @sold = true
  end

end