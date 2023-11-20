<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Attendance_Details.aspx.cs" Inherits="Admin_Attendance_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="wrapper" style="padding-left: 254px">
        <div class="panel panel-default" style="margin-top: 45px">
            <div class="panel-heading">
                STAFF ATTENDANCE DETAILS
            </div>
               <div  style="padding-left:15px">
                <div class="col-md-3" style="padding-left:250px;padding-top:25px">
                <label>SEARCH</label>
                    </div>
                <div class="col-md-3" style="padding-left:70px;padding-top:17px">
                <asp:TextBox ID="txtSearch" Placeholder="search by name or date" CssClass="form-control" runat="server"></asp:TextBox>   
                    </div>
                <div class="col-md-3" style="padding-right:140px;padding-top:17px">
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server"  OnClick="Button2_Click" Text="GO" Width="92px" />
                    </div>             
            </div>

           <asp:Panel ID="Panel1"  runat="server" Visible="false">
              
                   <div class="row" style="padding-top:20px">
                       <div class="col-md-6">
                       <h4 class="text-center" style="padding-top:10px;padding-bottom:15px">PRESENT </h4>
                     <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False">
                         <columns>
                             <asp:BoundField DataField="Id" HeaderText="ID" />
                             <asp:BoundField DataField="Name" HeaderText="NAME" />                           
                         </columns>
                     </asp:GridView>
                   </div>
                                       
                       <div class="col-md-6">
                       <h4 class="text-center" style="padding-top:10px;padding-bottom:15px">ABSENT </h4>
                       <asp:GridView ID="GridView2" runat="server" CssClass="table table-bordered table-hover" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False">
                           <columns>
                               <asp:BoundField DataField="Id" HeaderText="ID" />
                               <asp:BoundField DataField="Name" HeaderText="NAME" />
                           </columns>
                       </asp:GridView>
               </div>
               </div>
               </asp:Panel>
            <asp:Panel ID="Panel2" runat="server" Visible="false">

                <div class="row" style="padding-top:20px">
                    <div class="col-md-6">
                        <h4 class="text-center" style="padding-top:10px;padding-bottom:15px">PRESENT</h4>
                        <asp:GridView ID="GridView3" runat="server" CssClass="table table-bordered table-hover" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False">

                            <Columns>
                                <asp:BoundField DataField="Staff_Id" HeaderText="ID" />
                                <asp:BoundField DataField="AttDate" HeaderText="PRESENT DAYS" />
                            </Columns>

                        </asp:GridView>
                    </div>
                    <div class="col-md-6">
                        <h4 class="text-center" style="padding-top:10px;padding-bottom:15px">ABSENT</h4>
                        <asp:GridView ID="GridView4" runat="server" CssClass="table table-bordered table-hover" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" AutoGenerateColumns="False">

                            <Columns>
                                <asp:BoundField DataField="Staff_Id" HeaderText="ID" />
                                <asp:BoundField DataField="AbsentDate" HeaderText="ABSENT DAYS" />
                            </Columns>

                        </asp:GridView>
                    </div>
                </div>
            </asp:Panel>
            </div>
         </section>
</asp:Content>

