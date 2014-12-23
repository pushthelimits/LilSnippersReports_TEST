<%@ Page Title="Media Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="media.aspx.cs" Inherits="LilSnippersReports_TEST.media" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Media List</h2>

    <rsweb:ReportViewer ID="MediaReportViewer" runat="server" Height="545px" ShowBackButton="False" Width="518px" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
        <LocalReport ReportPath="media.rdlc">
             <DataSources>
                <rsweb:ReportDataSource DataSourceId="MediaView" Name="MediaView" />
                <rsweb:ReportDataSource DataSourceId="MedMedia" Name="Media" />
                <rsweb:ReportDataSource DataSourceId="MedMediaType" Name="MediaType" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>   
    <asp:ObjectDataSource ID="MediaView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.MediaDataSetTableAdapters.MediaViewTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="MedMedia" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.MediaDataSetTableAdapters.MediaTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="MedMediaType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.MediaDataSetTableAdapters.MediaTypeTableAdapter"></asp:ObjectDataSource>

</asp:Content>