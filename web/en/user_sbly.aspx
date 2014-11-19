﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_sbly.aspx.cs" Inherits="user_sbly" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="ascx/zscqfoot.ascx" TagName="zscqfoot" TagPrefix="uc2" %>
<%@ Register Src="ascx/zscqadv.ascx" TagName="zscqadv" TagPrefix="uc3" %>
<%@ Register Src="ascx/zscqtop2.ascx" TagName="zscqtop2" TagPrefix="uc4" %>
<%@ Register Src="ascx/zscq_sb_leftmenu.ascx" TagName="zscq_sb_leftmenu" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=7" />
  <%=TitleOrKeyword %>
  <script src="js/jquery-1.8.0.js" type="text/javascript"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <style type="text/css">
    #bg { display: none; z-index: 1; background: #0b0b0b; left: 0px; width: 100%; height: 100%; position: absolute; top: 0px; filter: alpha(opacity=70); opacity: 0.7; }
    #show { display: none; z-index: 2; position: absolute; top: 0px; }
  </style>
</head>
<body id="index">
  <form id="form1" runat="server">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
  </asp:ScriptManager>
  <div id="bg">
  </div>
  <div id="show">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
        <table width="571" height="299" border="0" cellspacing="0" cellpadding="0" style="margin: 0 auto; background-image: url(images/faq_bg.png);">
          <tr>
            <td height="299" align="left" valign="top">
              <table width="571" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="36" height="58">&nbsp; </td>
                  <td width="480">&nbsp; </td>
                  <td width="55" align="right" valign="top"><a href="#"><img src="images/faq_close.gif" width="38" height="38" border="0" onclick="hidediv();" /></a> </td>
                </tr>
                <tr>
                  <td height="205">&nbsp; </td>
                  <td align="left" valign="top">
                    <table width="480" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="41" height="32" align="left"><strong>Subject：</strong> </td>
                        <td width="432">
                          <input type="text" name="ipt_subtitle" id="ipt_subtitle" class="required" style="height: 23px; width: 435px; font-size: 12px; border: 1px solid #bebebe;" maxlength="70" />
                        </td>
                      </tr>
                      <tr>
                        <td height="32" align="left"><strong>E-mail：</strong> </td>
                        <td>
                          <input type="text" name="ipt_email" id="ipt_email" class="required email" style="height: 23px; width: 435px; font-size: 12px; border: 1px solid #bebebe;" maxlength="30" />
                        </td>
                      </tr>
                      <tr>
                        <td height="88" align="left"><strong>Content：</strong> </td>
                        <td>
                          <textarea name="txt_content" id="txt_content" class="required" cols="45" rows="5" style="height: 80px; width: 431px; font-size: 12px; border: 1px solid #bebebe;"></textarea>
                        </td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="center"><strong style="color: #d34245;">If you need more assistance, please contact us directly</strong> </td>
                      </tr>
                      <tr>
                        <td height="30" colspan="2" align="center">
                          <input id="ftype" name="ftype" type="hidden" value="" />
                          <asp:ImageButton runat="server" ID="ibtn_ok" ImageUrl="images/faq3.gif" Width="118" Height="29" BorderWidth="0" OnClick="ibtn_ok_Click" OnClientClick="return checkVal();" />
                        </td>
                      </tr>
                    </table>
                  </td>
                  <td>&nbsp; </td>
                </tr>
                <tr>
                  <td height="15">&nbsp; </td>
                  <td>&nbsp; </td>
                  <td>&nbsp; </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </ContentTemplate>
    </asp:UpdatePanel>
  </div>
  <input type="hidden" id="Hi_MemberId" runat="server" value="" />
  <uc4:zscqtop2 ID="zscqtop21" runat="server" />
  <uc3:zscqadv ID="zscqadv1" TypeId="68" runat="server" />
  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto;">
    <tr>
      <td height="3"></td>
    </tr>
  </table>
  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto; background-color: #fff;">
    <tr>
      <td width="260" height="618" align="left" valign="top" style="background-image: url(images/server2.gif);">
        <uc1:zscq_sb_leftmenu ID="zscq_sb_leftmenu1" runat="server" />
      </td>
      <td align="left" valign="top">
        <table width="741" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="52" align="left" valign="top" style="background-image: url(images/zl_right1.gif);">
              <table width="739" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="38" height="28">&nbsp; </td>
                  <td width="701">&nbsp; </td>
                </tr>
                <tr>
                  <td height="19">&nbsp; </td>
                  <td align="left"><a href="index.aspx">Front page</a>&nbsp;>>&nbsp;System of Trademark Maintenance&nbsp;>>&nbsp;Service Center&nbsp;>>&nbsp;Comments feedback  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="639" valign="top">
              <table width="716" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="28">&nbsp; </td>
                  <td>&nbsp; </td>
                </tr>
                <tr>
                  <td width="25" height="28">&nbsp; </td>
                  <td width="691" align="right"><img src="images/faq1.gif" width="86" height="27" border="0" style="cursor: pointer;" onclick="openBg(1);showdiv('1');" /></td>
                </tr>
                <tr>
                  <td height="123">&nbsp; </td>
                  <td width="691" align="left" valign="top">
                    <table width="689" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td align="left" valign="top">
                          <table width="687" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="687" height="20" align="left" valign="top" style="border-bottom: 1px solid #d34245;">
                                <table width="687" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="601" height="29" align="left" valign="bottom">
                                      <table width="184" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="10" height="20">&nbsp; </td>
                                          <td width="169" align="center" class="font12bt">Comments feedback </td>
                                          <td width="5"></td>
                                        </tr>
                                      </table>
                                    </td>
                                    <td width="86" align="left" valign="top">&nbsp; </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="right">&nbsp; </td>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td align="left" valign="top" style="line-height: 21px; word-break: break-all; word-wrap: break-word;">
                          <%if (AspNetPager1.RecordCount > 0)
                            { %>
                          <asp:Repeater ID="Rpt_List" runat="server">
                            <ItemTemplate>
                              <table width="689" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td height="21" align="center" valign="top" style="line-height: 21px;">
                                    <table width="630" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="15" height="15">&nbsp; </td>
                                        <td width="808" align="left" valign="top">
                                          <table width="630" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td width="807" height="28" align="left"><strong>Q：<%#Eval("nvc_SubTitle")%>?</strong></td>
                                            </tr>
                                            <tr>
                                              <td width="807" height="28" align="left" valign="top" style="line-height: 21px;"><strong>A：</strong>
                                                <%#Eval("nvc_ReplayContent")%>
                                              </td>
                                            </tr>
                                          </table>
                                        </td>
                                        <td width="28">&nbsp; </td>
                                      </tr>
                                    </table>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="26" align="left" style="background-image: url(images/faq2.gif);">&nbsp; </td>
                                </tr>
                              </table>
                            </ItemTemplate>
                          </asp:Repeater>
                          <%}
                            else
                            { %>
                          Failure of find the related contents！
                          <%} %>
                        </td>
                      </tr>
                      <tr>
                        <td align="right">
                          <table class="aspnetpager" cellspacing="5">
                            <tr>
                              <webdiyer:AspNetPager NumericButtonCount="5" ID="AspNetPager1" OnPageChanged="AspNetPager1_PageChanged" AlwaysShow="true" ShowPageIndex="true" runat="server" ShowFirstLast="true" FirstPageText="Front page" LastPageText="Last page" PrevPageText="Previous page" NextPageText="Next page" ShowInputBox="Never" PageSize="6" SubmitButtonText="GO" TextAfterInputBox="page" CustomInfoHTML="Total %PageCount% page " CustomInfoTextAlign="Right" ShowCustomInfoSection="Right" SubmitButtonClass="button" ShowDisabledButtons="true">
                              </webdiyer:AspNetPager>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">&nbsp; </td>
                      </tr>
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <uc2:zscqfoot ID="zscqfoot2" runat="server" />
  <div id="div_a" runat="server">
  </div>
  </form>
