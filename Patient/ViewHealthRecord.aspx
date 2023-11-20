<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ViewHealthRecord.aspx.cs" Inherits="Patient_ViewHealthRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 31px;
        }

        .auto-style11 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="tips w3agile" id="content" style="margin: 0 auto">
        <div style="padding-left: 560px;padding-bottom:20px">
            <asp:LinkButton ID="LinkButton1" CssClass="text-success text-right" Font-Size="Large" Font-Underline="true" runat="server" OnClick="LinkButton1_Click" Height="23px">Create New Record</asp:LinkButton>
        </div>

        <asp:DataList ID="DataList1" runat="server" OnCancelCommand="DataList1_CancelCommand" OnDeleteCommand="DataList1_DeleteCommand" OnEditCommand="DataList1_EditCommand" OnUpdateCommand="DataList1_UpdateCommand" RepeatLayout="Flow" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <edititemtemplate>
                <h3 class="title" style="color:  white;background-color:#5bacf2">HEALTH DETAILS<span></span></h3>
                <div class="container">


                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>ID</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>HEIGHT</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" Text='<%# Eval("Height") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>WEIGHT</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Eval("Weight") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>BLOOD GROUP</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" Text='<%# Eval("BloodGroup") %>'></asp:TextBox>
                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>REASON FOR APPOINTMENT</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Eval("Reason_for_Appointment") %>'></asp:TextBox>

                        </div>
                    </div>
                    <div class="row" style="padding-top: 10px">
                        <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                            <label>TAKING ANY MEDICATION CURRENTLY</label>
                        </div>
                        <div class="col-md-7">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Eval("Taking_any_medication_currently") %>'>
                                <asp:ListItem>YES</asp:ListItem>
                                <asp:ListItem>NO</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                
                        <h4 class="tittle-one text-center"style="color:#5bacf2;padding-top:15px;padding-bottom:10px">EMERGENCY CONTACT<span></span></h4>

                        <div class="row" style="padding-top: 10px">
                            <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                                <label>EMERGENCY CONTACT</label>
                            </div>
                            <div class="col-md-7">
                                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" Text='<%# Eval("Emergency_Contact") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 10px">
                            <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                                <label>REALATIONSHIP WITH PATIENT</label>
                            </div>
                            <div class="col-md-7">
                                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" Text='<%# Eval("Relationship_with_patients") %>'></asp:TextBox>
                            </div>
                        </div>
                        <div class="row" style="padding-top: 10px">
                            <div class="col-md-5" style="padding-top: 5px; padding-left: 190px; text-align: left">
                                <label>CONTACT</label>
                            </div>
                            <div class="col-md-7">
                                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Text='<%# Eval("Contact") %>'></asp:TextBox>
                            </div>
                        </div>
                    </div>
              
                <div class="row" style="padding-top:20px">
                    <div class="col-md-4" style="padding-top: 20px; padding-left: 515px">
                        <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" CommandName="Update" Text="UPDATE" />
                    </div>
                    <div class="col-md-4" style="padding-top: 20px">
                        <asp:Button ID="Button4" CssClass="btn btn-primary" runat="server" CommandName="Cancel" Text="CANCEL" />
                    </div>
                </div>




            </edititemtemplate>
            <itemstyle font-bold="True" font-italic="False" font-overline="False" font-strikeout="False" font-underline="False" />
            <itemtemplate>
                <h3 class="tittle-one" style="color:  white;background-color:#5bacf2">HEALTH DETAILS<span></span></h3>
                <div class="container">

                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>ID</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>HEIGHT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Height") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>WEIGHT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>BLOOD GROUP</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("BloodGroup") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>REASON FOR APPOINTMENT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("Reason_for_appointment") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>TAKING ANY MEDICATION CURRENTLY</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Taking_any_medication_currently") %>'></asp:Label>
                        </div>
                    </div>


                    <h4 class="tittle-one text-center"style="color:#5bacf2;padding-top:15px;padding-bottom:10px">EMERGENCY CONTACT<span></span></h4>

                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>EMERGENCY CONTACT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Emergency_Contact") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>RELATIONSHIP WITH PATIENT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Relationship_with_patients") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-top: 10px">
                        <div class="col-md-5" style="padding-left: 190px">
                            <label>CONTACT</label>
                        </div>
                        <div class="col-md-7" style="padding-left:380px">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Contact") %>'></asp:Label>
                        </div>
                    </div>
                </div>

                 <div class="row">
                    <div class="col-md-6" style="padding-top: 20px; padding-left: 370px">
                         <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Style="padding-right:21px;padding-left:21PX" CommandName="Edit" Text="EDIT" OnClick="Button1_Click" />
                    </div>
                    <div class="col-md-6" style="padding-top: 20px; padding-right: 455px">
                         <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" CommandName="Delete" Text="DELETE" />
                    </div>
                </div>


            </itemtemplate>
        </asp:DataList>
    </div>

</asp:Content>

