<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="MakeAppointment.aspx.cs" Inherits="Patient_MakeAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 155px;
        }

        .auto-style3 {
            height: 31px;
        }

        .auto-style5 {
            height: 58px;
        }

        .auto-style7 {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
    <div class="tips w3agile">
        <div class="container">
            
            <div  style="padding-left:115px">
                <div class="col-md-3" style="padding-left:250px;padding-top:6px">
                <label>SEARCH</label>
                    </div>
                <div class="col-md-3" style="padding-left:70px">
                <asp:TextBox ID="txtSearch" CssClass="form-control" runat="server"></asp:TextBox>   
                    </div>
                <div class="col-md-3" style="padding-right:140px">
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server"  OnClick="Button2_Click" Text="GO" Width="92px" />
                    </div>
                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div style="padding-bottom:60px"></div>
          
            <asp:Panel ID="Panel1" runat="server">
                <div style="padding-top:10px">
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style1" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" OnItemCommand="DataList1_ItemCommand" RepeatLayout="Flow">
                    <alternatingitemstyle font-bold="False" font-italic="False" font-overline="False" font-strikeout="False" font-underline="False" />
                    <itemstyle font-bold="False" font-italic="False" font-overline="False" font-strikeout="False" font-underline="False" />
                    <itemtemplate>
                        <div style="border:5px double #ddd">
                        <div class="row text-left" style="padding-top:5px;">
                            <div class="col-md-6 right" style="padding-top:20px">
                                <asp:Label ID="Label1" runat="server" BorderStyle="None" Height="166px" Text='<%# Eval("Tips") %>' Width="357px"></asp:Label>
                            </div>
                            <div class="col-md-6 left" style="padding-top:30px">
                                <asp:Image ID="Image1" runat="server" Height="155px" ImageUrl='<%# Eval("Photo") %>' Width="232px" />
                            </div>
                        </div>
                        <div class="text-right" style="padding-right:175px">
                            <asp:LinkButton ID="LinkButton1" runat="server" Style="text-decoration:underline;font-size:large;color:red" CommandArgument='<%# Eval("Id") %>'>View Feedback</asp:LinkButton>
                        </div>

                     
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>ID</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblId" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>NAME</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>GENDER</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblgender" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>PLACE</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblplace" runat="server" Text='<%# Eval("Place") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:5px;padding-left:100px">
                            <div class="col-md-4">
                                <label>MOBILE NO</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblmobile" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>SPECIALISED IN</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblspecial" runat="server" Text='<%# Eval("Specialised_In") %>'></asp:Label>

                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:5px;padding-left:100px">
                            <div class="col-md-4">
                                <label>LANGUAE KNOWN</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lbllanguage" runat="server" Text='<%# Eval("Language_Known") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>CLINICAL EXPERIENCE</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblexp" runat="server" Text='<%# Eval("Year_of_clinical_experience") %>'></asp:Label>
                            </div>
                        </div>
                        <div class="row text-left" style="padding-top:7px;padding-left:100px">
                            <div class="col-md-4">
                                <label>QUALIFICATION</label>
                            </div>
                            <div class="col-md-8">
                                <asp:Label ID="lblquali" runat="server" Text='<%# Eval("Education_qualification") %>'></asp:Label>
                            </div>
                        </div>
                        <div style="padding-bottom:15px;padding-top:25px">
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Make an appointment" CommandArgument='<%# Eval("Id") %>' CommandName="appointment" />
                        </div>
                   </div>
                    </itemtemplate>
                </asp:DataList>
                    </div>
            </asp:Panel>
           
        </div>
    </div>
</asp:Content>

