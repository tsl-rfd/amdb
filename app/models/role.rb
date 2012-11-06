class Role < ActiveRecord::Base
  attr_accessible :actor_id, :movie_id, :name
end
