class SuperHero
  attr_accessor :name,:power , :bio
  @@heroes = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = parans[:bio]
    @@heroes << self
  end 
  
  def self.all 
    @@heroes 
  end 
end 