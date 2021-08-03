﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="solvedcomplaint.aspx.cs" CodeFile="solvedcomplaint.aspx.cs" Inherits="AMC_EGRS.admin.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table-condensed tr th {
            border: 0px solid #448aff;
            color: white;
            background-color: #448aff;
        }

        .table-condensed, .table-condensed tr td {
            border: 0px solid #000;
        }

        tr:nth-child(even) {
            background: #f8f7ff
        }

        tr:nth-child(odd) {
            background: #fff;
        }

        .editbtn{
            background-color:#448aff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- btns --%>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-xl-12  col-12">
                <div class="float-right m-b-10">
                    <a href="approvedcomplaint.aspx" class="btn btn-success"><i class="ti-check-box"></i>&nbsp;Approved Complaint</a>
                    <a href="reopencomplaint.aspx" class="btn btn-primary"><i class="fa fa-rocket"></i>&nbsp;RE-OPENED Complaint</a>
                    <a href="commaster.aspx" class="btn btn-danger"><i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Back</a>
                </div>
            </div>
        </div>        
    </div>
    <asp:GridView ID="GridView1" CssClass="table table-condensed table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
            <asp:BoundField DataField="cward" HeaderText="cward" SortExpression="cward" />
            <asp:BoundField DataField="cproblem" HeaderText="cproblem" SortExpression="cproblem" />
            <asp:BoundField DataField="cpname" HeaderText="cpname" SortExpression="cpname" />
            <asp:BoundField DataField="cpno" HeaderText="cpno" SortExpression="cpno" />
            <asp:BoundField DataField="cpemail" HeaderText="cpemail" SortExpression="cpemail" />
            <asp:BoundField DataField="cpaddress" HeaderText="cpaddress" SortExpression="cpaddress" />
            <asp:BoundField DataField="ctitle" HeaderText="ctitle" SortExpression="ctitle" />
            <asp:BoundField DataField="cimg" HeaderText="cimg" SortExpression="cimg" />
            <asp:BoundField DataField="cuniqueno" HeaderText="cuniqueno" SortExpression="cuniqueno" />
            <asp:BoundField DataField="cstatus" HeaderText="cstatus" SortExpression="cstatus" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AMC_COMPLAINConnectionString %>" SelectCommand="SELECT * FROM [complaint_master] WHERE ([cstatus] = @cstatus)">
        <SelectParameters>
            <asp:Parameter DefaultValue="SOLVED" Name="cstatus" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
