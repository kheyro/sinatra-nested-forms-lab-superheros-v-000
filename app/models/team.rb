class Team
  attr_accessor :name, :motto

  def initialize(team)
    @name = team[:name]
    @motto = team[:motto]
  end
end
