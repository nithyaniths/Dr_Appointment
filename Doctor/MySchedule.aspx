<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="MySchedule.aspx.cs" Inherits="Doctor_MySchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style4 {
            height: 126px;
        }

        .auto-style5 {
            color: #3c763d;
            height: 126px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top:10px">
         <h3 class="tittle-one" style="color:  white;background-color:#5bacf2">MY TIME SLOT<span></span></h3>
    </div>
    <div class="tips w3agile">
        <div class="container">
           
            <div class="row">
                <div class="col-md-5" style="text-align:left;padding-left:100px;padding-top:50px">
                    <label>DAY</label>
                </div>
                <div class="col-md-7" style="text-align:left">
                    <asp:CheckBoxList ID="checkday" runat="server">
                        <asp:ListItem>Monday</asp:ListItem>
                        <asp:ListItem>Tuesday</asp:ListItem>
                        <asp:ListItem>Wednesday</asp:ListItem>
                        <asp:ListItem>Thursday</asp:ListItem>
                        <asp:ListItem>Friday</asp:ListItem>
                        <asp:ListItem>Saturday</asp:ListItem>
                        <asp:ListItem>Sunday</asp:ListItem>
                    </asp:CheckBoxList>
                </div>
            </div>
            <div class="row" style="padding-top: 10px; padding-right: 100px">
                <div class="col-md-4" style="text-align:left;padding-left:96px">
                    <label>CONSULTATION START TIME</label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox ID="txtstart" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="padding-top: 10px; padding-right: 100px">
                <div class="col-md-4">
                    <label>CONSULTATION END TIME</label>
                </div>
                <div class="col-md-8">
                    <asp:TextBox CssClass="form-control" ID="txtend" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>
        <div style="padding-bottom: 10px; padding-top: 10px">
            <asp:Button ID="Button1" runat="server" CssClass="btn  btn-primary" Text="Set Slot" OnClick="Button1_Click" />
        </div>
        <%--  <table class="auto-style1">
   
    <tr>
        <th class="auto-style5">DAY</th>
        <td class="auto-style4">--%>

        <%-- </td>
        
    </tr>
    <tr>
       <th>Consultation start time</th>
        <td style="padding-bottom:10px">
            <asp:TextBox ID="txtstart" runat="server" CssClass="form-control"></asp:TextBox>
        </td>
       
    </tr>
    <tr>
        <th>Consultation end time</th>
        <td style="padding-bottom:10px">
            <asp:TextBox CssClass="form-control" ID="txtend" runat="server"></asp:TextBox>
        </td>
       
    </tr>--%>
        <%--  <tr>
        <td style="padding-bottom:10px">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Set Slot" OnClick="Button1_Click" />
        </td>
        
    </tr>
</table>--%>
    </div>
</asp:Content>

