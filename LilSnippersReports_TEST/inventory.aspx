<%@ Page Title="Inventory Report" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="inventory.aspx.cs" Inherits="LilSnippersReports_TEST.Inventory" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h2 class="reports">Inventory Report</h2>
 
    <rsweb:ReportViewer ID="InvRepViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="545px" Width="1330px" ShowCredentialPrompts="False" PageCountMode="Actual" ShowBackButton="False">
        <LocalReport ReportPath="inventory.rdlc">

            <DataSources>
                <rsweb:ReportDataSource DataSourceId="InventoryView" Name="InventoryView" />
                <rsweb:ReportDataSource DataSourceId="InvProduct" Name="Product" />
                <rsweb:ReportDataSource DataSourceId="InvProductType" Name="ProductType" />
                <rsweb:ReportDataSource DataSourceId="InvSupplier" Name="Supplier" />
            </DataSources>

        </LocalReport>
    </rsweb:ReportViewer>                      
                    
    <asp:ObjectDataSource ID="InventoryView" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.InventoryDataSetTableAdapters.InventoryViewTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="InvProduct" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.InventoryDataSetTableAdapters.ProductTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="InvProductType" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.InventoryDataSetTableAdapters.ProductTypeTableAdapter"></asp:ObjectDataSource>
    <asp:ObjectDataSource ID="InvSupplier" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="LilSnippersReports_TEST.InventoryDataSetTableAdapters.SupplierTableAdapter"></asp:ObjectDataSource>
                    
    </asp:Content>