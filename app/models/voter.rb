class Voter < ActiveRecord::Base
  has_many :voter_referendums
  has_many :votes
end
