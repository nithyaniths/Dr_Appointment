<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="DoctorDetails.aspx.cs" Inherits="Admin_DoctorDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        margin-top: 78px;
        margin-bottom: 3px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section id="main-content">
        <section class="wrapper">
            <div class="table-agile-info">
                <div class="panel panel-default">
              <div class="panel-heading">
                  DOCTOR'S RECORD
              </div>
            <asp:GridView ID="GridView1"   runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="table table-hover table-bordered">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Name" HeaderText="NAME" />
                    <asp:BoundField DataField="Age" HeaderText="AGE" />
                    <asp:BoundField DataField="Mobile" HeaderText="MOBILE" />
                    <asp:BoundField DataField="Email" HeaderText="EMAIL" />
                    <asp:BoundField DataField="Specialised_In" HeaderText="SPECIALISATION" />
                    <asp:CommandField ShowSelectButton="True" itemStyle-CssClass="btn btn-success" ItemStyle-ForeColor="white" />
                </Columns>
            </asp:GridView>
               
       
            <asp:Panel ID="Panel1" runat="server" Visible="False">

                <div class="container">
                    <div class="col-lg-offset-6">
                         <asp:Image ID="imgphoto" CssClass="img-rounded" runat="server" Height="145px" />
                    </div>
                    <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>ID</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                            <asp:Label ID="lblId" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    
                     <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>NAME</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                              <asp:TextBox ID="txtname" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>AGE</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                              <asp:TextBox ID="txtage" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>PLACE</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                           <asp:TextBox ID="txtplace" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                     <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>MOBILE NO</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                            <asp:TextBox ID="txtmobile" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>EMAIL</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                           <asp:TextBox ID="txtemail" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>SPECIALISED IN</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                              <asp:TextBox ID="txtspecialised" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>LANGUAGE KNOWN</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                            <asp:TextBox ID="txtlanguage" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                      <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>CLINICAL EXPEIENCE</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                            <asp:TextBox ID="txtexp" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="padding-left:70px;padding-top:6px">
                        <div class="col-md-5">
                            <label>EDUCATIONAL QUALIFICATION</label>
                        </div>
                        <div class="col-md-7" style="padding-right:400px">
                             <asp:TextBox ID="txtedu" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                   <div style="padding-left:320px;padding-top:15px;padding-bottom:13px">
                         <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="UPDATE" OnClick="Button1_Click"/>
                          <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Text="DELETE" OnClick="Button2_Click"/>
                    </div>
                </div>
               
                
               
            </asp:Panel>
            </div>
       </div>
             </section>
    </section>
        
</asp:Content>

