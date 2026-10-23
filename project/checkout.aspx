<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="project_checkout" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Check Out</h2>
                        </div>
                    </div>
                </div>
            </div>
    <style>
        table {
    width: 100%;
    border-collapse: collapse;
   
}
th, td {
    text-align: left;
    padding: 8px;
   
}
th {
    background-color: #f2f2f2;
     font-size:large;
      
}


    </style>
     <div class="checkout-main-area pt-90 pb-90">
                <div class="container">
                  
                    <div class="checkout-wrap pt-30">
                        <div class="row">
                            <div class="col-lg-7">
                                <div class="billing-info-wrap" style="border:5px groove Black;padding:10px;height:860px" >
                                    <h3>Billing Details</h3>
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>Your UserID <abbr class="required" title="required">*</abbr></label>
                                                  <asp:TextBox ID="uidlbl" runat="server" BackColor="#e6e6e6" Enabled="false"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>Your Full Name<abbr class="required" title="required">*</abbr></label>
                                                <asp:TextBox ID="fullnmtxt" runat="server" BackColor="#e6e6e6"></asp:TextBox>
                                            </div>
                                        </div>
                                      
                                         <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>City <abbr class="required" title="required">*</abbr></label>
                                                <asp:TextBox ID="citytxt" runat="server" BackColor="#e6e6e6"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="billing-info mb-20">
                                                <label>Street Address <abbr class="required" title="required">*</abbr></label>
                                               
                                                <asp:TextBox ID="houstxt" runat="server" CssClass="billing-address" placeholder="House number and street name" TextMode="MultiLine" Rows="4" BackColor="#e6e6e6"></asp:TextBox>
                                              
                                              
                                            </div>
                                        </div>
                                       
                                       
                                        <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>Pincode/ ZIP <abbr class="required" title="required">*</abbr></label>
                                                <asp:TextBox ID="pintxt" runat="server" BackColor="#e6e6e6"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>Phone <abbr class="required" title="required">*</abbr></label>
                                                <asp:TextBox ID="phontxt" runat="server" BackColor="#e6e6e6"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12">
                                            <div class="billing-info mb-20">
                                                <label>Email Address <abbr class="required" title="required">*</abbr></label>
                                                <asp:TextBox ID="emtxt" runat="server" BackColor="#e6e6e6"> </asp:TextBox>
                                            </div>
                                        </div>
                                         
                                    </div>
                            
                                    
                                </div>
                            </div>
                            <div class="col-lg-5">
                                 
                                <div class="your-order-area" style="border:5px groove Black;padding:10px">
                                    <h3 >Your Order Summary </h3>
                                    <div class="your-order-wrap gray-bg-4" >
                                       
                                        <div class="your-order-info-wrap" >
                                           
                                            <div class="your-order-middle" style="margin-top:0px;padding-top:0px;">
                                                 <asp:Repeater ID="cart" runat="server">
                                                      <HeaderTemplate>
         <table>
            <thead>
                <tr>
                    <th >PRODUCT</th>
                    <th style="text-align: right;">TOTAL</th>
                </tr>
            </thead>
            <tbody>
    </HeaderTemplate>
                                                      <ItemTemplate>
        <tr>
            <td>
                <%# Eval("P_name") %> × <%# Eval("Quantity") %>
            </td>
            <td style="text-align: right;">
                <%# string.Format("{0:N0}", Convert.ToInt32(Eval("Quantity")) * Convert.ToDecimal(Eval("Price"))) %>
            </td>
        </tr>
    </ItemTemplate>
       <FooterTemplate>
            </tbody>
        </table>
       </FooterTemplate>
                          
                                </asp:Repeater>
                                            </div>
                                         
                                            <div class="your-order-info order-subtotal">
                                                <ul>
                                                    <li style="margin-left:10px;">Subtotal <span><asp:Label ID="subtotalbl" runat="server" Text="57"></asp:Label> </span></li>
                                                </ul>
                                            </div>
                                               <div class="your-order-info order-subtotal">
                                                <ul>
                                                    <li style="margin-left:10px;">ShippingRate <span><asp:Label ID="shipratelbl" runat="server" Text="57"></asp:Label> </span></li>
                                                </ul>
                                            </div>

                                            
                                            <div class="your-order-info order-total">
                                                <ul>
                                                    <li style="margin-left:10px;font-size:26px;font-weight:700">Total <span><asp:Label ID="totallbl" runat="server" Text="57" Font-Size="20"></asp:Label></span></li>
                                                </ul>
                                            </div>
                                        </div>
                                    <h3 style="margin-top:40px">Choose Payment Method </h3>
                                        <div class="payment-method">
                                            <div class="pay-top sin-payment">
                                                <%--<input id="payment_method_1" class="input-radio" type="radio" value="cheque" checked="checked" name="payment_method">--%>
                                                <asp:RadioButton ID="bank" runat="server"  CssClass="input-radio" GroupName="pay" />
                                                <label for="payment_method_1"> Direct Bank Transfer </label>
                                                <div class="payment-box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                                </div>
                                            </div>
                                            <div class="pay-top sin-payment">
                                                <%--<input id="payment-method-2" class="input-radio" type="radio" value="cheque" name="payment_method">--%>
                                                <asp:RadioButton ID="check" runat="server"  CssClass="input-radio" GroupName="pay" />
                                                <label for="payment-method-2">Check payments</label>
                                                <div class="payment-box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                                </div>
                                            </div>
                                            <div class="pay-top sin-payment">
                                                <%--<input id="payment-method-3" class="input-radio" type="radio" value="cheque" name="payment_method">--%>
                                                <asp:RadioButton ID="cash" runat="server"  CssClass="input-radio" GroupName="pay" />
                                                <label for="payment-method-3">Cash on delivery </label>
                                                <div class="payment-box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                                </div>
                                            </div>
                                            <div class="pay-top sin-payment sin-payment-3">
                                                <%--<input id="payment-method-4" class="input-radio" type="radio" value="cheque" name="payment_method">--%>
                                                <asp:RadioButton ID="gpay" runat="server"  CssClass="input-radio" GroupName="pay" />
                                                <label for="payment-method-4">GoogelPay <img alt="" src="assets/images/icon-img/payment.png"><a href="#">What is PayPal?</a></label>
                                                <div class="payment-box payment_method_bacs">
                                                    <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="Place-order mt-40">
                                        
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Place Order</asp:LinkButton>
                                    </div>
                                </div>
                                     
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>










</asp:Content>


