class Cell
  attr_reader :coordinate
  attr_accessor :ship

  def initialize(coordinate)
    @coordinate = coordinate
    @ship = ship
    @fired_upon = false
  end

  def empty?
    if @ship == nil
      true
    else @ship == ship
      false
    end
  end

  def place_ship(new_ship)
    @ship = new_ship
  end

  def fired_upon?
    @fired_upon
  end

  def fire_upon
    @ship.hit if empty? != true
    @fired_upon = true
  end

  def render(show = false)
    if ship && ship.health <= 0
      "X"
    elsif empty? && @fired_upon
      "M"
    elsif ship && @fired_upon
      "H"
    elsif ship && show
      "S"
    else
      "."
    end
  end
end
