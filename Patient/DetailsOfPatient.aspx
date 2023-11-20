<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="DetailsOfPatient.aspx.cs" Inherits="Patient_DetailsOfPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style4 {
            height: 59px;
        }

        .auto-style7 {
            height: 59px;
            width: 386px;
        }

        .auto-style9 {
            margin-right: 0px;
        }

        .auto-style11 {
            width: 255px;
        }

        .auto-style13 {
            width: 357px;
        }

        .auto-style15 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="tips w3agile" id="content" style="margin: 0 auto">

        <div style="padding-left: 560px; padding-bottom: 20px">
            <asp:LinkButton ID="LinkButton1" CssClass="btn btn-link btn-success" Style="text-decoration: underline; font-size: large" runat="server" ForeColor="#009999" OnClick="LinkButton1_Click">My HealthRecord</asp:LinkButton>
        </div>

        <h3 class="title" style="color: white; background-color: #5bacf2">PROFILE<span></span></h3>

        <asp:FormView ID="FormView1" runat="server" OnItemDeleting="FormView1_ItemDeleting" OnItemUpdating="FormView1_ItemUpdating" OnModeChanging="FormView1_ModeChanging" RenderOuterTable="False">
            <edititemtemplate>

                <div class="container">
                   
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>ID</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>NAME</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>GENDER</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>AGE</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Eval("Age") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>ADDRESS</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Eval("Address") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>MOBILE NO</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Eval("MobileNo") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="text-align: left; padding-left: 330px; padding-top: 10px">
                            <div class="col-md-4" style="padding-top: 7px">
                                <label>EMAIL</label>
                            </div>
                            <div class="col-md-8" style="padding-right: 350px">
                                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                            </div>
                        </div>
                    </div>
               
                <div class="row" style="padding-top: 20px">
                    <div class="col-md-4" style="padding-top: 20px; padding-left: 515px">
                        <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" CommandName="Update" Text="UPDATE" />
                    </div>
                    <div class="col-md-4" style="padding-top: 20px; padding-right: 30px">
                        <asp:Button ID="Button4" CssClass="btn btn-info" runat="server" CommandName="Cancel" Text="CANCEL" />
                    </div>
                </div>

            </edititemtemplate>
            <footerstyle />
            <itemtemplate>

                <div class="container">
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>ID</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique;" ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>NAME</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>GENDER</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblGender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>AGE</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblAge" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>ADDRESS</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblAddress" runat="server" Text='<%# Eval("Address") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>MOBILE NO</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblMobile" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 400px; padding-top: 10px">
                        <div class="col-md-4" style="padding-top: 4px">
                            <label>EMAIL</label>
                        </div>
                        <div class="col-md-8">
                            <asp:Label Style="font-size: 15px; font-style: oblique" ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </div>
                    </div>
                    </div>
            
                <div class="row" style="padding-top: 50px">
                    <div class="col-md-6" style="padding-top: 20px; padding-left: 480px">
                        <asp:Button ID="Button2" Style="padding-right: 21px; padding-left: 21PX" CssClass="btn btn-primary " runat="server" CommandName="Edit" Text="EDIT" />
                    </div>
                    <div class="col-md-6" style="padding-top: 20px; padding-right: 460px">
                        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" CommandName="Delete" Text="DELETE" />
                    </div>
                </div>


            </itemtemplate>

        </asp:FormView>

        <div class="clearfix"></div>
    </div>

</asp:Content>

