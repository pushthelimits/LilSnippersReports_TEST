<%@ Page Title="Lil' Snippers Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LilSnippersReports_TEST._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <h3>Reports</h3>
  <%--  <a href="sales.aspx">Sales</a><br />--%>
    <a href="birthdays.aspx">Birthday List</a><br />
    <a href="clientinfo.aspx">Client List</a><br />
    <a href="inventory.aspx">Inventory</a><br />
    <a href="media.aspx">Media List</a><br />
    <a href="sales.aspx">Sales</a><br />
    <a href="servicetimes.aspx">Stylist Service Times</a><br />
    <a href="weekselapsed.aspx">Weeks Elapsed</a>
</asp:Content>
