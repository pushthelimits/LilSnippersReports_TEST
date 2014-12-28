<%@ Page Title="Weeks Elapsed Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="weekselapsed.aspx.cs" Inherits="LilSnippersReports_TEST.weekselapsed" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Weeks Elapsed Report</h2>

    <rsweb:ReportViewer ID="WeeksElapsedReportViewer" runat="server" Height="545px" Width="874px" ShowBackButton="False" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="weekselapsed.rdlc">
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="WksHomeAddress" Name="HomeAddress" />
                <rsweb:ReportDataSource DataSourceId="WksTransactions" Name="Transactions" />
                <rsweb:ReportDataSource DataSourceId="WksTransDetails" Name="Transaction_Details" />
                <rsweb:ReportDataSource DataSourceId="WksWeeksElapsedView" Name="WeeksElapsedView" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>

    <asp:ObjectDataSource ID="WksHomeAddress" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.WeeksElapsedDataSetTableAdapters.HomeAddressTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="WksTransactions" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.WeeksElapsedDataSetTableAdapters.TransactionsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="WksTransDetails" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.WeeksElapsedDataSetTableAdapters.Transaction_DetailsTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="WksWeeksElapsedView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.WeeksElapsedDataSetTableAdapters.WeeksElapsedViewTableAdapter"></asp:ObjectDataSource>

</asp:Content>