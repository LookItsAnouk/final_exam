class Auction < ApplicationRecord
    has_many :bids, dependent: :destroy
    belongs_to :user, optional: true

    validates :body, presence: true

    def is_valid?
        title.present? &&body.present?
    end
end
