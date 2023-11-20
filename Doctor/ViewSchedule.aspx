<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/Doctor.master" AutoEventWireup="true" CodeFile="ViewSchedule.aspx.cs" Inherits="Doctor_ViewSchedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding-top:20px">
    <h3 class="title" style="color:  white;background-color:#5bacf2">SCHEDULE<span></span></h3>
        </div>
    <div class="tips w3agile">               
            <div style="padding-right: 28px">
                <asp:GridView ID="GridView1"  BorderStyle="Double"  BorderWidth="3px" runat="server" Width="100%" CssClass="table table-bordered table-hover" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="margin-right: 0px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <columns>

                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-primary text-center" />
                        <%--<asp:TemplateField HeaderText="DAY" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-primary text-center">

                            <edititemtemplate>

                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Day") %>'></asp:TextBox>
                            </edititemtemplate>
                            <itemtemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Day") %>'></asp:Label>

                            </itemtemplate>

                        </asp:TemplateField>--%>
                        <asp:BoundField DataField="Day" HeaderText="DAY" HeaderStyle-Font-Bold="true"  HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-primary text-center" />
                        <asp:BoundField DataField="Starting_Time" HeaderText="Starting Time" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-primary text-center" />
                        <asp:BoundField DataField="Ending_Time" HeaderText="Ending Time" HeaderStyle-Font-Bold="true" HeaderStyle-ForeColor="White" HeaderStyle-CssClass="bg-primary text-center" />
                        <asp:CommandField ShowEditButton="True" ItemStyle-CssClass="btn btn-primary" ItemStyle-ForeColor="White" />
                        <asp:CommandField ShowDeleteButton="True" ItemStyle-CssClass="btn btn-danger" ItemStyle-ForeColor="White" />

                    </columns>
                </asp:GridView>
            </div>
        </div>
   


    <%--    </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>--%>

    <%-- <div class="agile-title">
        <h3>SCHEDULE<span></span></h3>
        <div class="container">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
            <div class="open-hours-row">
                <div class=" col-md-3 open-hours-left">
                    <h4>OPENING HOURS</h4>
                </div>
                <div class="col-md-3 open-hours-left">
                      <asp:BoundField DataField="Day" HeaderText="DAY" />
                </div>
                  <div class="col-md-3 open-hours-left">
                      <asp:BoundField DataField="Starting_Time" HeaderText="Starting Time" />
                </div>
                <div class="col-md-3 open-hours-left">
                     <asp:BoundField DataField="Ending_Time" HeaderText="Ending Time" />
              

            </div>
        </div>
                     </Columns>
</asp:GridView>
    </div>--%>
</asp:Content>

