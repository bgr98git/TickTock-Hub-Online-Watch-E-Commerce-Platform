<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="project_cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <div class="breadcrumb-area section-padding-1 bg-gray breadcrumb-ptb-1" style="background-image:url(assets/images/banner/breadcrumb.jpg);">
                <div class="container">
                    <div class="breadcrumb-content text-center">
                        <div class="breadcrumb-title">
                            <h2>Shopping Cart</h2>
                        </div>
                    </div>
                </div>
            </div>

     <!-- cart start -->
            <div class="cart-main-area pt-110 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-12">
                            <form action="#">
                                <div class="row">
                                    <div class="bg-gray-2 pt-50 pr-50 pb-50 pl-50" style="margin-left:100px;background-color:gainsboro;width:1000px">
                                


                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="8"   Width="900px"  ForeColor="Black" GridLines="Vertical" CellSpacing="40"  HeaderStyle-BorderColor="White" HorizontalAlign="Center" HeaderStyle-Height="50" HeaderStyle-HorizontalAlign="Center" OnRowDeleted="GridView1_RowDeleted" OnRowUpdated="GridView1_RowUpdated" DataSourceID="SqlDataSource1" DataKeyNames="CartID" >
                                          <AlternatingRowStyle BackColor="#CCCCCC" HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="Editqty" ShowHeader="False">
                                                    <EditItemTemplate>
                                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                       <%-- <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>--%>
                                                         <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"  ImageUrl="~/assets/icons8-change-48.png" Height="37" Width="45" ImageAlign="AbsMiddle" BorderStyle="None" />

                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField ShowHeader="true" HeaderText="Action">
                                                    <ItemTemplate>
                                                        <%--<asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>--%>
                                                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"  ImageUrl="~/Admin/assets/images/icons8-delete-button-64.png" Height="30" Width="40" ImageAlign="AbsMiddle" BorderStyle="None" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="CartID" InsertVisible="False" SortExpression="CartID">
                                                    <%--<EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("CartID") %>'></asp:Label>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("CartID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="UserID" SortExpression="UserID">
                                                   <%-- <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserID") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("UserID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="ProductID" SortExpression="ProductID">
                                                    <%--<EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ProductID") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="F_img" SortExpression="F_img">
                                                   <%-- <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("F_img") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("F_img") %>' Visible="false"></asp:Label>
                                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Admin/assets/upload/" + Eval("F_img") %>' Height="100px" Width="120px" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="P_name" SortExpression="P_name">
                                                    <%--<EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("P_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("P_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                                                    <%--<EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                                    </EditItemTemplate>--%>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Quantity") %>' BorderColor="Black" BorderWidth="2" TextMode="Number" ForeColor="Black" BackColor="#ffffcc" Width="50"></asp:TextBox>
                                                        <asp:RangeValidator 
            ID="RangeValidator1" 
            runat="server" 
            ControlToValidate="TextBox6" 
            MinimumValue="1" 
            MaximumValue="10" 
            Type="Integer" 
            ErrorMessage="Quantity must be between 1 and 10." 
            ForeColor="Red" 
            Display="Dynamic">
        </asp:RangeValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                      <asp:Label ID="Label7" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>    
                                                
                                                  
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                               
                                            </Columns>
                                              
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <RowStyle HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                        </asp:GridView>















                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [CartID], [UserID], [ProductID], [P_name], [F_img], [Quantity], [Price] FROM [Cart] WHERE (([UserID] = @UserID) AND ([Status] = @Status))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cart] WHERE [CartID] = @original_CartID AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([ProductID] = @original_ProductID) OR ([ProductID] IS NULL AND @original_ProductID IS NULL)) AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([F_img] = @original_F_img) OR ([F_img] IS NULL AND @original_F_img IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Cart] ([UserID], [ProductID], [P_name], [F_img], [Quantity], [Price]) VALUES (@UserID, @ProductID, @P_name, @F_img, @Quantity, @Price)" UpdateCommand="UPDATE [Cart] SET [UserID] = @UserID, [ProductID] = @ProductID, [P_name] = @P_name, [F_img] = @F_img, [Quantity] = @Quantity, [Price] = @Price WHERE [CartID] = @original_CartID AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([ProductID] = @original_ProductID) OR ([ProductID] IS NULL AND @original_ProductID IS NULL)) AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([F_img] = @original_F_img) OR ([F_img] IS NULL AND @original_F_img IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_CartID" Type="Int32" />
                                                <asp:Parameter Name="original_UserID" Type="Int32" />
                                                <asp:Parameter Name="original_ProductID" Type="Int32" />
                                                <asp:Parameter Name="original_P_name" Type="String" />
                                                <asp:Parameter Name="original_F_img" Type="String" />
                                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                                                <asp:Parameter Name="original_Price" Type="Decimal" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                                <asp:Parameter Name="P_name" Type="String" />
                                                <asp:Parameter Name="F_img" Type="String" />
                                                <asp:Parameter Name="Quantity" Type="Int32" />
                                                <asp:Parameter Name="Price" Type="Decimal" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserID" SessionField="uid" Type="Int32" DefaultValue="1" />
                                                <asp:Parameter DefaultValue="No" Name="Status" Type="String" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                                <asp:Parameter Name="P_name" Type="String" />
                                                <asp:Parameter Name="F_img" Type="String" />
                                                <asp:Parameter Name="Quantity" Type="Int32" />
                                                <asp:Parameter Name="Price" Type="Decimal" />
                                                <asp:Parameter Name="original_CartID" Type="Int32" />
                                                <asp:Parameter Name="original_UserID" Type="Int32" />
                                                <asp:Parameter Name="original_ProductID" Type="Int32" />
                                                <asp:Parameter Name="original_P_name" Type="String" />
                                                <asp:Parameter Name="original_F_img" Type="String" />
                                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                                                <asp:Parameter Name="original_Price" Type="Decimal" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>















                                        <div class="cart-shiping-update-wrapper">
                                            
                                            <div class="cart-clear">
                                               <asp:LinkButton ID="lnkClearCart" runat="server" OnClick="lnkClearCart_Click" CssClass="update-cart">Clear Cart</asp:LinkButton>
                                                
                                            </div>
                                        </div>
                                    </div>
                                  <%--  <div class="col-lg-4">
                                        <div class="grand-total-wrap bg-gray-2">
                                            <h4>Cart Totals</h4>
                                            <div class="grand-total-content">
                                                <ul>
                                                    <li>Subtotal <span> $87.00</span></li>
                                                    <li>Shipping
                                                        <ul>
                                                            <li><input type="radio" name="shipping" value="info" checked="checked">Flat rate: $10</li>
                                                            <li><input type="radio" name="shipping" value="info2">Free shipping</li>
                                                            <li><input type="radio" name="shipping" value="info3">Local pickup</li>
                                                        </ul>
                                                    </li>
                                                    <li>Total Price <span>$87.00</span> </li>
                                                </ul>
                                            </div>
                                            <div class="grand-btn">
                                                <a href="#">Proceed to checkout</a>
                                            </div>
                                        </div>
                                    </div>--%>

                                    <asp:Button ID="Button1" runat="server" Text="Continue Shopping"  BackColor="#333333" ForeColor="White" style="border-radius:40px;margin-top:20px;margin-left:100px" Height="40" Width="150" PostBackUrl="~/shop_modal.aspx"/>
                                     <asp:Button ID="Button2" runat="server" Text="Proceed to checkout"  BackColor="#333333" ForeColor="White" style="border-radius:40px;margin-top:20px;margin-left:40px" Height="40" Width="150" PostBackUrl="~/checkout.aspx"/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- cart end -->
           
</asp:Content>


