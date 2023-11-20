<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="MyFeedback.aspx.cs" Inherits="Doctor_MyFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div style="padding-top: 30px">
        <h3 class="tittle-one text-center" style="color: white; background-color: #5bacf2">ADD FEEDBACK<span></span></h3>
    </div>
    <div class="jarallax  team">
        <div class="container">

            <asp:TextBox ID="txtfeed" runat="server" Height="155px" TextMode="MultiLine" Width="433px" ForeColor="#3366CC"></asp:TextBox>
            <div class="row">
                <div class="col-md-6 text-center" style="padding-top: 20px;padding-left:554PX">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" OnClick="Button1_Click" Text="Save" />
                </div>
                <div class="col-md-6 text-right" style="padding-top:19px;padding-right:310px">
                    <asp:LinkButton ID="LinkButton1"  CssClass="btn btn-success" runat="server" OnClick="LinkButton1_Click">BACK</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
    <div style="padding-bottom: 45px">
    </div>
</asp:Content>

