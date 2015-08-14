class Referendum < ActiveRecord::Base
  has_many :voter_referendums
  has_many :questions
end
