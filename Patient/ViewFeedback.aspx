<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/Patient.master" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="Patient_ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%-- <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>--%>
    <div class="welcome">
        <div class="container">
            <div class="agile-title">
                <h3 style="color:  white;background-color:#5bacf2">OUR PATIENTS SAY<span></span></h3>

                <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatLayout="Flow">
                    <alternatingitemstyle backcolor="#F7F7F7" />
                    <footerstyle backcolor="#B5C7DE" forecolor="#4A3C8C" />
                    <headerstyle backcolor="#4A3C8C" font-bold="True" forecolor="#F7F7F7" />
                    <itemstyle backcolor="#E7E7FF" forecolor="#4A3C8C" />
                    <itemtemplate>
                       <div class="welcome text-center">
                           <div class="open-hours-row">
                                <div style="font-size: 20px" class="text-center">
                                    <asp:Label ID="Label1" CssClass="label label-default" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </div>
                                <div class="text-center">
                                    <asp:Label ID="Label2"  runat="server" Text='<%# Eval("Feedback") %>'></asp:Label>                                  
                                </div>
                               </div>
                            </div>
                        
                    </itemtemplate>
                    <selecteditemstyle backcolor="#738A9C" font-bold="True" forecolor="#F7F7F7" />
                </asp:DataList>
                <asp:Label ID="Label3" Style="font-size:x-large;color:red" runat="server" ></asp:Label>
            </div>
        </div>
    </div>




    <%--                            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" RepeatLayout="Flow" Width="175px">
                                <alternatingitemstyle backcolor="#F7F7F7" />
                                <footerstyle backcolor="#B5C7DE" forecolor="#4A3C8C" />
                                <headerstyle backcolor="#4A3C8C" font-bold="True" forecolor="#F7F7F7" />
                                <itemstyle backcolor="#E7E7FF" forecolor="#4A3C8C" />
                                <itemtemplate>

                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Feedback") %>'></asp:Label>--%>


    <%--  <table class="auto-style1">
                            <tr>
                                <td class="auto-style3">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                </td>
                                <td class="auto-style2"></td>
                                <td class="auto-style2"></td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Feedback") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style4">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </tab<%--<%--le>--%>
    <%--  </itemtemplate>
                                <selecteditemstyle backcolor="#738A9C" font-bold="True" forecolor="#F7F7F7" />
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="clearfix"></div>
    </div>
    --%>
    <%-- </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>--%>
</asp:Content>

