<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bca.aspx.cs" Inherits="bca" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:con %>" DeleteCommand="DELETE FROM [Cart] WHERE [CartID] = @original_CartID AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([ProductID] = @original_ProductID) OR ([ProductID] IS NULL AND @original_ProductID IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([F_img] = @original_F_img) OR ([F_img] IS NULL AND @original_F_img IS NULL)) AND (([DateAdded] = @original_DateAdded) OR ([DateAdded] IS NULL AND @original_DateAdded IS NULL))" InsertCommand="INSERT INTO [Cart] ([UserID], [ProductID], [Quantity], [P_name], [Price], [F_img], [DateAdded]) VALUES (@UserID, @ProductID, @Quantity, @P_name, @Price, @F_img, @DateAdded)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cart] WHERE ([UserID] = @UserID)" UpdateCommand="UPDATE [Cart] SET [UserID] = @UserID, [ProductID] = @ProductID, [Quantity] = @Quantity, [P_name] = @P_name, [Price] = @Price, [F_img] = @F_img, [DateAdded] = @DateAdded WHERE [CartID] = @original_CartID AND (([UserID] = @original_UserID) OR ([UserID] IS NULL AND @original_UserID IS NULL)) AND (([ProductID] = @original_ProductID) OR ([ProductID] IS NULL AND @original_ProductID IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([P_name] = @original_P_name) OR ([P_name] IS NULL AND @original_P_name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([F_img] = @original_F_img) OR ([F_img] IS NULL AND @original_F_img IS NULL)) AND (([DateAdded] = @original_DateAdded) OR ([DateAdded] IS NULL AND @original_DateAdded IS NULL))">
                                            <DeleteParameters>
                                                <asp:Parameter Name="original_CartID" Type="Int32" />
                                                <asp:Parameter Name="original_UserID" Type="Int32" />
                                                <asp:Parameter Name="original_ProductID" Type="Int32" />
                                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                                                <asp:Parameter Name="original_P_name" Type="String" />
                                                <asp:Parameter Name="original_Price" Type="Decimal" />
                                                <asp:Parameter Name="original_F_img" Type="String" />
                                                <asp:Parameter Name="original_DateAdded" Type="DateTime" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                                <asp:Parameter Name="Quantity" Type="Int32" />
                                                <asp:Parameter Name="P_name" Type="String" />
                                                <asp:Parameter Name="Price" Type="Decimal" />
                                                <asp:Parameter Name="F_img" Type="String" />
                                                <asp:Parameter Name="DateAdded" Type="DateTime" />
                                            </InsertParameters>
                                            <SelectParameters>
                                                <asp:SessionParameter Name="UserID" SessionField="uid" Type="Int32" />
                                            </SelectParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="UserID" Type="Int32" />
                                                <asp:Parameter Name="ProductID" Type="Int32" />
                                                <asp:Parameter Name="Quantity" Type="Int32" />
                                                <asp:Parameter Name="P_name" Type="String" />
                                                <asp:Parameter Name="Price" Type="Decimal" />
                                                <asp:Parameter Name="F_img" Type="String" />
                                                <asp:Parameter Name="DateAdded" Type="DateTime" />
                                                <asp:Parameter Name="original_CartID" Type="Int32" />
                                                <asp:Parameter Name="original_UserID" Type="Int32" />
                                                <asp:Parameter Name="original_ProductID" Type="Int32" />
                                                <asp:Parameter Name="original_Quantity" Type="Int32" />
                                                <asp:Parameter Name="original_P_name" Type="String" />
                                                <asp:Parameter Name="original_Price" Type="Decimal" />
                                                <asp:Parameter Name="original_F_img" Type="String" />
                                                <asp:Parameter Name="original_DateAdded" Type="DateTime" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>















                                        <br />
                                        <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:TemplateField ShowHeader="False">
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>

    </div>
    </form>
</body>
</html>
