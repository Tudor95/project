class Station < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => ["300x300>", :png], :thumb => ["100x100#", :png]}
end
