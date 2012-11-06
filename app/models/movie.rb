class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title

  belongs_to :director
  
end

# m = Movie.first
# m.director

# l = Movie.last
# l.director