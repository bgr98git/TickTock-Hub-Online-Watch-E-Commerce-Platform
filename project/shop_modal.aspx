<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="shop_modal.aspx.cs" Inherits="shop_modal" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>   


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

            <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>
            <cc1:ToolkitScriptManager ID="tsc1" runat="server"></cc1:ToolkitScriptManager>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="filterbrandrepeter" EventName="ItemCommand" />
                  <%--  <asp:AsyncPostBackTrigger ControlID="LinkButton7" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="LinkButton8" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="LinkButton9" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="LinkButton10" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="LinkButton11" EventName="Click" />--%>
                </Triggers>
          

                 <ContentTemplate>
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
                              <%--  <div class="shop-short-by ml-40">
                                <span>Default sorting <i class="fa fa-angle-down angle-down"></i></span>
                                <ul>
                                    <li class="active"><a href="#">Default sorting</a></li>
                                    <li><a href="#">Sort by popularity</a></li>
                                    <li><a href="#">Sort by average rating</a></li>
                                    <li><a href="#">Sort by latest</a></li>
                                    <li><a href="#">Sort by price: low to high</a></li>
                                    <li><a href="#">Sort by price: high to low</a></li>
                                     <li><asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton></li>
                                </ul>
                            </div>--%>
                              <div class="shop-short-by ml-40">
                                <span>Filter Brands <i class="fa fa-angle-down angle-down"></i></span>
                                <ul>
                                    <asp:Repeater ID="filterbrandrepeter" runat="server" OnItemCommand="filterbrandrepeter_ItemCommand">
                                        <ItemTemplate>
                                    <li><asp:LinkButton ID="LinkButton1" runat="server"  Font-Bold="true" Font-Size="15px" CommandName='<%# Eval("B_name") %>' CommandArgument='<%# Eval("B_name") %>'><%# Eval("B_name") %></asp:LinkButton></li>
                                            </ItemTemplate>
                                     </asp:Repeater>
                                </ul>
                            </div>
                             <%-- <div class="shop-short-by ml-40">
                                <span>Filter PriceDrop <i class="fa fa-angle-down angle-down"></i></span>
                                <ul>
                                            <li><asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="true" Font-Size="15px" OnClick="LinkButton7_Click">₹200 - ₹1000</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="true" Font-Size="15px" OnClick="LinkButton8_Click">₹10,000 - ₹20,000</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="LinkButton9" runat="server" Font-Bold="true" Font-Size="15px" OnClick="LinkButton9_Click">₹20,000 - ₹30,000</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="LinkButton10" runat="server" Font-Bold="true" Font-Size="15px" OnClick="LinkButton10_Click">₹30,000 - ₹40,000</asp:LinkButton></li>
                                            <li><asp:LinkButton ID="LinkButton11" runat="server" Font-Bold="true" Font-Size="15px" OnClick="LinkButton11_Click">₹40,000 - ₹90,000</asp:LinkButton></li>
                                </ul>
                            </div>--%>


                             <%--<div class="shop-filter ml-25">
                                <a class="shop-filter-active" href="#">Filter Price <i class="fa fa-angle-down angle-down"></i></a>
                            </div>--%>
                     </div>
             </div>

         <%--    <div class="product-filter-wrapper">
                        <div class="row">
                            <!-- Product Filter -->
                            <div class="col-md-3 col-sm-6 col-xs-12 mb-20">
                                <div class="product-filter">
                                    <h5>Price</h5>
                                    <div class="price-filter">
                                        <ul>
                                           <li><a href="#">₹200 - ₹1000</a></li>
                                            <li><a href="#">₹10,000 - ₹20,000</a></li>
                                            <li><a href="#">₹20,000 - ₹30,000</a></li>
                                            <li><a href="#">₹30,000 - ₹40,000</a></li>
                                             <li><a href="#">₹40,000 - ₹90,000</a></li>
                                           

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
                    </div>--%>
            
          
   

              <div class="tab-content jump-3 pt-30"  >
                  <div id="shop-2" class="tab-pane active" >
                     <asp:DataList ID="pro2" runat="server" RepeatDirection="Horizontal"  RepeatColumns="4"  OnItemCommand="pro2_ItemCommand"  CellSpacing="1" OnItemDataBound="pro2_ItemDataBound">
                       <ItemTemplate>
                        <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12" >
                                    <div class="product-wrap mb-55" style="height:450px;width:268px;">
                                        <div class="label-product label-sale">
                                                <span><asp:Label ID="Label1" runat="server" Text="label" Font-Size="Smaller" Visible="false"></asp:Label></span>
                                            </div>
                                        <div class="product-img pro-theme-color-border">
                                              
                                            <a class="image">
                                              <img src='<%# "Admin/assets/upload/" + Eval("Front_img") %>' alt="" style="height:295px">
                                                <img class="img-02" src='<%# "Admin/assets/upload/" + Eval("Back_img") %>' alt="" style="height:295px;width:300px">
                                                
                                            </a>
                                             &nbsp;&nbsp;<asp:Label ID="imglbl" runat="server" Text='<%# Eval("Front_img") %>' Visible="false"></asp:Label>
                                     &nbsp;&nbsp;<div class="bquickview" style="padding-bottom:15px;">
                                             
                                        <asp:Button ID="btnShow" runat="server" Text="Quick View" CssClass="button btn-quickview"/>


                                            </div>
                                        </div>
                                        <div class="product-caption" >
                                            <p class="mf-product">
                                                <a href="#" title="rada">rada</a>
                                            </p>
                                            <p class="product-tags"><a href="#"><%# Eval("Brand") %></a> , <a href="#"><%# Eval("Gender") %></a></p>
                                            <h4 class="product-name">
                                                <a href="#" style="color:black"><%# Eval("P_name") %></a>
                                            </h4>
                                            
                                            
                                            <div class="price-box">
                                                <label>Loading...:</label>            
                                                <p>
                                                    <span class="price">
                                                        <span>₹<%# Eval("Price") %>,<asp:Label ID="out" runat="server" Text="Out Of Stock " Font-Bold="true" Font-Strikeout="true" ForeColor="#ff9e3e" Font-Size="Small" Visible="true"></asp:Label>
                                                            <asp:Label ID="In" runat="server" Text="In Stock " Font-Bold="true"  ForeColor="#993333" Font-Size="Small" Visible="true"></asp:Label>
                                                            <asp:Label ID="Few" runat="server" Text="Few Left " Font-Bold="true" Font-Underline="true" ForeColor="#00999" Font-Size="Small" Visible="true"></asp:Label>
                                                        </span>                                                       
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
                                                            <span class="badge-caption">
                                                                </span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="product-detail">
                                                   <%# Eval("detail") %>
                                                </div>
                                                <div class="product-action product-action-position-1 pro-action-theme-color">
                                                    <%--<a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>--%>                                                 
                                                    <%--<a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a>--%> 
                                                    <asp:LinkButton ID="Linkcart" runat="server" CssClass="btn-cart" CommandName="ShowCart" Width="200">Add to Cart</asp:LinkButton>
                                                     
                                                                                                     
                                                   <%-- <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                         <style>
        .modalBackground {
            background-color: rgba(0, 0, 0, 0.7);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1000;
        }
       
     .close {
  position: absolute;
  top: 10px;
  right: 30px;
  transition: all 200ms;
  font-size: 20px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
  width:50px;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}
     </style>

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
</cc1:ModalPopupExtender>
<cc1:ModalPopupExtender ID="ModalPopupExtender1" runat="server" PopupControlID="Panel1" TargetControlID="Linkcart"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
</cc1:ModalPopupExtender>
 
 