</body>
</html>
<script type="text/javascript">
  function openBg(state) { //遮照打开关闭控制
    if (state == 1) {
      document.getElementById("bg").style.display = "block";
      var h = document.body.offsetHeight > document.documentElement.offsetHeight ? document.body.offsetHeight : document.documentElement.offsetHeight;
      h = h > document.body.scrollHeight ? h : document.body.scrollHeight;
      //alert(document.body.clientHeight);
      //alert(document.body.scrollHeight);
      //alert(document.body.offsetHeight);
      //alert(document.documentElement.offsetHeight); 
      document.getElementById("bg").style.height = h + "px";
    }
    else {
      document.getElementById("bg").style.display = "none";
    }
  }
  function showdiv(id) {
    //var id=$("#Hidden1").val();
    //alert(id);
    // var showdiv = $("#show");

    $("#show").show();
    document.getElementById("show").style.left = (document.getElementById("bg").offsetWidth - document.getElementById("show").offsetWidth) / 2 + "px";
    document.getElementById("show").style.top = document.documentElement.scrollTop + 100 + "px";
    //$("#Label2").html(id);
    // $("#Text4").val(id);
  }

  function hidediv() {
    $("#show").hide();
    $("#bg").hide();
  }
  function checkshuzi(id) {
    //定义正则表达式部分
    var str = $("#" + id).val();
    var reg = /^\d+$/;
    if (str.constructor === String) {
      var re = value.match(reg);
      return true;
    }
    return false;
  }
</script>
<script src="js/validate.js" type="text/javascript"></script>
<script type="text/javascript">
  function checkVal() {
    var titleField = $("#ipt_subtitle");
    var emailField = $("#ipt_email");
    var textField = $("#txt_content");
    return FieldValidation.validate(titleField, emailField, textField);
  }
</script>
