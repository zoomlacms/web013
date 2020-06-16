<%@ page language="C#" responseencoding="utf-8" autoeventwireup="true" inherits="ZoomLa.WebSite.Shop.PayOnline, App_Web_djkfgsq0" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线支付</title>
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../JS/jquery.js"></script>
    <script type="text/javascript">
        (function () {
            var _skin, _jQuery;
            var _search = window.location.search;
            if (_search) {
                _skin = _search.split('demoSkin=')[1];
                _jQuery = _search.indexOf('jQuery=true') !== -1;
                if (_jQuery) document.write('<scr' + 'ipt src="../../js/jquery.js"></sc' + 'ript>');
            };
            document.write('<scr' + 'ipt src="../User/artDialog.source.js?&skin=' + (_skin || 'aero') + '"></sc' + 'ript>');
        })();
    </script>
</head>
<body>
    <asp:PlaceHolder ID="form1" runat="server">
      <div style=" position:relative; width:600px; margin:auto;"> 
      <table class="border" cellspacing="0" style="margin: auto; margin-top: 10px; height: 180px;" id="display1"  runat="server">
            <tr class="title">
                <td align="center">
                    <strong>在线支付操作（确认支付款项)</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付平台：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayPlatform" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblOid" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblPayMoney" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblRate" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际划款金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="LblvMoney" runat="server"> </asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2" align="center" style="height: 38px;">
                                    <strong>点击“确认支付”按钮后，将进入在线支付界面。</strong>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="5" align="center" style="height: 38px; padding-left: 140px;">
                                    <asp:Label ID="LblHiddenValue" runat="server" CssClass="fleft"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
        <div style=" position:absolute; top:167px; left:260px;">
          <form id="Form2" runat="server">
          <input type="hidden" id="ddHid" name="ddHid" value=""  runat="server" />
          <input type="button" class="inputbutton" id="Cancel" value="取消支付" runat="server" onclick="window.location.href='/User/PreViewOrder.aspx?menu=Cartinfo'" style=" float:left;" />
          <asp:Button runat="server" Text="余额支付" ID="BtnXuNi" OnClick="BtnXuNi_Click1" Style="float: left;" />
          <table class="border" visible="false" style="margin:auto; text-align:center;" cellspacing="1" id="Table1" runat="server">
         <tr class="title">
                <td>
                    <strong>选择支付方式！</strong>
                </td>
          </tr>
          <tr>
             <td><asp:RadioButtonList ID="Payment" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="Purse" Selected="True">写意金币</asp:ListItem>
                    <asp:ListItem Value="SilverCoin">写意银币</asp:ListItem>
                 </asp:RadioButtonList>
             </td>
        </tr>
        <tr><td><asp:Button runat="server" Text="支付" ID="Button1" Style="float: left;" 
                onclick="Button1_Click" /></td></tr>
        </table>
          </form></div>
       </div> 
        <table class="border" style="margin:auto; text-align:center;" cellspacing="1" id="display2" runat="server">
            <tr class="title">
                <td>
                    <strong>恭喜您，下单成功！</strong>
                </td>
            </tr>
            <tr>
                <td class="tdbg">
                    <div class="p_center">
                        <table width="500" cellspacing="1" cellpadding="2" style="background-color: #CCCCCC;">
                            <tr class="title">
                                <td colspan="2">
                                    <b>确 认 款 项</b>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td style="width: 30%" align="right">
                                    支付方式：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfpt" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    订单号：
                                </td>
                                <td align="left">
                                    <asp:Label ID="ddh" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    支付金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="zfje" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    手续费：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sxf" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td align="right">
                                    实际金额：
                                </td>
                                <td align="left">
                                    <asp:Label ID="sjhbje" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr class="tdbg">
                                <td colspan="2">
                                    <input id="bt2" type="button" value="返回商城" onclick="window.location.href='/User/Develop/AppStore.aspx'" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</body>
</html>