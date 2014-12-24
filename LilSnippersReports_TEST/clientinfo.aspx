<%@ Page Title="Client Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="clientinfo.aspx.cs" Inherits="LilSnippersReports_TEST.clientinfo" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Client List</h2>

    <rsweb:ReportViewer ID="ClientView" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" ShowBackButton="False" Width="1275px" Height="545px">
        <LocalReport ReportPath="client.rdlc">
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="ClientViewReportViewer" Name="ClientView" />
                <rsweb:ReportDataSource DataSourceId="ClClient" Name="Client" />
                <rsweb:ReportDataSource DataSourceId="ClParentGuardian" Name="ParentGuardian" />
                <rsweb:ReportDataSource DataSourceId="ClHearAbout" Name="HearAbout" />
                <rsweb:ReportDataSource DataSourceId="ClHomeAddress" Name="HomeAddress" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ClientViewReportViewer" runat="server" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.ClientInfoDataSetTableAdapters.ClientViewTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ClClient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.ClientTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ClParentGuardian" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.ParentGuardianTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ClHearAbout" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.ClientInfoDataSetTableAdapters.HearAboutTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ClHomeAddress" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.HomeAddressTableAdapter"></asp:ObjectDataSource>



</asp:Content>