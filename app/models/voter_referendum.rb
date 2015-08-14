class VoterReferendum < ActiveRecord::Base
  belongs_to :voter
  belongs_to :referendum
end
