class Question < ActiveRecord::Base
  has_many :votes
  belongs_to :referendum
end
