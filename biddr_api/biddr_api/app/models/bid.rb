class Bid < ApplicationRecord
    belongs_to :auction
    belongs_to :user, optional: true
    validates :ammount, presence: true
end
