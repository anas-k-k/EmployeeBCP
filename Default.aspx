<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridEditDemo._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Cognizant Travelers - Employee Info.</h3>
    <div>
        <div>
               <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
               <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn-primary" OnClick="btnSearch_Click" />
               <asp:Button ID="btnClearFilter" runat="server" Text="Clear Filter" CssClass="btn-primary" OnClick="btnClearFilter_Click" Visible="False"/>
        </div>
     
        <div>
              <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
      

    </div>
    <p>
        <asp:GridView ID="GvEmployeeInfo" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="GvEmployeeInfo_RowCancelingEdit" OnRowEditing="GvEmployeeInfo_RowEditing" OnRowUpdating="GvEmployeeInfo_RowUpdating" AllowPaging="True" OnPageIndexChanging="GvEmployeeInfo_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="Associate_id" HeaderText="Associate ID" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Associate Name" ReadOnly="True" />
                <asp:BoundField DataField="Manager_Name" HeaderText="Manager Name" ReadOnly="True" />
                <asp:TemplateField HeaderText="WFH(Y/N)">
                    <EditItemTemplate>
                        <asp:DropDownList ID="drpWFH" runat="server" >                         
                            <asp:ListItem Value="Y">Yes</asp:ListItem>
                            <asp:ListItem Value="N">No</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Is_WFH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delivered Date">
                    <EditItemTemplate>
                        <asp:Calendar ID="calDeliveryDate" runat="server" BackColor="White" 
                            BorderColor="Black" BorderStyle="Solid" CellSpacing="1" 
                            Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" 
                            Height="250px" NextPrevFormat="ShortMonth" Width="330px" SelectedDate='<%# Bind("Del_Dt") %>'>
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Del_Dt") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
</p>
</asp:Content>
