<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="pro_detail.aspx.cs" Inherits="pro_detail" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
     <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Product Detail</h2>
                        </div>
                    </div>
                </div>
         </div>
  
     
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1"   DataKeyNames="Pid"  CellPadding="100" style="margin-left:20px"  OnItemCommand="FormView1_ItemCommand">
                    <ItemTemplate>
                          <div class="shop-list-wrap mb-50">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="product-wrap">
                                            <div class="product-img pro-theme-color-border product-border" style="width:400px;margin-right:300px">
                                                <a href="product-details.html" >
                                                    <img src='<%# "Admin/assets/upload/" + Eval("Front_img") %>' alt="" >
                                                </a>
                                              
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-8 col-md-6 col-sm-6 col-12" style="padding-left:100px;padding-top:10px;">
                                        <div class="shop-list-content">
                                            <h3>ProcuctID:
                                 <asp:Label ID="PidLabel" runat="server" Text='<%# Eval("Pid") %>'></asp:Label>
                                  <asp:Label ID="imglbl" runat="server" Text='<%# Eval("Front_img") %>' Visible="false"></asp:Label>
                                            <br />
                                              <br />
                                                Product Name:
                                <asp:Label ID="P_nameLabel" runat="server" Text='<%# Bind("P_name") %>' /></h3>

                                            <div class="pro-list-price">
                                                <span>Price : $<asp:Label ID="prclbl" runat="server" Text='<%# Bind("Price") %>' /></span>
                                            </div>
                                             <div class="pro-list-price">
                                                <span>Brand : <asp:Label ID="Label2" runat="server" Text='<%# Bind("Brand") %>' /></span>
                                            </div>
                                             <div class="pro-list-price">
                                                <span>Gender : <asp:Label ID="Label3" runat="server" Text='<%# Bind("Gender") %>' /></span>
                                            </div>
                                            <p> <%# Eval("detail") %></p>
                                            


                                                    
                                    <div class="product-details-content quickview-content-padding " style="margin-top:2px;width:300px;height:100px;padding:2px">
                                       
                                        <div class="product-details-action-wrap" style="width:400px;margin-left:0px;margin-top:2px">
                                            <div class="product-details-quality" >
                                             <div class="cart-plus-minus">
                                                <%--   <input class="cart-plus-minus-box" type="text" name="qtybutton" value="2">--%>
                                                  <asp:TextBox ID="qtytxt" runat="server" CssClass="cart-plus-minus-box" Text="1"                      ></asp:TextBox>
                                                    
                                                </div>
                                              
                                              
                                            </div>
                                            <div class="product-details-cart">
                                                <%--<a title="Add to cart" href="#">Add to cart</a>--%>
                                                  <asp:Button ID="btnAddToCart" runat="server" Text="Add to Cart" CommandName="AddToCart" CommandArgument='<%# Eval("Pid") %>' Height="50" BorderStyle="Double" BorderColor="Black" Width="200" ForeColor="#993300"/>
                                              <%--  <asp:HyperLink ID="btnAddToCart" runat="server" CommandName="AddToCart" CommandArgument='<%# Eval("Pid") %>'>Add to cart</asp:HyperLink>--%>


                                            </div>
                                          
                                        </div>
                                       
                                    </div>
                              


                                        </div>
                                    </div>
                                </div>
                            </div>

                        
                    </ItemTemplate>
                    
                
                        </asp:FormView>
             
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [All_Products] WHERE ([Pid] = @Pid)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Pid" QueryStringField="pid" Type="Int32" />
        </SelectParameters>
     </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Button" BackColor="Black" Height="50px" Width="100" />
</asp:Content>


