<%@ Page Title="Stylist Service Times" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="servicetimes.aspx.cs" Inherits="LilSnippersReports_TEST.servicetimes" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Stylist Service Times</h2>


    <rsweb:ReportViewer ID="SvcTimesReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="545px" Width="488px" ShowBackButton="False">
        <LocalReport ReportPath="servicetimes.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="StylistTimesView" Name="StylistTimesView" />
                <rsweb:ReportDataSource DataSourceId="SvcTimesEmployee" Name="Employee" />
                <rsweb:ReportDataSource DataSourceId="SvcTimesStylistTimes" Name="StylistTimes" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="SvcTimesStylistTimes" runat="server" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.ServiceTimesDataSetTableAdapters.StylistTimesTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="SvcTimesEmployee" runat="server" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.ServiceTimesDataSetTableAdapters.EmployeeTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="StylistTimesView" runat="server" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.ServiceTimesDataSetTableAdapters.StylistTimesViewTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>


</asp:Content>