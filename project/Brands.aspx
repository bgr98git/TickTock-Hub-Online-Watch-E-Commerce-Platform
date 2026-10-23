<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="Brands.aspx.cs" Inherits="Brands" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Brands</h2>
                        </div>
                    </div>
                </div>
         </div>


           <div id="shop-3" class="tab-pane" style="padding-top:70px;padding-left:70px">
                      <asp:DataList ID="rptProducts" runat="server" RepeatDirection="Horizontal"  RepeatColumns="3" >
                       <ItemTemplate>
                       <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-12" >
                           
                                    <div class="product-wrap  mb-55" style="height:550px;width:370px">
                                        <div class="product-img pro-theme-color-border">
                                          <a class="image">

                                             <img src='<%# "Admin/assets/upload/" + Eval("B_img") %>' alt="">
                                                <%--<img class="img-02" src='<%# "Admin/assets/upload/" + Eval("Back_img") %>' alt="">--%>
                                                
                                            </a>
                                           <div class="bquickview" style="padding-bottom:15px;">
                                                

                                              <%-- <asp:Button ID="Button1" runat="server" Text="View Product" CssClass="button btn-quickview" PostBackUrl='<%#"~/pro_detail.aspx?pid=" +Eval("Bid")%>'/>--%>

                                         

                                            </div>
                                        </div>
                                        <div class="product-caption">
                                            <p class="mf-product">
                                                <a href="#" title="rada">rada</a>
                                            </p>
                                           
                                            <h4 class="product-name">
                                                <a href="#"><%# Eval("B_name") %></a>
                                            </h4>
                                          
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
                                               
                                                <div class="product-action product-action-position-1 pro-action-theme-color">
                                                   <%-- <a title="Add to Wishlist" href="#"><i class="ti-heart"></i></a>--%>                        <asp:Button ID="Button1" runat="server" Text="View Product" CssClass="button btn-quickview" PostBackUrl='<%# ResolveUrl("~/watch.aspx?bnm=") + Eval("B_name") %>'  Font-Bold="true" Font-Size="X-Large"/>                          
                                                                                              
                                                    <%--<a title="Add to Compare" href="#"><i class="ti-reload"></i></a>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                               
                         </div>




                            
                        </ItemTemplate>
                                </asp:DataList>      
                  </div>
</asp:Content>


