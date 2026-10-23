<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="men.aspx.cs" Inherits="men" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
         <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Shop Fullwidth</h2>
                        </div>
                    </div>
                </div>
         </div>
     <div class="shop-area section-padding-1 pt-120 pb-120">
         <div class="container">
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
                               
                                <a href="#shop-2" class="active" data-toggle="tab"><i class=" ti-layout-grid4"></i></a>
                                <a href="#shop-3" data-toggle="tab"><i class="ti-layout-grid3"></i></a>
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
                <%--  <div id="shop-1" class="tab-pane">
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

                  </div>--%>

                  <div id="shop-2" class="tab-pane active">
                     <asp:DataList ID="pro2" runat="server" RepeatDirection="Horizontal"  RepeatColumns="4"  >
                       <ItemTemplate>
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product-wrap mb-55" style="height:450px;width:270px;">
                                        <div class="product-img pro-theme-color-border">
                                            <a href="product-details.html" class="image">
                                              <img src='<%# "Admin/assets/upload/" + Eval("Front_img") %>' alt="">
                                                <img class="img-02" src='<%# "Admin/assets/upload/" + Eval("Back_img") %>' alt="">
                                                
                                            </a>
                                     <div class="bquickview" style="padding-bottom:15px;">
                                              <%-- <button class="button btn-quickview" data-toggle="modal" data-target="#exampleModal" type="button" title="quickview"    data-pid='<%# Eval("Pid") %>'  data-nm='<%# Eval("P_name") %>' >
                                                    <span>Quick View</span>
                                                </button>--%>
                                                      <%--<asp:Button ID="btnDetails" runat="server" CommandName="ViewDetails" CommandArgument='<%# Eval("Pid") %>' Text="View Details" />--%>
                                         <asp:Button ID="Button1" runat="server" Text="Quick View" CssClass="button btn-quickview" PostBackUrl='<%#"~/pro_detail.aspx?pid=" +Eval("Pid")%>'/>


                                            </div>
                                        </div>
                                        <div class="product-caption">
                                            <p class="mf-product">
                                                <a href="#" title="rada">rada</a>
                                            </p>
                                            <p class="product-tags"><a href="#"><%# Eval("Brand") %></a> , <a href="#"><%# Eval("Gender") %></a></p>
                                            <h4 class="product-name">
                                                <a href="#"><%# Eval("P_name") %></a>
                                            </h4>
                                            <div class="price-box">
                                                <label>Loading...:</label>            
                                                <p>
                                                    <span class="price">
                                                        <span><%# Eval("Price") %></span>                                                       
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
                                                   <%# Eval("detail") %>
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
                         
                         </ItemTemplate>
                         </asp:DataList>
                                 
                  </div>

                  <div id="shop-3" class="tab-pane">
                      <asp:DataList ID="rptProducts" runat="server" RepeatDirection="Horizontal"  RepeatColumns="3" >
                       <ItemTemplate>
                       <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12" >
                           
                                    <div class="product-wrap  mb-55" style="height:550px;width:370px">
                                        <div class="product-img pro-theme-color-border">
                                            <a href="product-details.html" class="image">
                                             <img src='<%# "Admin/assets/upload/" + Eval("Front_img") %>' alt="">
                                                <img class="img-02" src='<%# "Admin/assets/upload/" + Eval("Back_img") %>' alt="">
                                                
                                            </a>
                                           <div class="bquickview" style="padding-bottom:15px;">
                                                

                                               <asp:Button ID="Button1" runat="server" Text="Quick View" CssClass="button btn-quickview" PostBackUrl='<%#"~/pro_detail.aspx?pid=" +Eval("Pid")%>'/>

                                         

                                            </div>
                                        </div>
                                        <div class="product-caption">
                                            <p class="mf-product">
                                                <a href="#" title="rada">rada</a>
                                            </p>
                                            <p class="product-tags"><a href="#"><%# Eval("Brand") %></a> , <a href="#"><%# Eval("Gender") %></a></p>
                                            <h4 class="product-name">
                                                <a href="#"><%# Eval("P_name") %></a>
                                            </h4>
                                            <div class="price-box" >
                                                <label>Loading...:</label>            
                                                <p>
                                                    <span class="price" >
                                                        <span>$<%# Eval("Price") %></span></span></p>           
                                            </div>
                                            <div class="box-hover" >
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
                                                   <%# Eval("detail") %>
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




                            
                        </ItemTemplate>
                                </asp:DataList>      
                  </div>
              </div>
          </div>
     </div>
   
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [All_Products] WHERE ([Pid] = @Pid)">
        <SelectParameters>
            <asp:SessionParameter Name="Pid" SessionField="ProsessionId" Type="Int32" />
        </SelectParameters>
      </asp:SqlDataSource>

 
  
</asp:Content>


