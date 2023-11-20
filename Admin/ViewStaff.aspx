<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ViewStaff.aspx.cs" Inherits="Admin_ViewStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="wrapper" style="padding-left: 254px">
        <div class="panel panel-default" style="margin-top: 45px">
            <div class="panel-heading">
                STAFF REGISTRATION           
            </div>
            <table class="table table-hover table-bordered">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>DEPARTMENT</th>
                    <th>EMAIL</th>
                </tr>
                    </thead>
                <%=Wogrid()%>

            </table>
        </div>
    </section>
</asp:Content>
