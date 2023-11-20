<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Doctor_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            margin-right: 138px;
        }

        .auto-style5 {
            width: 453px;
            height: 58px;
        }

        .auto-style6 {
            height: 58px;
        }

        .auto-style7 {
            width: 453px;
        }

        .auto-style9 {
            width: 389px;
        }

        .auto-style10 {
            width: 234px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="tips w3agile" id="content" style="margin: 0 auto">

        <asp:FormView ID="FormView1" runat="server" OnItemDeleting="FormView1_ItemDeleting" OnItemUpdating="FormView1_ItemUpdating" OnModeChanging="FormView1_ModeChanging" RenderOuterTable="False">
            <edititemtemplate>
               
                    <h3 class="tittle-one" style="color:  white;background-color:#5bacf2">PROFILE<span></span></h3>
                    <div class="row">

                        <asp:Image ID="imgphoto" runat="server" CssClass="img-round" Height="108px" ImageUrl='<%# Eval("Photo") %>' Width="129px" />
                    </div>
                    <div class="row">
                        <div class="col-md-4" style="padding-left: 660px">
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </div>
                        <div class="col-md-4">
                            <asp:Button ID="Button6" CssClass="btn btn-primary" runat="server" Text="Upload" OnClick="Button5_Click" />
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>ID</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>NAME</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>

                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>AGE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Eval("Age") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>GENDER</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Eval("Gender") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>PLACE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Eval("Place") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>MOBILE NO</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Eval("Mobile") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>EMAIL</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>SPECIALISED IN</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Text='<%# Eval("Specialised_In") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>LANGUAGE KNOWN</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Text='<%# Eval("Language_Known") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>YEAR OF CLINICAL EXPERIENCE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" Text='<%# Eval("Year_of_clinical_experience") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>EDUCATION QUALIFICATION</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Text='<%# Eval("Education_qualification") %>'></asp:TextBox>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px">
                        <div class="col-md-5">
                            <label>AWARD/PUBLICATIONS(IF ANY)</label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" Text='<%# Eval("Award_or_Publications") %>'></asp:TextBox>
                        </div>
                    </div>
               
                <div class="row" style="padding-top: 20px">
                    <div class="col-md-6">
                        <asp:Button ID="Button5" Style="margin-left: 300px" CssClass="btn btn-info" runat="server" CommandName="Update" Text="UPDATE" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="Button7" Style="margin-right: 400px" CssClass="btn btn-success" runat="server" CommandName="Cancel" Text="CANCEL" />
                    </div>
                </div>

            </edititemtemplate>
            <itemtemplate>
              
                    <h3 class="tittle-one" style="color:  white;background-color:#5bacf2">PROFILE<span></span></h3>
                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-4" style="padding-top: 100px">
                            <label>ID</label>
                        </div>
                        <div class="col-md-4" style="padding-top: 100px; padding-left: 95px">
                            <asp:Label ID="Label1" CssClass="label label-info" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </div>
                        <div class="col-md-4">
                            <asp:Image CssClass="img-circle" ID="Image1" runat="server" Height="123px" ImageUrl='<%# Eval("Photo") %>' Width="148px" />
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>NAME</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>AGE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Age") %>'></asp:Label>
                        </div>
                    </div>

                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>GENDER</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>PLACE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Place") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>MOBILE NO</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>EMAIL</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>SPECIALISED IN</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Specialised_In") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>LANGUAGE KNOWN</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Language_Known") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>YEAR OF CLINICAL EXPERIENCE</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Year_of_clinical_experience") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>EDUCATION QUALIFICATION</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Education_qualification") %>'></asp:Label>
                        </div>
                    </div>


                    <div class="row" style="text-align: left; padding-left: 200px; padding-bottom: 8px">
                        <div class="col-md-5">
                            <label>AWARD/PUBLICATIONS(IF ANY)</label>
                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("Award_or_Publications") %>'></asp:Label>
                        </div>
                    </div>


                <div class="row" style="padding-top: 20px">
                    <div class="col-md-6">
                        <asp:Button ID="Button1" Style="margin-left: 300px; padding-left: 21px; padding-right: 21px" CssClass="btn btn-info" runat="server" CommandName="Edit" Text="EDIT" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button ID="Button2" Style="margin-right: 400px" runat="server" CssClass="btn  btn-danger" CommandName="Delete" Text="DELETE" />
                    </div>
                </div>


            </itemtemplate>
        </asp:FormView>

    </div>

</asp:Content>

