<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="Pending_Appointment.aspx.cs" Inherits="Patient_Pending_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="tips w3agile">
        <div class="container">
            <h3 class="title" style="color:  white;background-color:#5bacf2;padding-bottom:10px">PENDING APPOINTMENT<span></span></h3>
            <asp:GridView ID="GridView1" BorderWidth="3px" runat="server" CssClass="table table-bordered table-hover" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False">
                <Columns>
                     <asp:BoundField DataField="Id" ControlStyle-BorderWidth="5" HeaderText="ID" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                      <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                     <asp:BoundField DataField="Name" HeaderText="Doctor's Name" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                     <asp:BoundField DataField="Mobile" HeaderText="Mobile No" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                      <asp:BoundField DataField="ConsultationDate" HeaderText="Consultation Date" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                      <asp:BoundField DataField="ConsultationTime" HeaderText="Consultation Time" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                      <asp:BoundField DataField="TokenNo" HeaderText="Token" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                   <asp:ButtonField ButtonType="Button" ItemStyle-CssClass="btn btn-danger" Text="Cancel Appointment" />
                </Columns>
            </asp:GridView>
           
                
            
                 
           
        </div>
    </div>
</asp:Content>

