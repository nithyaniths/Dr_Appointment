<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewPatient.aspx.cs" Inherits="Admin_ViewPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style13 {
            margin-left: 208px;
            margin-bottom: 0px;
        }

        .auto-style14 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 0px;
            top: 28px;
            height: 9px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style15 {
            position: relative;
            min-height: 1px;
            float: left;
            width: -2147483648%;
            left: 0px;
            top: 0px;
            height: 119px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style16 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 1%;
            left: 0px;
            top: 0px;
            margin-left: 90px;
            margin-bottom: 309px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
        <section id="main-content">
            <section class="wrapper">
                <div class="table-agile-info" style="font-size:70%">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            PATIENT RECORD
                        </div>
         

                        <asp:GridView ID="GridView1" runat="server"  CssClass="table table-hover table-bordered"  AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting"  OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">

                            <Columns>
                                <asp:BoundField DataField="Id"  HeaderText="ID" ReadOnly="True" />
                                <asp:BoundField DataField="Name"  HeaderText="NAME" />
                                <asp:BoundField DataField="Gender" HeaderText="GENDER" />
                                <asp:BoundField DataField="Age" HeaderText="AGE" />
                                <asp:BoundField DataField="Address" HeaderText="ADDRESS" />
                                <asp:BoundField DataField="MobileNo" HeaderText="MOBILE" />
                                <asp:BoundField DataField="Email" HeaderText="EMAIL" />
                                <asp:CommandField ShowSelectButton="True"  />
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" ShowHeader="True" />
                            </Columns>

                        </asp:GridView>

                        <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="auto-style13">
                            <div class="container">
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>ID</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:Label ID="lblId" runat="server"></asp:Label>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>HEIGHT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtheight" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>WEIGHT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtweight" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>BLOOD GROUP</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtblood" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>REASON FOR APPOINTMENT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtreason" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>TAKING ANY MEDICATION CURRENTLY</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:RadioButtonList ID="redolist" runat="server">
                                            <asp:ListItem>YES</asp:ListItem>
                                            <asp:ListItem>NO</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>EMERGENCY CONTACT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtemergency" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>REALTIONSHIP WITH PATIENT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtrelation" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row" style="padding-top: 6px">
                                    <div class="col-md-4">
                                        <label>CONTACT</label>
                                    </div>
                                    <div class="col-md-8" style="padding-right: 620px">
                                        <asp:TextBox ID="txtcontact" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div style="padding-left: 170px;padding-top:15px;padding-bottom:20px">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="UPDATE" CommandName="Update" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="DELETE" CommandName="Delete" />
                                </div>
                            </div>
                        </asp:Panel>


                    </div>
                </div>
            </section>
        </section>
  
</asp:Content>

