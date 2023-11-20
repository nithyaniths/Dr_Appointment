<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="MyPrescription.aspx.cs" Inherits="Patient_MyPrescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 31px;
        }

        .auto-style5 {
            height: 31px;
            width: 330px;
        }

        .auto-style7 {
            height: 215px;
        }

        .auto-style10 {
            width: 330px;
        }

        .auto-style11 {
            width: 99px;
        }

        .auto-style12 {
            font-size: large;
        }

        .auto-style13 {
            height: 31px;
            width: 330px;
            font-size: large;
        }

        .auto-style14 {
            height: 58px;
        }

        .auto-style15 {
            width: 99px;
            height: 39px;
        }

        .auto-style16 {
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="tips w3agile">
        <div class="container">
            <h3 class="tittle-one" style="color:  white;background-color:#5bacf2">MY PRESCRIPTION DETAILS<span></span></h3>

   <%-- <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>--%>
    <div class="text-right" style="font-size:large">
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    </div>
    <%--<td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </td>
            <td class="auto-style16"></td>
            <td class="auto-style16"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>--%>
            <div style="align-content:center">
            <asp:DataList ID="OutterDataList" runat="server" Font-Bold="true"  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatLayout="Flow">
                <itemtemplate>

                    <div class="row" style="padding-left:150px">
                        <div class="col-md-4">
                        <label>Doctor's Name<strong></strong></label>
                            </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server"  Text='<%# Eval("Name") %>'><strong></strong></asp:Label>
                        </div>
                        </div>
                    <div class="row" style="padding-left:150px">
                        <div class="col-md-4">
                            <label>Mobile No<strong></strong></label>
                        </div>
                        <div class="col-md-4">
                              <asp:Label ID="Label2" runat="server"  Text='<%# Eval("Mobile") %>'><strong></strong></asp:Label>
                        </div>
                    </div>
                     <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                   <%-- </div>
                     &nbsp;&nbsp; &nbsp;<table class="auto-style1">
                        <tr>
                            <td class="auto-style5"></td>
                            <td class="auto-style2"></td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style13"><strong>Doctor&#39;s Name</strong></td>
                            <td class="auto-style2">
                                <strong>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("Name") %>'></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>--%>
                  
                     <%--<td class="auto-style13"><strong>MobileNo</strong></td>
                            <td class="auto-style2">
                                <strong>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style12" Text='<%# Eval("Mobile") %>'></asp:Label>
                                </strong>
                            </td>
                            <td class="auto-style2"></td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                     <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# Eval("Id") %>' />
                            </td>
                            <td>
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">--%>
                    <asp:DataList ID="InnerDataList" runat="server" BackColor="White" BorderColor="#3366CC" Width="300px" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
                        <footerstyle backcolor="#99CCCC" forecolor="#003399" />
                        <headerstyle backcolor="#003399" font-bold="True" forecolor="#CCCCFF" />
                        <itemstyle backcolor="White" forecolor="#003399" />
                        <itemtemplate>

                           <div class="row">
                                 <div class="col-md-4">
                                     <label>Health Issue<strong></strong></label>
                            </div>
                               <div class="col-md-6">
                                     <asp:Label ID="Label3" runat="server" Text='<%# Eval("Reason_for_Appointment") %>'><strong></strong></asp:Label>
                               </div>
                           </div>
                            <div class="row">
                                <div class="col-md-4">
                                   <label>Prescription<strong></strong></label> 
                                </div>
                                <div class="col-md-6">
                                     <asp:Label ID="Label5" runat="server" Text='<%# Eval("Prescription") %>'><strong></strong></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Prescription Date<strong></strong></label>
                                </div>
                                <div class="col-md-6">
                                     <asp:Label ID="Label6" runat="server" Text='<%# Eval("PrescriptionDate") %>'><strong></strong></asp:Label>                                  
                                </div>
                            </div>
                           <table class="auto-style1">
                               <%-- <tr>
                                    <td>Health Issue</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Reason_for_Appointment") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp; </td>
                                </tr>
                                <tr>--%>
                                   <%-- <td>Prescription</td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Prescription") %>'></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>--%>
                               <%-- <tr>
                                    <td class="auto-style14">Prescription Date</td>
                                    <td class="auto-style14">
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("PrescriptionDate") %>'></asp:Label>
                                    </td>
                                    <td class="auto-style14"></td>
                                </tr>--%>
                               <%-- <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>--%>
                            </table>
                        </itemtemplate>
                        <selecteditemstyle backcolor="#009999" font-bold="True" forecolor="#CCFF99" />
                    </asp:DataList>
                     <%-- </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>--%>
                </itemtemplate>
     
    </asp:DataList>
          </div>
       <%-- </tr>
        <tr>
            <td>&nbsp;&nbsp; &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
        </tr>
    </table>--%>
            </div>
        </div>
</asp:Content>

