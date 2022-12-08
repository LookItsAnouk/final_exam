import React, { Component } from 'react';

export default class AuctionIndexPage extends Component {
    render() {
        const props = this.props;
        return <div>
            Current Auctions
            <h5 className="card-header">{props.title}</h5>
            <div className='card-body'>
                {props.description}
                <div><label>Seller: </label> {props.sellerName}</div>
                <div><label>Date: </label> {props.date}</div>
            </div>
        </div>;
    }
}