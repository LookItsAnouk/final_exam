class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :author_full_name, :created_at, :updated_at, :author_first_name

  has_many :bids

  def author_full_name
    object.user&.first_name&.last_name
  end

  class BidSerializer < ActiveModel::Serializer
    attributes :id, :ammount, :author_full_name, :created_at
  
    def author_full_name
      object.user&.first_name&.last_name
    end
  end

  class UserSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name
  end
end
