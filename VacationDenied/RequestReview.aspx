﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RequestReview.aspx.cs" Inherits="VacationDenied.RequestReview" EnableViewState="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-1 padding"><asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" EnableViewState="true" AppendDataBoundItems="true"></asp:DropDownList></div>
    <asp:UpdatePanel ID="update1" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:PostBackTrigger ControlID ="DropDownList1" />
        </Triggers>
        <ContentTemplate>
            <fieldset>
                <legend>
                    <div class="left col-md-3 padding">
                    <p class="white">Full Name: </p><p class="white">Description: </p><p class="white">Starting Request Date: </p><p class="white">Ending Request Date: </p></div>

                    <div class="left col-md-6 padding">
                    <asp:Label ID="Label4" runat="server" Text="Load a request item." CssClass="white"></asp:Label><br />

                    <asp:Label ID="Label3" runat="server" Text="Load a request item." CssClass="white"></asp:Label><br /><br />

                    <asp:Label ID="Label1" runat="server" Text="Load a request item." CssClass="white"></asp:Label><br />

                    <asp:Label ID="Label2" runat="server" Text="Load a request item." CssClass="white"></asp:Label></div>
                    
                    <br /><br /><br /><br /><br /><br />
                    <div class="col-md-12 clear bottompad">
                    <asp:Button CssClass="btn btn-lrg" ID="Button1" runat="server" Text="Accept" OnClick="Button1_Click"/>
                    <asp:Button CssClass="btn btn-lrg" ID="Button2" runat="server" Text="Deny" OnClick="Button2_Click"/>

                    </div>
                </legend>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
