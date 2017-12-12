<%@ Page Title="" Language="C#" MasterPageFile="~/Genel.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication6.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 <div class="content">
                
                <div class="contenttitle radiusbottom0">
                	<h2 class="table"><span>Standard Table</span></h2>
                </div><!--contenttitle-->	
                <table cellpadding="0" cellspacing="0" border="0" class="stdtable">
                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
                   
                    <asp:Repeater ID="Repeater1" runat="server" OnItemCreated="Repeater1_ItemCreated">
                        <HeaderTemplate>

                    <thead>
                        <tr>
                            <th class="head0">Urun ID</th>
                            <th class="head1">Urun Adi</th>
                            <th class="head0">Kategori Adi</th>
                            <th class="head1">Fiyatı</th>
                            <th class="head0">Stoktaki Miktarı</th>
                        </tr>
                    </thead>
                    </HeaderTemplate>
                         <ItemTemplate>
                    <tbody>
                       
                        <tr>
                            <td><%#Eval("ProductID")%></td>
                            <td><%#Eval("ProductName") %></td>
                            <td><%#Eval("CategoryName") %></td>
                            <td class="center"><%#Eval("UnitPrice") %></td>
                            <td class="center"><%#Eval("UnitsInStock") %></td>
                        </tr>              
                             </ItemTemplate>
                             <FooterTemplate>
                             </tbody>
                            <tfoot>
                                <tr>
                                    <th colspan="5" class="head0">
                                        <asp:Label ID="lblBilgilendirme" runat="server"></asp:Label>
                                    </th>
                                </tr>
                            </tfoot>
                        </FooterTemplate>
                        </asp:Repeater>
                </table>
               </div>
</asp:Content>
