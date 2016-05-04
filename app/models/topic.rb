class Topic < ActiveRecord::Base
  ratyrate_rateable 'coolness', 'difficulty', 'name', 'art', 'replayability'
end
