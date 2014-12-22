<%@ Page Title="Sales Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sales.aspx.cs" Inherits="LilSnippersReports_TEST.Sales" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Sales Report</h2>

    <rsweb:ReportViewer ID="SalesReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="545px" Width="1330px" ShowBackButton="False">
        <LocalReport ReportPath="sales.rdlc">

            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SalesView" Name="SalesView" />
                <rsweb:ReportDataSource DataSourceId="SalesProduct" Name="Product" />
                <rsweb:ReportDataSource DataSourceId="SalesService" Name="Service" />
                <rsweb:ReportDataSource DataSourceId="SalesTransactions" Name="Transactions" />
                <rsweb:ReportDataSource DataSourceId="SalesTransaction_Details" Name="Transaction_Details" />
            </DataSources>

        </LocalReport>
    </rsweb:ReportViewer>
    
    <asp:ObjectDataSource ID="SalesProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.SalesDataSetTableAdapters.ProductTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SalesView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.SalesDataSetTableAdapters.SalesViewTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SalesService" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.SalesDataSetTableAdapters.ServiceTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SalesTransaction_Details" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.SalesDataSetTableAdapters.Transaction_DetailsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SalesTransactions" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.SalesDataSetTableAdapters.TransactionsTableAdapter"></asp:ObjectDataSource>
    
</asp:Content>