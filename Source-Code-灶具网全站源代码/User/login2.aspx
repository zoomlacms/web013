<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="User_login, App_Web_tkmvfkwz" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<script type="text/javascript" src="../JS/ajaxrequest.js"></script>
<style>
*{ margin:0px; padding:0px;}
#appQQ{ float:left;  width:126px; display:block; height:24px; text-indent:-333px; background:url(/Template/Stove/style/Images/top_r1.gif) no-repeat;}
#appSina{ float:left; margin-left:10px; text-indent:-333px; background:url(/Template/Stove/style/Images/top_r3.gif) no-repeat; width:127px; display:block; height:24px;}
</style>
</head>
<body onload="onfocus();" >
<form id="form" runat="server" target="_parent">
<div id="main_l" style="display:none;">
<ul>
<li><asp:Label ID="lblUser" runat="server" Text="用户名："></asp:Label>
<asp:TextBox ID="TxtUserName" runat="server" style="width:140px; margin-left:20px ;border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox></li>
<li>密　码： <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="width:140px; margin-left:20px; border:#CCC solid 1px;"  CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></asp:TextBox></li>
<li>
<div class="reg_put" id="trVcodeRegister" visible="false" runat="server" >验证码：<asp:TextBox ID="TxtValidateCode" MaxLength="6" runat="server" style="width:140px; margin-left:20px ;border:#CCC solid 1px;" CssClass="input_out"  onfocus="this.className='input_on';this.onmouseout=''" onblur="this.className='input_off';this.onmouseout=function(){this.className='input_out'};" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'" Text="sdfsdf"></asp:TextBox>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" ToolTip="点击刷新验证码" Style="cursor: pointer; border: 0; vertical-align: middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" />                
    </div>
</li>
<li><asp:Button ID="btnLogin" CssClass="i_bottom" OnClientClick="return BtnTj();" runat="server" Text="登　录" onclick="btnLogin_Click" />　
<input type="checkbox" name="checkbox" checked="checked" id="checkbox" style="margin-left:18px" />记住登录&nbsp;
<asp:HyperLink ID="hlReg" runat="server"  NavigateUrl="~/User/login.aspx?RegID=1">Email登录</asp:HyperLink> &nbsp;  <a href="/User/GetPassword.aspx">忘记密码了？ </a></li>
<li style="margin-top:25px; padding-left:100px;">如果您尚未在本站注册为用户，请先点击<a href="Register.aspx">点此注册</a>。</li>
</ul>
</div>

<div id="alipayDIV">
<label id="AppTitle" runat="server"></label>
<asp:LinkButton ID="appQQ" runat="server" OnClick="appQQ_Click">QQ</asp:LinkButton>   <asp:LinkButton ID="appSina" runat="server" OnClick="appSina_Click">新浪</asp:LinkButton>   <asp:LinkButton ID="appBaidu" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Baidu.png');background-repeat:no-repeat;"  OnClick="appBaidu_Click">百度</asp:LinkButton>   <asp:LinkButton ID="appKaiXin" runat="server"  style="background-image:url('../App_Themes/AdminDefaultTheme/images/Kaixin.png');background-repeat:no-repeat;" onclick="appKaiXin_Click1" >开心</asp:LinkButton>   <asp:LinkButton ID="appRenRen" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Renren.png');background-repeat:no-repeat;" onclick="appRenRen_Click1" >人人</asp:LinkButton>   <asp:LinkButton ID="appNetease" runat="server" style="background-image:url('../App_Themes/AdminDefaultTheme/images/Netease.png');background-repeat:no-repeat;" onclick="appNetease_Click1" >网易</asp:LinkButton>
</form>
</div><!--alipayDIV end -->

</body>
</html>