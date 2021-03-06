﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_DevelopmentCenter, App_Web_tmzx1pcx" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>开发中心</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
</head>
<body>
 <div class="r_navigation">
    后台管理 &gt;&gt; 扩展功能 &gt;&gt; 数据维护 &gt;&gt; 开发中心</div>
<div class="clearbox">
</div>
   <form id="form1" runat="server">
<div class="spacingtitle">开发中心</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
    <tbody id="Tbody1">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center" class="title" style="width:5%">
                <input type="checkbox" id="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td align="center" class="title" style="width:15%">
                <span class="tdbgleft">ID</span>
            </td>
            <td align="center" class="title" style="width:40%">
                <span class="tdbgleft">计划名称</span>
            </td>
            <td align="center" class="title" style="width:40%">
                <span class="tdbgleft">创建时间</span>
            </td>
        </tr>
        <asp:Repeater ID="Pagetable" runat="server">
            <ItemTemplate>
                <tr class="tdbg" id="<%#Eval("ID") %>" onmouseover="this.className='tdbgmouseover'"
                    onmouseout="this.className='tdbg'">
                    <td style="height: 24px" align="center">
                        <input name="Item" type="checkbox" value="<%#Eval("ID")%>" />
                    </td>
                    <td style="height: 24px" align="center">
                        <%#Eval("ID")%>
                    </td>
                    <td style="height: 24px" align="center">
                        <a href="PageTemplate.aspx?id=<%#Eval("ID")%>">
                            <%#Eval("PlanName")%></a>
                    </td>
                    <td style="height: 24px" align="center">
                    <%#Eval("CreationTime")%>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td colspan="12" align="center" class="tdbgleft" style="height: 24px">
               共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                条信息
                <asp:LinkButton runat="server" ID="First" onclick="First_Click">首页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Prev" onclick="Prev_Click">上一页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Next" onclick="Next_Click">下一页</asp:LinkButton>
                <asp:LinkButton runat="server" ID="Last" onclick="Last_Click">尾页</asp:LinkButton>
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" OnTextChanged="txtPage_TextChanged"
                    Width="30px">10</asp:TextBox>
                条信息/页 转到第<asp:DropDownList ID="DropDownListPage" runat="server" 
                    AutoPostBack="True" onselectedindexchanged="DropDownListPage_SelectedIndexChanged">
                </asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                    ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </td>
        </tr>
    </tbody>
</table>
   </form>
</body>
</html>
