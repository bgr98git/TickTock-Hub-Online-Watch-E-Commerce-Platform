<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Pid" DataSourceID="SqlDataSource2" OnRowUpdating="GridView1_RowUpdating1">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pid" InsertVisible="False" SortExpression="Pid">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pid") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Pid") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               
                <asp:TemplateField HeaderText="P_name" SortExpression="P_name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("P_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("P_name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Brand" SortExpression="Brand">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="B_name" DataValueField="B_name" SelectedValue='<%# Bind("Brand") %>'></asp:DropDownList>
                       
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Brand") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                    <EditItemTemplate>
                      
                         <asp:RadioButtonList ID="rblGender" runat="server" SelectedValue='<%# Bind("Gender") %>'>
                                  <asp:ListItem Value="Male">Male</asp:ListItem>
                                  <asp:ListItem Value="Female">Female</asp:ListItem>
                                  <asp:ListItem Value="Female">Kids</asp:ListItem>
                         </asp:RadioButtonList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Front_img" SortExpression="Front_img">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Front_img") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Back_img" SortExpression="Back_img">
                    <EditItemTemplate>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Back_img") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [All_Products] WHERE [Pid] = @original_Pid AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([Brand] = @original_Brand) OR ([Brand] IS NULL AND @original_Brand IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Front_img] = @original_Front_img) OR ([Front_img] IS NULL AND @original_Front_img IS NULL)) AND (([Back_img] = @original_Back_img) OR ([Back_img] IS NULL AND @original_Back_img IS NULL))" InsertCommand="INSERT INTO [All_Products] ([P_name], [Brand], [Gender], [Price], [Front_img], [Back_img]) VALUES (@P_name, @Brand, @Gender, @Price, @Front_img, @Back_img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [All_Products]" UpdateCommand="UPDATE [All_Products] SET [P_name] = @P_name, [Brand] = @Brand, [Gender] = @Gender, [Price] = @Price, [Front_img] = @Front_img, [Back_img] = @Back_img WHERE [Pid] = @original_Pid AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([Brand] = @original_Brand) OR ([Brand] IS NULL AND @original_Brand IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Front_img] = @original_Front_img) OR ([Front_img] IS NULL AND @original_Front_img IS NULL)) AND (([Back_img] = @original_Back_img) OR ([Back_img] IS NULL AND @original_Back_img IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Pid" Type="Int32" />
                <asp:Parameter Name="original_P_name" Type="String" />
                <asp:Parameter Name="original_Brand" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Front_img" Type="String" />
                <asp:Parameter Name="original_Back_img" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="P_name" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Front_img" Type="String" />
                <asp:Parameter Name="Back_img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="P_name" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Front_img" Type="String" />
                <asp:Parameter Name="Back_img" Type="String" />
                <asp:Parameter Name="original_Pid" Type="Int32" />
                <asp:Parameter Name="original_P_name" Type="String" />
                <asp:Parameter Name="original_Brand" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Price" Type="Decimal" />
                <asp:Parameter Name="original_Front_img" Type="String" />
                <asp:Parameter Name="original_Back_img" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [All_Products]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT [B_name] FROM [Brand]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
