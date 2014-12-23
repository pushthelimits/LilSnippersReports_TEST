<%@ Page Title="Birthdays Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="birthdays.aspx.cs" Inherits="LilSnippersReports_TEST.birthdays" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Birthday List</h2>

    <rsweb:ReportViewer ID="BirReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="545px" Width="649px" ShowBackButton="False" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="birthdays.rdlc">
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="BirthdayView" Name="BirthdayView" />
                <rsweb:ReportDataSource DataSourceId="BirClient" Name="Client" />
                <rsweb:ReportDataSource DataSourceId="BirHomeAddress" Name="HomeAddress" /> 
                <rsweb:ReportDataSource DataSourceId="BirParentGuardian" Name="ParentGuardian" />
      </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
      
    <asp:ObjectDataSource ID="BirthdayView" runat="server" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.BirthdayViewTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="BirClient" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.ClientTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="BirHomeAddress" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.HomeAddressTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="BirParentGuardian" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.BirthdayDataSetTableAdapters.ParentGuardianTableAdapter"></asp:ObjectDataSource>

</asp:Content>