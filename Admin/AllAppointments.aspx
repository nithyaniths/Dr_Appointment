<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="AllAppointments.aspx.cs" Inherits="Admin_AllAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 400px;
        }
        .auto-style7 {
            width: 497px;
            height: 400px;
        }
        .auto-style8 {
            height: 400px;
            width: 281px;
        }
        .auto-style9 {
        width: 281px;
    }
        .auto-style10 {
            width: 497px
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            width: 281px;
            height: 34px;
        }
        .auto-style13 {
            width: 497px;
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        APPOINTMENT DETAILS
                    </div>
                    <div>
            <asp:Panel ID="Panel1" runat="server">
                 <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
                <asp:GridView ID="GridView1" Width="100%" CssClass="table" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="PatientName" HeaderText="PATIENT NAME" />
                        <asp:BoundField DataField="Name" HeaderText="DOCTOR'S NAME" />
                        <asp:BoundField DataField="BookingDate" HeaderText="BOOKNG DATE " />
                        <asp:BoundField DataField="ConsultationDate" HeaderText="CONSULTATION DATE" />
                        <asp:BoundField DataField="ConsultationTime" HeaderText="CONSULTATION TIME" />
                        <asp:BoundField DataField="TokenNo" HeaderText="TOKEN NO" />
                    </Columns>
                </asp:GridView>
                     </table>
            </asp:Panel>
                        </div>
                    </div>
                </div>
       </section>
    </section>
      
</asp:Content>

