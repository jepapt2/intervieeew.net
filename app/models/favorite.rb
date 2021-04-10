class Favorite < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :answer, optional: true

validates_uniqueness_of :answer_id, scope: :user_id
end
