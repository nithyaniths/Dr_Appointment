<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="View My Appointment.aspx.cs" Inherits="Patient_View_My_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style3 {
            height: 31px;
        }

        .auto-style4 {
            height: 31px;
            width: 835px;
        }

        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="tips w3agile">
        
            <div style="padding-bottom:20px">
            <h3 class="title" style="color:  white;background-color:#5bacf2;padding-bottom:10px">MY APPOINTMENT<span></span></h3>
                </div>
           
                        <asp:GridView ID="GridView1" BorderWidth="3px" Width="100%" CssClass="table table-bordered table-hover" CellPadding="6" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                            <Columns>
                                <asp:BoundField DataField="Id" ControlStyle-BorderWidth="5" HeaderText="ID" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="BookingDate" HeaderText="Booking Date" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="Name" HeaderText="Doctor's Name" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="Mobile" HeaderText="Mobile No" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="ConsultationDate" HeaderText="Consultation Date" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="ConsultationTime" HeaderText="Consultation Time" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:BoundField DataField="TokenNo" HeaderText="Token" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                <asp:CommandField SelectText="View My Prescription" ShowSelectButton="True" ItemStyle-CssClass="btn-link" />
                               
                                <asp:ButtonField ButtonType="Button" ItemStyle-CssClass="btn btn-primary" CommandName="Edit" Text="Add Feedback" />
                                  
                            </Columns>
                            
                        </asp:GridView>
                     <asp:Label ID="lblmsg" ForeColor="Red" runat="server" Visible="False"></asp:Label>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                            
                                   
                         
                                        
                                        <div style="padding-left:150px">
                                            <asp:GridView ID="GridView2" CssClass="table table-bordered table-hover" runat="server" AutoGenerateColumns="False" Height="191px" Width="448px">
                                                <Columns>
                                                    <asp:BoundField DataField="Prescription" HeaderText="Prescription" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                                    <asp:BoundField DataField="PrescriptionDate" HeaderText="Prescription Date" HeaderStyle-ForeColor="White"  HeaderStyle-CssClass="bg-primary text-center" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                       
                        </asp:Panel>
                   
            <div class="clearfix"></div>
      
    </div>
</asp:Content>

