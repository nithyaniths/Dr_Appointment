<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Staff_Attendance.aspx.cs" Inherits="Admin_Staff_Attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="wrapper" style="padding-left: 254px">
        <div class="panel panel-default" style="margin-top: 45px">
            <div class="panel-heading">
                ATTENDANCE REGISTER   
            </div>
            <div  style="padding-left:15px">
                <div class="col-md-3" style="padding-left:250px;padding-top:25px">
                <label>SELECT DATE</label>
                    </div>
                <div class="col-md-3" style="padding-left:70px;padding-top:17px">
                <asp:TextBox ID="txtSearch" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>   
                    </div>
                <div class="col-md-3" style="padding-right:140px;padding-top:17px">
                    <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server"  OnClick="Button2_Click" Text="GO" Width="92px" />
                    </div>              
            </div>
            <div style="padding-bottom:80px">
            <asp:Panel ID="Panel1"  runat="server">
                <div style="padding-top:30px">

                      <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover"  runat="server" ShowHeader="true" AutoGenerateColumns="False">
                    <Columns>
                         <asp:TemplateField>
                             <HeaderTemplate>
                                 <asp:CheckBox ID="headmark" runat="server" AutoPostBack="true" OnCheckedChanged="headmark_CheckedChanged"/>
                             </HeaderTemplate>

                        <ItemTemplate>
                            <asp:CheckBox ID="chkmark" AutoPostBack="true" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                              <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="NAME" />
                    <asp:BoundField DataField="Department" HeaderText="DEPARTMENT"  />
                              <asp:BoundField DataField="Mobile" HeaderText="MOBILE"/>                  
                </Columns>              
            </asp:GridView>
                </div>
            </asp:Panel>
                </div>
            <div class="text-center" style="padding-top:30px;padding-bottom:20px">
              
            <asp:Button ID="btnattendance" runat="server" Text="Mark your attendance" OnClick="btnattendance_Click" />
        </div>            
            </div>
        </section>
</asp:Content>

