﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_pageinfo.aspx.cs" Inherits="user_sbupdate" %>
<%@ Register Src="ascx/zscqfoot.ascx" TagName="zscqfoot" TagPrefix="uc2" %>
<%@ Register Src="ascx/zscqtop2.ascx" TagName="zscqtop2" TagPrefix="uc4" %>
<%@ Register Src="ascx/zscqadv.ascx" TagName="zscqadv" TagPrefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>友情提示</title>
    <meta name="Keywords" content="环球汇通" />
    <meta name="Description" content="环球汇通知识产权代缴年费电子商务平台" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=7" />

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body id="index">
    <form id="form1" runat="server">
    <input id="hi_guoji" type="hidden" runat="server"/>
     <input id="hi_usertype" type="hidden" runat="server"/>
     <uc4:zscqtop2 ID="zscqtop21" runat="server" />
    <uc3:zscqadv ID="zscqadv1" TypeId="0" runat="server" />
       <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto; background-color: #fff; height:350px;">
        <tr>
          <td align="center" valign="middle">
            <strong style="font-size:24px;">友情提示：此权限暂时未开放，请与管理员联系！</strong>
          </td>
        </tr>
       </table>
    <div id="div_a" runat="server"></div>
    <uc2:zscqfoot ID="zscqfoot1" runat="server" />
    </form>
</body>
</html>
