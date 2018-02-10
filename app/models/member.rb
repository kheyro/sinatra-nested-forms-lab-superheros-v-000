class Member

  attr_accessor :name, :power, :bio

  MEMBERS = []

  def initialize(member)
    @name = member[:name]
    @power = member[:power]
    @bio = member[:bio]
    MEMBERS << self
  end

  def self.all
    MEMBERS
  end

end