<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
    <div class="modal-body" style="background-color:white;height:630px;border-radius:10px;width:960px" >
          <div class="modal-header" >
                           <%-- <button type="button" id="btnClose" class="close" data-dismiss="modal" aria-label="Close"></button>--%>
             <%-- <asp:Button ID="btnClose" runat="server" Text="X" CssClass="close" />--%>
    <asp:HyperLink ID="btnClose" runat="server" CssClass="close"><span class=" ti-close " aria-hidden="true"></span></asp:HyperLink>
                        </div>
        <div class="row">
          
            <!-- Image Section -->
            <div class="col-lg-6 col-md-12 " style="height:400px;width:300px;padding:0px">
                <div class="image-container">
                    
                   <div class="quickview-slider-active owl-carousel">
                                        
                            <asp:Image ID="froimgtag" CssClass="img-popup" runat="server" style="height:400px;width:400px;margin-top:40px" ImageUrl='<%# "Admin/assets/upload/" + Eval("Front_img") %>' />
                         <asp:Image ID="bckimgtag" CssClass="img-popup" runat="server" style="height:400px;width:400px;margin-top:30px" ImageUrl='<%# "Admin/assets/upload/" + Eval("Back_img") %>' />

                               
                     </div>
                </div>
            </div>
            
         <div class="col-lg-6 col-md-12 " style="height:400px;width:500px;padding:5px;margin-top:30px;padding-right:40px;">
             
                                    <div class="product-details-content quickview-content-padding bg-gray" style="padding:0px;background-color:white">
                                     
                                        
                                        
                                            <h2 class="uppercase" >
                         <asp:Label ID="pnmlbl" runat="server" Text='<%# Eval("P_name") %>'></asp:Label>
                                                 
                                            </h2>
                                        <h3>₹<asp:Label ID="prclbl" runat="server" Text='<%# Eval("Price") %>'></asp:Label></h3>
                                        <div class="product-details-peragraph">
                                            <p>
                         <asp:Label ID="detlbl" runat="server" Text='<%# Eval("detail") %>'></asp:Label></p>

                                        </div>
                                        
                                        <div class="product-details-meta">
                                            <span>SKU:India</span>
                                            <span>Categories:<asp:Label ID="catlbl" runat="server" Text='<%# Eval("Gender") %>'></asp:Label><br />
                                            <span>Brand:<asp:Label ID="brlbl" runat="server" Text='<%# Eval("Brand") %>'></asp:Label><br />
                                            <span>Product ID:<asp:Label ID="pidlbl" runat="server" Text='<%#Eval("PId") %>' /><br /></span>
                                        </div>
                                        <div class="product-details-action-wrap" style="padding-left:50px">
                                            <div class="product-details-quality">
                                                <div class="cart-plus-minus">
                                                   <%-- <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">--%> <asp:TextBox ID="qttextbox" runat="server" CssClass="cart-plus-minus-box" Text="1" ></asp:TextBox>
                                   <asp:RangeValidator 
    ID="RangeValidator1" 
    runat="server" 
    ControlToValidate="qttextbox" 
    MinimumValue="1" 
    MaximumValue="10" 
    Type="Integer" 
    ErrorMessage="Quantity must be between 1 and 10." 
    ForeColor="Red" 
    Display="Dynamic" />
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />  
                                                </div>
                                            </div>
                                            <div class="product-details-cart">
                                                <%-- <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CommandName="AddToCart" CommandArgument='<%# Eval("Pid") %>' Height="50" BorderStyle="Double" BorderColor="Black" Width="200" ForeColor="#993300"/>--%>
                             <asp:LinkButton ID="btnAddToCart" runat="server" CommandName="AddToCart" CommandArgument='<%# Eval("Pid") %>' Text="Add to Cart">Add to cart</asp:LinkButton>
                                            </div>
                                           <%-- <div class="product-details-wishlist">
                                                <a title="Add to wishlist" href="#"><i class="ti-heart"></i></a>
                                            </div>--%>
                                           
                                        </div>
                                     
                                        <div class="product-details-social-wrap" style="padding-left:50px">
                                            <span>SHARE THIS PRODUCT</span>
                                            
                                            <div class="product-details-social">

                                                <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                                <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                                <a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
                                                <a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
          

        </div>
    </div>                           
                 
     
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
                      </ContentTemplate>
        </asp:UpdatePanel>
    
   
