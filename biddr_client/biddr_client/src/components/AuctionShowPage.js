import React, { Component } from 'react';
import auctionData from './auctionData';
import AuctionIndexPage from './AuctionIndexPage';


export default class AuctionShowPage extends Component {
    auction =auctionData();
    render() {
        let auction = this.auction;
        return <div className="card mt-5 mb-5">
            <AuctionIndexPage
                title={auction.title}
                description={auction.description}
                date={auction.created_at}
                sellerName={auction.seller.full_name}
            />
          
        </div>;
    }
}