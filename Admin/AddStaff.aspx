<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AddStaff.aspx.cs" Inherits="Admin_Add_Staff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            border-top-left-radius: 2px;
            border-top-right-radius: 2px;
            position: relative;
            height: 57px;
            line-height: 57px;
            letter-spacing: 0.2px;
            color: #000;
            font-size: 18px;
            font-weight: 400;
            text-transform: uppercase;
            text-align: center;
            left: 0px;
            top: 0px;
            border-bottom: 1px solid transparent;
            padding: 0 16px;
            background: #ddede0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section class="wrapper" style="padding-left:254px">
        <div class="panel panel-default" style="margin-top:45px">
            <div class="panel-heading">
                STAFF REGISTRATION
                
            </div>
            <div class="container">
                <div class="row" style="padding-top:10px">
                    <div class="col-md-6">
                     
                        <asp:Label runat="server" Font-Bold="true" >FIRST NAME</asp:Label>
                   <div style="padding-top:5px;padding-right:190px">
                        <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                        </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" Font-Bold="true">LAST NAME</asp:Label>
                    <div style="padding-top:5px;padding-right:190px">
                        <asp:TextBox ID="txtlast" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding-top:10px">
                    <div class="col-md-6">
                        <asp:Label runat="server" Font-Bold="true">GENDER</asp:Label>
                        <div>
                            <asp:RadioButtonList ID="radiobtn" runat="server">
                <asp:ListItem>MALE</asp:ListItem>
                <asp:ListItem>FEMALE</asp:ListItem>
            </asp:RadioButtonList>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" Font-Bold="true">AGE</asp:Label>
                        <div style="padding-top:5px;padding-right:190px">
                            <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row" style="padding-top:10px;text-align:center">
                    <div class="col-md-4" style="padding-left:320px">
                        <asp:Label runat="server" Font-Bold="true">DEPARTMENT</asp:Label>
                    </div>
                    <div class="col-md-8" style="padding-right:400px">
                        <asp:DropDownList ID="ddldepartment" runat="server">
                                        <asp:ListItem>Select</asp:ListItem>
                            <asp:ListItem>Head Nurse</asp:ListItem>
                            <asp:ListItem>Nurse</asp:ListItem>
                            <asp:ListItem>Attender</asp:ListItem>
                            <asp:ListItem>Cleaner</asp:ListItem>
                            <asp:ListItem>Security</asp:ListItem>
                            </asp:DropDownList>
                    </div>
                </div>
                <div class="row" style="padding-top:10px">
                    <div class="col-md-6">
                        <asp:Label runat="server" Font-Bold="true">MOBILE NO</asp:Label>
                        <div style="padding-top:5px;padding-right:190px">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtmobile"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <asp:Label runat="server" Font-Bold="true">EMAIL</asp:Label>
                        <div style="padding-top:5px;padding-right:190px">
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="row text-center" style="padding-top:20px;padding-bottom:20px;padding-right:130px">
                    <asp:Button ID="btn_register" CssClass="btn btn-success" runat="server" Text="Add Record" OnClick="btn_register_Click" />
                </div>
            </div>
            </div>

    </section>
</asp:Content>

