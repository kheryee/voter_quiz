class Referendum < ActiveRecord::Base
  has_many :voter_referendums
end
