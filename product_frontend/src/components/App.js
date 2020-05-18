import React, { Component } from 'react';
import './App.css';
import Headtitle from './Headtitle';
import Product from './Product';
// import dataProducts from 'http://localhost:4000/getData01'; //ko an toan vi co the nguoi khac co the truy cap dc 
import axios from 'axios';
import Adddata from './Adddata';




const addProductAction = (product_name, product_prize, image) =>
  (axios.post('/addProduct', { product_name, product_prize, image })
    .then((resp) => (resp.data)))

    
const getProductData = () => {
  return axios.get('/getData01').then((res) => (res.data))
}

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: null,
      product_name: "",
      product_prize: "",
      image: ""
    }
  }


  componentDidMount() {
    if (this.state.data == null) {
      getProductData().then((res) => {
        this.setState({
          data: res
        })
      })
    }
  }


  PrintData = () => {
    if (this.state.data != null) {
      return this.state.data.map((value, key) => {
        return (<Product
          key={key}
          product_name={value.product_name}
          product_prize={value.product_prize}
          image={value.image}
        />)
      })
    }
  }
  isChange = (event) => {
    var name = event.target.name,
      value = event.target.value;
    // console.log(name);
    // console.log(value);
    this.setState({
      [name]: value
    })



  }
  handleClick = () => {
    // console.log(JSON.stringify(this.state));

    var { product_name, product_prize, image } = this.state;
    var dataTemp = [];
    var item = {};
    item.product_name = product_name;
    item.product_prize = product_prize;
    item.image = image;

    dataTemp =  this.state.data;
    
    // console.log(dataTemp);
    if (item.product_name !== '') {
      dataTemp.push(item);
      this.setState({
        data:dataTemp
      })
    }
    addProductAction(product_name, product_prize, image).then((response) => {
      console.log(response);
})}
  render() {
    // console.log(this.state.data);

    //   axios.get('http://localhost:4000/getData01') //truy cập đến đường dẫn
    //     .then(function (response) {
    //       // handle success
    //       console.log(response.data);
    //     })
    //     .catch(function (error) {
    //       // handle error
    //       console.log(error);
    //     })
    //     .finally(function () {
    //       // always executedy
    //     });
    return (

      <div>

        <Headtitle />


        <div className="container-fluid">
          <div className="row">
            <div className="col-8">
              <div className="row">
                {this.PrintData()}
              </div>
            </div>
            <div className="col-3">
              <div className="row">
               
                <div>
                  <form >

                    <div className="form-group">
                      <label htmlFor="product_name">Tên Sản Phẩm</label>
                      <input onChange={(event) => this.isChange(event)} type="text" className="form-control form-control-sm" name="product_name" id="product_name" aria-describedby="name_text" placeholder="Nhập tên sản phẩm" />
                      <small id="name_text" className="form-text text-muted">Nhập text</small>
                    </div>
                    <div className="form-group">
                      <label htmlFor="product_prize">Giá Sản Phẩm</label>
                      <input onChange={(event) => this.isChange(event)} type="text" className="form-control form-control-sm" name="product_prize" id="product_prize" aria-describedby="name_prize" placeholder="Nhập tên sản phẩm" />
                      <small id="name_prize" className="form-text text-muted">Nhập Giá</small>
                    </div>
                    <div className="form-group">
                      <label htmlFor="image">Đường Link Ảnh Sản Phẩm</label>
                      <input onChange={(event) => this.isChange(event)} type="text" className="form-control form-control-sm" name="image" id="image" aria-describedby="img_text" placeholder="Nhập tên sản phẩm" />
                      <small id="img_text" className="form-text text-muted">Nhập text</small>
                    </div>
                    <button type="reset" onClick={() => this.handleClick()} className="btn btn-primary btn-block">Submit</button>
                  </form>
                </div>
              </div>
            </div>
          </div>


        </div>
      </div>

    );
  }
}

export default App;
