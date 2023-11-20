<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="HealthDetails.aspx.cs" Inherits="Patient_HealthDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="tips w3agile">
       
            <h3 class="title" style="color:  white;background-color:#5bacf2">HEALTH RECORD<span></span></h3>

            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>HEIGHT</label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox CssClass="form-control" ID="txtheight"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>WEIGHT</label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox CssClass="form-control" ID="txtweight"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>BLOOD GROUP</label>
                </div>
                <div class="col-md-7">
                   <asp:TextBox CssClass="form-control" ID="txtblood" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>REASON FOR APPOINTMENT</label>
                </div>
                <div class="col-md-7">
                     <asp:TextBox CssClass="form-control" ID="txtreason"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>TAKING ANY MEDICATION CURRENTLY</label>
                </div>
                <div class="col-md-7">
                    <asp:RadioButtonList ID="redolist" runat="server">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
            <div style="padding-top:20px">
             <h4 class="tittle-one text-center"style="color:#5bacf2">EMERGENCY CONTACT<span></span></h4>
                </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>EMERGENCY CONTACT</label>
                </div>
                <div class="col-md-7">
                    <asp:TextBox CssClass="form-control" ID="txtemergency" runat="server" ></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>RELATIONSHIP WITH PATIENT</label>
                </div>
                <div class="col-md-7">
                     <asp:TextBox CssClass="form-control" ID="txtrelation"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px">
                <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                    <label>CONTACT</label>
                </div>
                <div class="col-md-7">
                     <asp:TextBox CssClass="form-control" ID="txtcontact"  runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top:10px">
                <div class=" col-md-6" style="padding-left:480px">
                 <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                    </div>
                  <div>
                  <asp:LinkButton ID="LinkButton1" CssClass="text-primary" Style="text-decoration:underline" runat="server"  OnClick="LinkButton1_Click">Back</asp:LinkButton>
            </div>
            </div>
            <%-- <table class="table ">
                  
    <tr>
    <th>Height</th>
        <td><strong>
            <asp:TextBox CssClass="form-control"  ID="txtheight"  Height="22px" Width="433px"  runat="server"></asp:TextBox>
            </strong></td>
    </tr>
    <tr>--%>
           <%-- <th>Weight</th>
            <td>
                <asp:TextBox CssClass="form-control" ID="txtweight" Height="22px" Width="433px" runat="server"></asp:TextBox>
            </td>
            </tr>
    <tr>--%>
       <%-- <th>BloodGroup</th>
        <td class="auto-style7">
            <asp:TextBox CssClass="form-control" ID="txtblood" Height="22px" Width="433px" runat="server"></asp:TextBox>
        </td>
    </tr>--%>
           <%-- <tr>
                <th>Reason for appointment</th>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtreason" Height="22px" Width="433px" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>--%>
               <%-- <th>Taking any medication currently</th>
                <td>
                    <asp:RadioButtonList ID="redolist" runat="server">
                        <asp:ListItem>YES</asp:ListItem>
                        <asp:ListItem>NO</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>--%>
           <%-- <tr>
                <td class="text-center text-primary" colspan="2">&nbsp;<strong><span class="auto-style3">EMERGENCY CONTACT&nbsp;</span></strong></td>
            </tr>
            <tr>
                <th>Emergency contact</th>
                <td class="auto-style5">
                    <asp:TextBox CssClass="form-control" ID="txtemergency" runat="server" Height="22px" Width="433px"></asp:TextBox>
                </td>
            </tr>--%>
          <%--  <tr>
                <th>Relationship with patient</th>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtrelation" Height="22px" Width="433px" runat="server"></asp:TextBox>
                </td>
            </tr>--%>
           <%-- <tr>
                <th>Contact</th>
                <td class="auto-style4">
                    <asp:TextBox CssClass="form-control" ID="txtcontact" Height="22px" Width="433px" runat="server"></asp:TextBox>
                </td>
            </tr>--%>

           <%-- <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" CssClass="text-primary" runat="server" Width="140px" Height="25px" OnClick="LinkButton1_Click">Back</asp:LinkButton>
                </td>
            </tr>
            </table>--%>
        </div>
  
</asp:Content>

