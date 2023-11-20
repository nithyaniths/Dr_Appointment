<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="ViewPatient.aspx.cs" Inherits="Doctor_ViewPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="tips w3agile">
        
            <h3 class="title" style="color:  white;background-color:#5bacf2">PATIENT'S RECORD<span></span></h3>
           
                <asp:GridView ID="GridView1" runat="server" Width="100%"  BorderWidth="5px" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <columns>
                        <asp:TemplateField HeaderText="ID" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White">
                            <edititemtemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                            </edititemtemplate>
                            <itemtemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                            </itemtemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Patient Name" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:BoundField DataField="ConsultationDate" HeaderText="Consultation Date" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:BoundField DataField="ConsultationTime" HeaderText="Consultation Time" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:BoundField DataField="TokenNo" HeaderText="Token" HeaderStyle-CssClass="bg-primary text-center" HeaderStyle-ForeColor="White" />
                        <asp:CommandField ShowSelectButton="True" ItemStyle-CssClass="btn btn-primary" ItemStyle-ForeColor="White" />
                    </columns>
                </asp:GridView>
          
            <asp:Panel ID="Panel1" runat="server" Visible="False">
                
                <h3 class="title" style="color:  white;background-color:#5bacf2"><strong>HEALTH DETAILS</strong><span></span></h3>
                <div  style="padding-top: 20px">
                    <div class="tip-grids">
                        <div class="col-md-6 tip-grid">
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>ID</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblId" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>AGE</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblAge" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>GENDER</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblGen" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>HEIGHT</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblHeight" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>WEIGHT</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblWeight" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>BLOOD GROUP</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblBlood" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>TAKING ANY MEDICATION CURRENTLY</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblMed" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left; padding-bottom: 20px">
                                <div class="col-md-4">
                                    <label>REASON FOR APPOINTMENT</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblRes" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 tip-grid" style="padding-top: 20px">
                            <h4 class="title" style="color: #5bacf2"><strong>EMERGENCY CONTACT</strong></h4>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>NAME</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>RELATIONSHIP WITH PATIENT</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblRelation" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row" style="margin-left: 30px; padding-top: 10px; text-align: left">
                                <div class="col-md-4">
                                    <label>CONTACT</label>
                                </div>
                                <div class="col-md-8" style="padding-left: 80px">
                                    <asp:Label ID="lblCon" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                   
                <div class="container">
                    
                        <div style="border-style: solid; border-color:#938d8d;border-width:5px">
                            <div style="text-align: left; padding-top: 30px; margin-left: 57px">
                                <asp:DataList ID="DataList1" runat="server">
                                    <itemtemplate>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Prescription date</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("PrescriptionDate") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Prescription</label>
                                            </div>
                                            <div class="col-md-6">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Prescription") %>'></asp:Label>
                                            </div>
                                        </div>

                                    </itemtemplate>
                                </asp:DataList>
                            </div>

                            <asp:Label ID="lblmsg" Style="color:red;text-size-adjust:20%" runat="server"></asp:Label>

                            <div class="row">
                                <div class="col-md-6" style="padding-top: 78px; padding-left: 180px">
                                    <label>ADD PRESCRIPTION</label>
                                </div>
                                <div class="col-md-6" style="padding-right: 30px;padding-bottom:15px">
                                    <asp:TextBox ID="txtPres" CssClass="form-control" runat="server" Height="198px" Width="437px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                 
                </div>
                <div style="margin-top: 15px; margin-right: 50px">
                    <asp:Button ID="Button1" CssClass="btn btn-primary text-center" runat="server" OnClick="Button1_Click" Text="INSERT" />
                </div>

            </asp:Panel>

            <div class="clearfix"></div>
      
    </div>
</asp:Content>

