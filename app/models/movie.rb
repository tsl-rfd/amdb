class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year

  belongs_to :director
  
end

# m = Movie.first
# m.director

# l = Movie.last
# l.director