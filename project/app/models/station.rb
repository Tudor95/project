class Station < ActiveRecord::Base
  attr_accesible :model
  validates_presence_of :model
end
