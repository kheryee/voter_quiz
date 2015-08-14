class Voter < ActiveRecord::Base
  has_many :voter_referendums
end
