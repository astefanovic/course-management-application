class Vote < ApplicationRecord
  belongs_to :coordinator
  belongs_to :course
end
