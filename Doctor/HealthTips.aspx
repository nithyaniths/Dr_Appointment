<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="HealthTips.aspx.cs" Inherits="Doctor_HealthTips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            font-size: x-large;
        }

        .auto-style3 {
            color: #33CC33;
        }

        .auto-style4 {
            height: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top:30px">
     <h2 class="title-one text-center" style="color: #5bacf2">MY HEALTHTIPS<span></span></h2>
        </div>
    <div class="jarallax team">
      
            <div class="container">
               
                <div class="row">
                    <div class="col-md-6">
                        <asp:Label ID="Label1" runat="server"></asp:Label>

                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="text-center" style="padding-bottom: 10px">
                    <asp:TextBox ID="txtnotes" runat="server" TextMode="MultiLine" Height="165px" Width="554px"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" CssClass="btn  btn-primary" runat="server" OnClick="Button1_Click" Text="Save" />
                <div class="clearfix"></div>
            </div>
       
    </div>
  <div style="padding-bottom:45px">

  </div>
</asp:Content>

