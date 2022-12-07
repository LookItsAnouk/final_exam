class AuctionsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    before_action :find_auction, only: [:show, :edit, :update, :destroy]
    before_action :authorize_user!, only:[:edit, :update, :destroy]

    def index
        @auctions = Auction.order(created_at: :desc)
        @bid = Bid.new
    end

    def new
        @auction = Auction.new
    end

    def create
        @auction = Auction.new(auction_params)
        @auction.user = current_user
        if @auction.is_valid?
            if @auction.save 
                flash[:success] = "auction successfully created"
                redirect_to @auction
            else
                flash[:error] = "Something went wrong"
                render 'new'
            end
        else
        flash[:alert] = "Please Add Title and Body"
            redirect_to new_auction_path(@auction)
        end
    end

    def show
        @bid = Bid.new
    
    end

    private

    def auction_params
        params.require(:auction).permit(:title, :body, :reserve_price, :end_date)
    end
    def find_auction
        @auction = Auction.find params[:id]
    end

    def authorize_user!
        redirect_to root_path, alert: "Not authorized!" unless can?(:crud, @auction)
    end  

end
