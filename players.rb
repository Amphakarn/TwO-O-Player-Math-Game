class Players
  attr_accessor :name, :lives

  LIVE = 3

  def initialize(name)
    @name = name
    @lives = LIVE
  end

  def deduct_live
    @lives -= 1
  end
end
  