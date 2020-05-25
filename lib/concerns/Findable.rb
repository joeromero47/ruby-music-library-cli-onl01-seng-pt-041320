module Concerns::Findable 
  attr_accessor :name
  
  def find_by_name(name)
    all.find{ |x| x.name == name}
  end 
  
  def find_or_create_by_name(name)
    find_by_name(name) || self.create(name)
  end 
end 