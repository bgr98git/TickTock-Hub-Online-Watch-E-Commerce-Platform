<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="shop-sidebar.aspx.cs" Inherits="shop_sidebar" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Shop Left Sidebar</h2>
                        </div>
                    </div>
                </div>
            </div>
     <div class="shop-area section-padding-1 pt-120 pb-120">
                <div class="container">
                    <div class="row flex-row-reverse">
                        <div class="col-lg-9">
                            <div class="shop-top-bar">
                                <div class="shop-top-bar-left">
                                    <div class="shop-page-list">
                                        <ul>
                                            <li>Show</li>
                                            <li class="active"><a href="#">9</a> /</li>
                                            <li><a href="#">12</a> / </li>
                                            <li><a href="#">18</a> / </li>
                                            <li><a href="#">24</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="shop-top-bar-right">
                                    <div class="shop-tab nav">
                                        <a href="#shop-1" data-toggle="tab"><i class=" ti-view-list-alt "></i></a>
                                        <a href="#shop-2" class="active" data-toggle="tab"><i class=" ti-layout-grid4"></i></a>
                                        <a href="#shop-3" data-toggle="tab"><i class="ti-layout-grid2"></i></a>
                                    </div>
                                    <div class="shop-short-by ml-40">
                                        <span>Default sorting <i class="fa fa-angle-down angle-down"></i></span>
                                        <ul>
                                            <li class="active"><a href="#">Default sorting</a></li>
                                            <li><a href="#">Sort by popularity</a></li>
                                            <li><a href="#">Sort by average rating</a></li>
                                            <li><a href="#">Sort by latest</a></li>
                                            <li><a href="#">Sort by price: low to high</a></li>
                                            <li><a href="#">Sort by price: high to low</a></li>
                                        </ul>
                                    </div>
                                    <div class="shop-filter ml-25">
                                        <a class="shop-filter-active" href="#">Filters <i class="fa fa-angle-down angle-down"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-filter-wrapper">
                                <div class="row">
                                    <!-- Product Filter -->
                                    <div class="col-md-3 col-sm-6 col-xs-12 mb-20">
                                        <div class="product-filter">
                                            <h5>Price</h5>
                                            <div class="price-filter">
                                                <ul>
                                                    <li><a href="#">$0.00 - $20.00</a></li>
                                                    <li><a href="#">$20.00 - $40.00</a></li>
                                                    <li><a href="#">$30.00 - $50.00</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Product Filter -->
                                    <div class="col-md-3 col-sm-6 col-xs-12 mb-20">
                                        <div class="product-filter">
                                            <h5>Size</h5>
                                            <div class="product-size">
                                                <ul>
                                                    <li><a href="#">Full Size</a></li>
                                                    <li><a href="#">L</a></li>
                                                    <li><a href="#">M</a></li>
                                                    <li><a href="#">S</a></li>
                                                    <li><a href="#">XL</a></li>
                                                    <li><a href="#">XXL</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Product Filter -->
                                    <div class="col-md-3 col-sm-6 col-xs-12 mb-20">
                                        <div class="product-filter">
                                            <h5>Color</h5>
                                            <div class="product-color">
                                                <ul>
                                                    <li><a href="#">Blue</a></li>
                                                    <li><a href="#">Brown</a></li>
                                                    <li><a href="#">Green</a></li>
                                                    <li><a href="#"> Pink</a></li>
                                                    <li><a href="#">Violet</a></li>
                                                    <li><a href="#"> White</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Product Filter -->
                                    <div class="col-md-3 col-sm-6 col-xs-12 mb-20">
                                        <div class="product-filter">
                                            <h5>Brands</h5>
                                            <div class="product-brands">
                                                <ul>
                                                    <li><a href="#">Airi</a></li>
                                                    <li><a href="#">Draven</a></li>
                                                    <li><a href="#">Mango</a></li>
                                                    <li><a href="#"> Valentino</a></li>
                                                    <li><a href="#">Zara </a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-content jump-3 pt-30">
                                <div id="shop-1" class="tab-pane">
                                    <div class="shop-list-wrap mb-50">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                                <div class="product-wrap">
                                                    <div class="product-img pro-theme-color-border product-border">
                                                        <a href="product-details.html">
                                                            <img src="assets/images/product/01.jpg" alt="">
                                                        </a>
                                                        <div class="shop-list-quickview">
                                                            <a data-toggle="modal" data-target="#exampleModal" href="#"><i class="fa fa-search-plus"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6 col-12">
                                                <div class="shop-list-content">
                                                    <h3><a href="#">Adapt Active Noise Cancelling Headphones</a></h3>
                                                    <div class="pro-list-price">
                                                        <span>$50.00</span>
                                                    </div>
                                                    <p>Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam libero ac turpis pharetra, in vehicula scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                                    <div class="product-list-action">
                                                        <a title="Add to Wishlist" href="#"><i class="fa fa-heart-o"></i></a>
                                                        <div class="pro-list-actioncart">
                                                            <a title="Add to cart" href="#">Add to cart</a>
                                                        </div>
                                                        <a title="Add to reload" href="#"><i class="ti-reload"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrap mb-50">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                                <div class="product-wrap">
                                                    <div class="product-img pro-theme-color-border product-border">
                                                        <a href="product-details.html">
                                                            <img src="assets/images/product/02.jpg" alt="">
                                                        </a>
                                                        <div class="shop-list-quickview">
                                                            <a data-toggle="modal" data-target="#exampleModal" href="#"><i class="fa fa-search-plus"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6 col-12">
                                                <div class="shop-list-content">
                                                    <h3><a href="#">iPhone 11 Case, Heavy Duty [Military Grade] </a></h3>
                                                    <div class="pro-list-price">
                                                        <span>$50.00</span>
                                                    </div>
                                                    <p>Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam libero ac turpis pharetra, in vehicula scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                                    <div class="product-list-action">
                                                        <a title="Add to Wishlist" href="#"><i class="fa fa-heart-o"></i></a>
                                                        <div class="pro-list-actioncart">
                                                            <a title="Add to cart" href="#">Add to cart</a>
                                                        </div>
                                                        <a title="Add to reload" href="#"><i class="ti-reload"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrap mb-50">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                                <div class="product-wrap">
                                                    <div class="product-img pro-theme-color-border product-border">
                                                        <a href="product-details.html">
                                                            <img src="assets/images/product/03.jpg" alt="">
                                                        </a>
                                                        <div class="shop-list-quickview">
                                                            <a data-toggle="modal" data-target="#exampleModal" href="#"><i class="fa fa-search-plus"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6 col-12">
                                                <div class="shop-list-content">
                                                    <h3><a href="#">Libratone Track Air+ True Wireless Active Noise</a></h3>
                                                    <div class="pro-list-price">
                                                        <span>$50.00</span>
                                                    </div>
                                                    <p>Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam libero ac turpis pharetra, in vehicula scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                                    <div class="product-list-action">
                                                        <a title="Add to Wishlist" href="#"><i class="fa fa-heart-o"></i></a>
                                                        <div class="pro-list-actioncart">
                                                            <a title="Add to cart" href="#">Add to cart</a>
                                                        </div>
                                                        <a title="Add to reload" href="#"><i class="ti-reload"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrap mb-50">
                                        <div class="row">
                                            <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                                <div class="product-wrap">
                                                    <div class="product-img pro-theme-color-border product-border">
                                                        <a href="product-details.html">
                                                            <img src="assets/images/product/04.jpg" alt="">
                                                        </a>
                                                        <div class="shop-list-quickview">
                                                            <a data-toggle="modal" data-target="#exampleModal" href="#"><i class="fa fa-search-plus"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-8 col-md-6 col-sm-6 col-12">
                                                <div class="shop-list-content">
                                                    <h3><a href="#">Acer Aspire C24-865-UA91 AIO Desktop</a></h3>
                                                    <div class="pro-list-price">
                                                        <span>$50.00</span>
                                                    </div>
                                                    <p>Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam libero ac turpis pharetra, in vehicula scelerisque. Vestibulum ut sem laoreet, feugiat tellus at, hendrerit arcu.</p>
                                                    <div class="product-list-action">
                                                        <a title="Add to Wishlist" href="#"><i class="fa fa-heart-o"></i></a>
                                                        <div class="pro-list-actioncart">
                                                            <a title="Add to cart" href="#">Add to cart</a>
                                                        </div>
                                                        <a title="Add to reload" href="#"><i class="ti-reload"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>                                  
                                </div>
                                <div id="shop-2" class="tab-pane active">
                                    <div class="row">
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap  mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/02.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/02-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Roger Dubuis</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$104.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/01.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/01-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">M37 Uniform Wares</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$78.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/03.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/03-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Swiss Watch</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$98.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/04.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/04-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Classy Numeral</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$45.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/05.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/05-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Scientific</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$115.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/06.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/06-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Tommy Bahama</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$35.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <div class="label-product label-sale">
                                                        <span>-17%</span>
                                                    </div>
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/07.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/07-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">M37 Uniform Wares</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$78.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/08.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/08-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Roger Dubuis</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$104.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <div class="label-product label-sale">
                                                        <span>-12%</span>
                                                    </div>
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/09.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/09-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Swiss Watch</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$98.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/10.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/10-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Classy Numeral</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$45.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <div class="label-product label-sale">
                                                        <span>-15%</span>
                                                    </div>
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/11.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/11-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Scientific</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$115.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/12.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/12-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Tommy Bahama</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$35.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                               
                                        </div>
                                    </div>
                                </div>
                                <div id="shop-3" class="tab-pane">
                                    <div class="row">
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/12.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/12-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Tommy Bahama</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$35.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>      
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <div class="label-product label-sale">
                                                        <span>-15%</span>
                                                    </div>
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/11.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/11-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Scientific</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$115.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/01.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/01-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">M37 Uniform Wares</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$78.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap  mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/02.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/02-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Roger Dubuis</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$104.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/03.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/03-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Swiss Watch</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$98.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="product-wrap mb-55">
                                                <div class="product-img pro-theme-color-border">
                                                    <a href="product-details.html" class="image">
                                                        <img src="assets/images/product/04.jpg" alt="">
                                                        <img class="img-02" src="assets/images/product/04-02.jpg" alt="">
                                                    </a>
                                                    <div class="bquickview">
                                                        <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview">
                                                            <span>Quick View</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="product-caption">
                                                    <p class="mf-product">
                                                        <a href="#" title="rada">rada</a>
                                                    </p>
                                                    <p class="product-tags"><a href="#">luxury</a> , <a href="#">sport</a></p>
                                                    <h4 class="product-name">
                                                        <a href="#">Classy Numeral</a>
                                                    </h4>
                                                    <div class="price-box">
                                                        <label>Loading...:</label>            
                                                        <p>
                                                            <span class="price">
                                                                <span>$45.00</span>                                                       
                                                            </span>
                                                        </p>           
                                                    </div>
                                                    <div class="box-hover">
                                                        <div class="product-ratings">
                                                            <div class="rating-box">
                                                                <span class="badge">
                                                                    <span class="badge-starrating">
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                        <i class="fa fa-star-o" aria-hidden="true"></i>
                                                                    </span>
                                                                    <span class="badge-caption">No reviews</span>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-detail">
                                                            Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience...
                                                        </div>
                                                        <div class="product-action product-action-position-1 pro-action-theme-color">
                                                            <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>                                                 
                                                            <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>                                                  
                                                            <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="pro-pagination-style text-center">
                                    <ul>
                                        <li><a class="active" href="#">01</a></li>
                                        <li><a href="#">02</a></li>
                                        <li><a href="#">03</a></li>
                                        <li><a href="#">04</a></li>
                                        <li><a href="#">05</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <div class="shop-sidebar-style  pb-30 mr-20">
                                <div class="sidebar-widget mb-30">
                                    <h4 class="pro-sidebar-title">Categories </h4>
                                    <div class="sidebar-widget-categories  mt-20">
                                        <ul>
                                            <li class="sw-sub-wrap"><a href="#">Woman</a>
                                                <ul class="sw-sub-menu">
                                                    <li><a href="#">Dresses</a></li>
                                                    <li><a href="#">Jumpsuits</a></li>
                                                    <li><a href="#">Shirts</a></li>
                                                    <li><a href="#">T-shirts and tops</a></li>
                                                    <li><a href="#">Cardigans and sweaters</a></li>
                                                    <li><a href="#">Jackets</a></li>
                                                    <li><a href="#">Coats</a></li>
                                                    <li><a href="#">Suits</a></li>
                                                    <li><a href="#">Trousers</a></li>
                                                    <li><a href="#">Jeans</a></li>
                                                    <li><a href="#">Shorts</a></li>
                                                    <li><a href="#">Skirts</a></li>
                                                    <li><a href="#">Beachwear</a></li>
                                                </ul>
                                            </li>
                                            <li class="sw-sub-wrap"><a href="#">Man</a>
                                                <ul class="sw-sub-menu">
                                                    <li><a href="#">Dresses</a></li>
                                                    <li><a href="#">Jumpsuits</a></li>
                                                    <li><a href="#">Shirts</a></li>
                                                    <li><a href="#">T-shirts and tops</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Kids</a></li>
                                            <li><a href="#">Acessories</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar-widget mb-35">
                                    <div class="shop-sidebar-banner">
                                        <a href="#"><img alt="" src="assets/images/banner/shop-ad-banner.jpg"></a>
                                        <div class="shop-sidebar-content">
                                            <h5>sale up to</h5>
                                            <h2>50%</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar-widget mb-35">
                                    <h4 class="pro-sidebar-title">prices </h4>
                                    <div class="price-filter mt-30">
                                        <div id="slider-range"></div>
                                        <div class="price-slider-amount">
                                            <div class="price-slider-amount">
                                                <div class="label-input">
                                                    <span>Price: </span><input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                                </div>
                                                <button type="button">Filter</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar-widget mb-20">
                                    <h4 class="pro-sidebar-title">COLOR</h4>
                                    <div class="sidebar-widget-color mt-20">
                                        <ul>
                                            <li><a class="black active" href="#">Black</a></li>
                                            <li><a class="blue" href="#">Blue</a></li>
                                            <li><a class="green" href="#">Green</a></li>
                                            <li><a class="orange" href="#">Orange</a></li>
                                            <li><a class="pink" href="#">Pink</a></li>
                                            <li><a class="gray" href="#">gray</a></li>
                                            <li><a class="yellow" href="#">Yellow</a></li>
                                            <li><a class="violet" href="#">Violet</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar-widget mb-25">
                                    <h4 class="pro-sidebar-title">Size</h4>
                                    <div class="sidebar-widget-size mt-25">
                                        <ul>
                                            <li><a href="#">XL</a></li>
                                            <li><a href="#">L</a></li>
                                            <li><a href="#">M</a></li>
                                            <li><a href="#">S</a></li>
                                            <li><a href="#">XS</a></li>
                                            <li><a href="#">Full Size</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar-widget mb-30">
                                    <h4 class="pro-sidebar-title">BRANDS</h4>
                                    <div class="sidebar-widget-brand mt-20">
                                        <ul>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Mango</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Zara</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Hm</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Forever 21</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Uniquilo</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Six8</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Versatile</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <input type="checkbox" value=""> <a href="#">Lacote</a>
                                                    <span class="checkmark"></span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="sidebar-widget-list-left">
                                                    <a class="brand-more" href="#">+35 More</a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="sidebar-widget">
                                    <h4 class="pro-sidebar-title">TAGS</h4>
                                    <div class="sidebar-widget-tags mt-25">
                                        <ul>
                                            <li><a href="#">Dress</a></li>
                                            <li><a href="#">Blazer</a></li>
                                            <li><a href="#">T-Shirt</a></li>
                                            <li><a href="#">Suit</a></li>
                                            <li><a href="#">Living Gifts</a></li>
                                            <li><a href="#">Living Gifts</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>


