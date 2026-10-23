<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="header" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
        }
        table th
        {
            background-color: #F7F7F7;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border-color: #ccc;
        }
    </style>
    <!-- Bootstrap -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <script type="text/javascript">
        $(function () {
            $('[id*=Button1]').on('click', function () {
                var id = $(this).closest('tr').find($('[id*=ProdID]')).text();
                $.ajax({
                    type: "POST",
                    url: "Default.aspx/GetNameUserName",
                    data: '{id:"' + id + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        var table = $("#modalbody").find('table').eq(0).clone(true);
                        var customers = response.d;
                        $("#modalbody").find('table').eq(0).remove();
                        $(customers).each(function () {
                            $(".id", table).html(this.Id);
                            $(".username", table).html(this.brand);
                            $(".name", table).html(this.Name);
                            $(".senddate", table).html(this.SendDate);
                            $(".contentpost", table).html(this.ContentPost);
                            $("#modalbody").append(table);
                            table = $("#modalbody").find('table').eq(0).clone(true);
                        });
                        $("#txtComments").val('');
                        $('#myModal').modal('show');
                    },
                    failure: function (response) {
                        alert(response.d);
                    },
                    error: function (response) {
                        alert(response.d);
                    }
                });
                return false;
            });

           
        });
    </script>

    <asp:DataList ID="dlstProducts" runat="server" RepeatColumns="3" CellSpacing="10"
            RepeatDirection="Horizontal" RepeatLayout="Table">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <b>ID : </b>
                            <asp:Label ID="ProdID" runat="server" Text='<%#Eval("PId") %>' /><br />
                            <b>Name : </b>
                            <asp:Label ID="lblName" runat="server" Text='<%#Eval("P_Name") %>' /><br />
                            <b>UserName : </b>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("brand") %>' />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Show" class="btn btn-primary btn-sm" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div class="container">
            <div class="row">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                        <%--Modal 1 Start--%>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                            aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">
                                            Name UserName Details</h4>
                                    </div>
                                    <div id="modalbody" align="center" class="modal-body">
                                        <table class="tblCustomer" cellpadding="2" cellspacing="0" border="1">
                                            <tr>
                                                <td>
                                                    <b>ID: </b><span class="id">
                                                        <%# Eval("ID") %></span>
                                                    <br />
                                                    <b>Name: </b><span class="name">
                                                        <%# Eval("Name") %></span>
                                                    <br />
                                                    <b>UserName: </b><span class="username">
                                                        <%# Eval("UserName")%></span><br />
                                                    <br />
                                                    <b>ContentPost: </b><span class="contentpost">
                                                        <%# Eval("ContentPost")%></span><br />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="modal-footer">
                                        <center>
                                            <asp:TextBox runat="server" ID="txtComments" TextMode="MultiLine" />
                                            <br />
                                            <asp:Button ID="btnSaveComments" Text="Save Comments" runat="server" />
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%--Modal 1 End--%>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


</asp:Content>