</asp:Panel>

 
                         </ItemTemplate>
                         </asp:DataList>
                                 
                  </div>

                  <div id="shop-3" class="tab-pane" >
                      <asp:DataList ID="rptProducts" runat="server" RepeatDirection="Horizontal"  RepeatColumns="3" OnItemCommand="rptProducts_ItemCommand" OnItemDataBound="rptProducts_ItemDataBound">
                       <ItemTemplate>
                       <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12" >
                           
                                    <div class="product-wrap  mb-55" style="height:550px;width:370px">
                                        <div class="product-img pro-theme-color-border">
                                            <a href="product-details.html" class="image">
                                             <img src='<%# "Admin/assets/upload/" + Eval("Front_img") %>' alt=""  style="height:450px;width:390px;">
                                                <img class="img-02" src='<%# "Admin/assets/upload/" + Eval("Back_img") %>' alt="" style="height:450px;width:390px;">
                                                
                                            </a>
                                           &nbsp;&nbsp;&nbsp;&nbsp;<div class="bquickview" style="padding-bottom:15px;">
                                                

                                               <asp:Button ID="btnShow" runat="server" Text="Quick View" CssClass="button btn-quickview"/>

                                         

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
                                                        <span>₹<%# Eval("Price") %>,<asp:Label ID="out" runat="server" Text="Out Of Stock " Font-Bold="true" Font-Strikeout="true" ForeColor="#ff9e3e" Font-Size="Small" Visible="true"></asp:Label>
                                                            <asp:Label ID="In" runat="server" Text="In Stock " Font-Bold="true"  ForeColor="#993333" Font-Size="Small" Visible="true"></asp:Label>
                                                            <asp:Label ID="Few" runat="server" Text="Few Left " Font-Bold="true" Font-Underline="true" ForeColor="#00999" Font-Size="Small" Visible="true"></asp:Label>

                                                        </span></span></p>           
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
                                                   <%-- <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>--%>                                                 
                                                 <%--   <a class="btn-cart" title="Add to Cart" href="#"><span>Add to Cart</span></a> --%> 
                                                    <asp:LinkButton ID="Linkcart2" runat="server" CssClass="btn-cart" CommandName="ShowCart" Width="200">Add to Cart</asp:LinkButton>                                                
                                                   <%-- <a title="Add to Compare" href="#"><i class="ti-reload"></i></a>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               
                         </div>

