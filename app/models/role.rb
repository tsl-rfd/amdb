class Role < ActiveRecord::Base
  attr_accessible :actor_id, :movie_id, :name
  
  belongs_to :movie
  belongs_to :actor
  
end
