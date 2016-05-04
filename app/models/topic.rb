class Topic < ActiveRecord::Base
  ratyrate_rateable 'overrall', 'gameplay', 'immersion', 'art', 'replayability'
end
