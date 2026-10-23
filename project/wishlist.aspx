<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="wishlist.aspx.cs" Inherits="project_wishlist" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Wishlist</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart start -->
            <div class="cart-main-area pt-110 pb-70">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <form action="#">
                                <div class="row">
                                    <div class="col-lg-8 ml-auto mr-auto bg-gray-2 pt-50 pl-50 pr-50 pb-50">
                                        <div class="table-content table-responsive cart-table-content">
                                            <table>
                                                <thead>
                                                    <tr>
                                                        <th></th>
                                                        <th></th>
                                                        <th>Product</th>
                                                        <th> Price</th>
                                                        <th>Quantity</th>
                                                        <th>Add To Cart</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="product-remove">
                                                            <a href="#"><i class=" ti-close "></i></a>
                                                        </td>
                                                        <td class="product-img">
                                                            <a href="#"><img src="assets/images/cart/cart-1.jpg" alt=""></a>
                                                        </td>
                                                        <td class="product-name1"><a href="#">Heavy Duty [Military Grade] </a></td>
                                                        <td class="product-price"><span class="amount">$26.00</span></td>
                                                        <td class="cart-quality">
                                                            <div class="product-details-quality quality-width-cart">
                                                                <div class="cart-plus-minus">
                                                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="product-wishlist-cart"><a href="#">add to cart</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="product-remove">
                                                            <a href="#"><i class=" ti-close "></i></a>
                                                        </td>
                                                        <td class="product-img">
                                                            <a href="#"><img src="assets/images/cart/cart-2.jpg" alt=""></a>
                                                        </td>
                                                        <td class="product-name1"><a href="#">Noise Cancelling Headphones</a></td>
                                                        <td class="product-price"><span class="amount">$26.00</span></td>
                                                        <td class="cart-quality">
                                                            <div class="product-details-quality quality-width-cart">
                                                                <div class="cart-plus-minus">
                                                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="product-wishlist-cart"><a href="#">add to cart</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart end -->
</asp:Content>


