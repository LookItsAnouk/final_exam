class BidsController < ApplicationController
    before_action :authenticate_user!, except: [:show, :index]
    before_action :find_auction

    def create
        @bid = Bid.new(bid_params)
        @bid.auction = @auction
        @bid.user = current_user
        if @bid.save
            flash[:success] = "Bid successfully created"
            redirect_to auction_path(@auction)
        else
            flash[:alert] = "Please Add Text"
            redirect_to auction_path(@auction)
        end
    end

    private
    def find_auction
        @auction = Auction.find params[:auction_id]
    end
    
    def bid_params
        params.require(:bid).permit(:ammount)
    end
end
