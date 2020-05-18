import React, { Component } from 'react';

class Product extends Component {
    constructor(props) {
        super(props);
        
    }
    render() {
        return (
            <div className="col-2">
                <div className="card text-left mb-2">
                    <img className="card-img-top" src={this.props.image} alt="" />
                    <div className="card-body">
                        <b><p className="card-title float-left">{this.props.product_name}</p></b>
                        <p className="card-text float-right">{this.props.product_prize}</p>
                    </div>
                </div>
            </div>
        );
    }
}

export default Product;