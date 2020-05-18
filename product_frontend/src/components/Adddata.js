import React, { Component } from 'react';
import axios from 'axios';

const addProductAction = (product_name, product_prize, image) => 
     (axios.post('/addProduct',{product_name,product_prize,image})
    .then((resp) => (resp.data)))





class Adddata extends Component {
    constructor(props) {
        super(props);
        this.state = {
            product_name:"",
            product_prize:"",
            image:""
        }
    }
    isChange = (event) => {
        var name = event.target.name,
            value = event.target.value;
        // console.log(name);
        // console.log(value);
        this.setState ({
            [name] :value
        })
        
        
        
    }
    handleClick = () => {
        console.log(JSON.stringify(this.state));
        
        var {product_name, product_prize, image} = this.state;
        
        addProductAction(product_name,product_prize,image).then((response) => {
                console.log(response);
                
        })
        
    }
    
    render() {
        return (
            <div className="container mb-2">
                <div className="row">
                    <div className="col-12">
                        <hr />
                    </div>
                    <div className="col-8 mx-auto">
                        <form >
                           
                            <div className="form-group">
                                <label htmlFor="product_name">Tên Sản Phẩm</label>
                                <input onChange = {(event)=> this.isChange(event)} type="text" className="form-control form-control-sm" name="product_name" id="product_name" aria-describedby="name_text" placeholder="Nhập tên sản phẩm" />
                                <small id="name_text" className="form-text text-muted">Nhập text</small>
                            </div>
                            <div className="form-group">
                                <label htmlFor="product_prize">Giá Sản Phẩm</label>
                                <input onChange = {(event)=> this.isChange(event)} type="text" className="form-control form-control-sm" name="product_prize" id="product_prize" aria-describedby="name_prize" placeholder="Nhập tên sản phẩm" />
                                <small id="name_prize" className="form-text text-muted">Nhập Giá</small>
                            </div>
                            <div className="form-group">
                                <label htmlFor="image">Đường Link Ảnh Sản Phẩm</label>
                                <input onChange = {(event)=> this.isChange(event)} type="text" className="form-control form-control-sm" name="image" id="image" aria-describedby="img_text" placeholder="Nhập tên sản phẩm" />
                                <small id="img_text" className="form-text text-muted">Nhập text</small>
                            </div>
                            <button type="reset" onClick = {()=>this.handleClick()} className="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        );
    }
}

export default Adddata;