<style>
        .modalBackground {
            background-color: rgba(0, 0, 0, 0.7);
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 1000;
        }
       
     .close {
  position: absolute;
  top: 10px;
  right: 30px;
  transition: all 200ms;
  font-size: 20px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
  width:50px;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}
     </style>

<!-- ModalPopupExtender -->
<cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
</cc1:ModalPopupExtender>
<cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel1" TargetControlID="Linkcart2"
    CancelControlID="btnClose" BackgroundCssClass="modalBackground" >
</cc1:ModalPopupExtender>

<asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" Style="display: none">
    <div class="modal-body" style="background-color:white;height:630px;border-radius:10px;width:960px" >
          <div class="modal-header" >
                           <%-- <button type="button" id="btnClose" class="close" data-dismiss="modal" aria-label="Close"></button>--%>
             <%-- <asp:Button ID="btnClose" runat="server" Text="X" CssClass="close" />--%>
    <asp:HyperLink ID="btnClose" runat="server" CssClass="close"><span class=" ti-close " aria-hidden="true"></span></asp:HyperLink>
                        </div>
        <div class="row">
          
            <!-- Image Section -->
            <div class="col-lg-6 col-md-12 " style="height:400px;width:300px;padding:0px">
                <div class="image-container">
                    
                   <div class="quickview-slider-active owl-carousel">
                                        
                            <asp:Image ID="froimgtag" CssClass="img-popup" runat="server" style="height:400px;width:400px;margin-top:40px" ImageUrl='<%# "Admin/assets/upload/" + Eval("Front_img") %>' />
                         <asp:Image ID="bckimgtag" CssClass="img-popup" runat="server" style="height:400px;width:400px;margin-top:30px" ImageUrl='<%# "Admin/assets/upload/" + Eval("Back_img") %>' />
                                      
                     </div>
                </div>
            </div>
            
         <div class="col-lg-6 col-md-12 " style="height:400px;width:500px;padding:5px;margin-top:30px;padding-right:40px;">
             
                                    <div class="product-details-content quickview-content-padding bg-gray" style="padding:0px;background-color:white">
                                     
                                        
                                        
                                            <h2 class="uppercase" >
                         <asp:Label ID="pnmlbl" runat="server" Text='<%# Eval("P_name") %>'></asp:Label>
                                            </h2>
                                        <h3>₹<asp:Label ID="prlbl" runat="server" Text='<%# Eval("Price") %>'></asp:Label></h3>
                                        <div class="product-details-peragraph">
                                            <p>
                         <asp:Label ID="detlbl" runat="server" Text='<%# Eval("detail") %>'></asp:Label></p>

                                        </div>
                                        
                                        <div class="product-details-meta">
                                            <span>SKU:India</span>
                                            <span>Categories:<asp:Label ID="catlbl" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                                            <span>Brand:<asp:Label ID="brlbl" runat="server" Text='<%# Eval("Brand") %>'></asp:Label>
                                            <span>Product ID:<asp:Label ID="pidlbl" runat="server" Text='<%#Eval("PId") %>' /><br /></span>
                                        </div>
                                        <div class="product-details-action-wrap" style="padding-left:50px">
                                            <div class="product-details-quality">
                                                <div class="cart-plus-minus">
                                                   <%-- <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">--%> <asp:TextBox ID="qttextbox" runat="server" CssClass="cart-plus-minus-box" Text="1" TextMode="Number"></asp:TextBox>  <asp:RangeValidator 
            ID="RangeValidator1" 
            runat="server" 
            ControlToValidate="qttextbox" 
            MinimumValue="1" 
            MaximumValue="10" 
            Type="Integer" 
            ErrorMessage="Quantity must be between 1 and 10." 
            ForeColor="Red" 
            Display="Dynamic">
        </asp:RangeValidator>

                                                </div>
                                            </div>
                                            <div class="product-details-cart">
                                                
                             <asp:LinkButton ID="btnAddToCart" runat="server" CommandName="AddToCart" CommandArgument='<%# Eval("Pid") %>' Text="Add to Cart">Add to cart</asp:LinkButton>
                                            </div>
                                           <%-- <div class="product-details-wishlist">
                                                <a title="Add to wishlist" href="#"><i class="ti-heart"></i></a>
                                            </div>--%>
                                           
                                        </div>
                                     
                                        <div class="product-details-social-wrap" style="padding-left:50px">
                                            <span>SHARE THIS PRODUCT</span>
                                            
                                            <div class="product-details-social">

                                                <a class="facebook" href="#"><i class="fa fa-facebook"></i></a>
                                                <a class="twitter" href="#"><i class="fa fa-twitter"></i></a>
                                                <a class="pinterest" href="#"><i class="fa fa-pinterest-p"></i></a>
                                                <a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

        </div>
    </div>                           
                 
     
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                
                      </ContentTemplate>
        </asp:UpdatePanel>
    
   
</asp:Panel>



                            
                        </ItemTemplate>
                                </asp:DataList>      
                  </div>
              </div>


                </ContentTemplate>

            </asp:UpdatePanel>
          </div>
     </div>
</asp:Content>


