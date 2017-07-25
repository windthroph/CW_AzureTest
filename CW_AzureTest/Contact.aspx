<%@ Page Title="Contact" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.vb" Inherits="CW_AzureTest.Contact" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <address>
        &nbsp;</address>
    <address>
        <dx:ASPxButton ID="excelButton" runat="server" EnableTheming="True" Height="23px" Text="Send To Excel" Theme="Office2010Blue" Width="97px">
        </dx:ASPxButton>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="TestDataSource" KeyFieldName="SampleID" Width="429px" >
            <Settings ShowFilterRow="True" />
            <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
            <SettingsSearchPanel Visible="True" />
            <Columns>
                <dx:GridViewCommandColumn SelectAllCheckboxMode="Page" ShowClearFilterButton="True" ShowSelectCheckbox="True" VisibleIndex="0">
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="SampleID" ReadOnly="True" Visible="False" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DateAdded" VisibleIndex="3">
                </dx:GridViewDataDateColumn>
            </Columns>
        </dx:ASPxGridView>
    </address>
    <address>
        &nbsp;<asp:SqlDataSource ID="TestDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:AzureTestingConnectionString %>" SelectCommand="SELECT [SampleID], [Name], [DateAdded] FROM [SampleData]"></asp:SqlDataSource>
        &nbsp;
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="testExcel.xlsx" GridViewID="ASPxGridView1">
        </dx:ASPxGridViewExporter>
    </address>
</asp:Content>
