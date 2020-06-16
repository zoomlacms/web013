<%@ page language="C#" autoeventwireup="true" inherits="User_AddUserOrder, App_Web_n4inp2vy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
    <table cellspacing="10" cellpadding="5" width="100%" border="0">
        <tr>
            <td colspan="2"><b style="color:Red">添加账单</b></td>
        </tr>
        <tr>
            <td align="right">购物会员名：</td>
            <td>
            <asp:TextBox ID="TextBox1" AutoPostBack="True" ontextchanged="TextBox2_TextChanged" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''" onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                                                Style="float: left; " width="140"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="请输入用户名" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                真实姓名：</td>
            <td>
                <asp:TextBox ID="TextBox2" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                                                onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                                                Style="float: left; " width="140"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">购物金额：</td>
            <td><asp:TextBox ID="TextBox3" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                    onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" 
                    onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Style="float: left; " width="100" 
                    AutoPostBack="True" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="请输入金额" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">应付金额：</td>
            <td><asp:TextBox ID="TextBox4" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                   onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" 
                    onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                     Style="float: left; " width="100" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">积分赠送：</td>
            <td><asp:TextBox ID="TextBox7" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                   onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" 
                    onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                     Style="float: left; " width="100"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">商品名称：</td>
            <td><asp:TextBox ID="TextBox5" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                    onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" 
                    onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                     Style="float: left; " width="140px" Height="72px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="right">商品数量：</td>
            <td><asp:TextBox ID="TextBox6" CssClass="input_out" runat="server" onfocus="this.className='input_on';this.onmouseout=''"
                                                onblur="CheckUser();this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"
                                                Style="float: left; " width="140"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="数量只能为数字！" 
                    ValidationExpression="^\+?[1-9][0-9]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Text="生成订单" CssClass="i_bottom" 
                    onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
