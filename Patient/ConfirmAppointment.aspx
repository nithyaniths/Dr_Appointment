<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ConfirmAppointment.aspx.cs" Inherits="Patient_ConfirmAppointment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="../Scripts/jquery-ui.css" rel="stylesheet" />
   
    <script src="../Scripts/jquery-1.10.2.js"></script>
    <script src="../Scripts/jquery-ui.js"></script>

   
   <script>
       var dateToday = new Date();
       var endDate = new Date();
       endDate.setDate(dateToday.getDate() + 15);
       $(function () {
           $("#<%=txtDate.ClientID%>").datepicker({
               minDate: dateToday,
               maxDate: endDate
           });
       });
   </script>
    <style type="text/css">
        .auto-style1 {
            margin-left: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <%--<table class="auto-style1">
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">
              
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td><strong>Doctors&#39;s Id</strong></td>
            <td>
                <em><strong>
                <asp:Label ID="lblid" runat="server"></asp:Label>
                </strong></em>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Doctor&#39;s Name</strong></td>
            <td>
                <em><strong>
                <asp:Label ID="lblname" runat="server"></asp:Label>
                </strong></em>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Place</strong></td>
            <td class="auto-style2">
                <em><strong>
                <asp:Label ID="lblplace" runat="server"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mobile</strong></td>
            <td class="auto-style4">
                <em><strong>
                <asp:Label ID="lblmobile" runat="server"></asp:Label>
                </strong></em>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td><strong>Email</strong></td>
            <td>
                <em><strong>
                <asp:Label ID="lblemail" runat="server"></asp:Label>
                </strong></em>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td><strong>Consultation Date</strong></td>
            <td>
                <asp:TextBox ID="txtDate"  runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Generate Token" OnClick="Button1_Click" ForeColor="Blue" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>--%>
    
    <div style="padding-left:20px;padding-top:20px">
<asp:Image ID="imgphoto"  CssClass="img-responsive" ImageAlign="Top" runat="server" Height="203px" Width="226px" />
         </div>
    	<div style="margin-top:50px" class="app-w3">
				<h4>Book Your Appointment</h4>
                <div class="app-sub-w3">
					<asp:Label ID="lblid" CssClass="form-control bg-light" Style="padding-right:10px;margin-left:0px" runat="server"  Width="150px"></asp:Label>
                  
                    <asp:Label  CssClass="bg-light form-control" Style="padding-right:10px; margin-left: 10px; margin-right: 0px;" ID="lblname" runat="server"  Width="130px"></asp:Label>                                
                     &nbsp;&nbsp;                                
                     <asp:Label  CssClass="bg-light form-control" ID="lblplace" runat="server"  Width="150px"></asp:Label>                     
                    <asp:Label  CssClass="bg-light form-control" ID="lblmobile" runat="server"  style="margin-left: 15px" Width="150px"></asp:Label>
                    <asp:Label  CssClass="bg-light form-control" ID="lblemail" runat="server"  style="margin-left: 10px; margin-top: 0px" Width="150px"></asp:Label>
                    <asp:TextBox   ID="txtDate" c runat="server" ReadOnly="True" CssClass="auto-style1" placeholder="Select a Date" Width="150px"></asp:TextBox>
                    <div style="margin-top:10px">
                    <asp:Button ID="Button1" CssClass="btn-block btn-danger"  runat="server" Text="Generate Token" OnClick="Button1_Click"  />
                        </div>
				</div>
				</div> 
         
</asp:Content>
