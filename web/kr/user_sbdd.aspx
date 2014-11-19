﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_sbdd.aspx.cs" Inherits="user_sbdd" %>

<%@ Register Src="ascx/zscqfoot.ascx" TagName="zscqfoot" TagPrefix="uc2" %>
<%@ Register Src="ascx/zscqtop2.ascx" TagName="zscqtop2" TagPrefix="uc4" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="ascx/zscq_sb_leftmenu.ascx" TagName="zscq_sb_leftmenu" TagPrefix="uc1" %>
<%@ Register Src="ascx/zscqadv.ascx" TagName="zscqadv" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>상표 주문_서비스 센터_상표시시템_Global Patent</title>
  <meta name="Keywords" content="Global Patent" />
  <meta name="Description" content="HQHT 연차료관리 전자상거래 플랫폼" />
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="x-ua-compatible" content="ie=7" />

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <style type="text/css">
    .aspnetpager a { display: block; float: left; padding: 2px 10px; background: #fff; text-align: center; line-height: 20px; border: 1px solid #ccc; color: #0065DB; margin: 0 3px; }
    .aspnetpager a:hover { border: 1px solid #FF5500; color: #FF5500; background: #FFEEE6; text-decoration: none; }
    .aspnetpager td .pagetext { width: 35px; height: 23px; background: #fff; text-align: center; line-height: 23px; border: 1px solid #ccc; }
    .aspnetpager td .submitbutton { width: 39px; height: 23px; background: url(images/fenbar.jpg); color: #fff; line-height: 23px; text-align: center; border: none; margin-left: 5px; }
  </style>
  <script language="javascript">
    function switchTag1(tag, content, k) {
      for (i = 1; i < 3; i++) {
        if (i == k)
        { document.getElementById(tag + i).className = "font12bt"; document.getElementById(content + i).className = ""; }
        else
        { document.getElementById(tag + i).className = "font12bs"; document.getElementById(content + i).className = "h_lsit_none"; }
      }
    }
    var rollFlag = 0;

    function txt_roll(str) {
      sub_num = str.substring(str.length - 2);
      sub_str = str.substring(0, str.length - 2);

      if (document.all[str].style.display == "") {
        document.all[str].style.display = "none";
        rollFlag = 0;
        return;
      }
      else {
        if (rollFlag != 0) {
          //document.all[sub_str+rollFlag].style.display="none";
          document.all[str].style.display = "";
        }

        document.all[str].style.display = "";
        rollFlag = sub_num;
      }

    }
  </script>
</head>
<body id="index">
  <form id="form1" runat="server">
  <uc4:zscqtop2 ID="zscqtop21" runat="server" />
  <uc3:zscqadv ID="zscqadv1" TypeId="96" runat="server" />
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
                  <td width="38" height="28">&nbsp;</td>
                  <td width="701">&nbsp;</td>
                </tr>
                <tr>
                  <td height="19">&nbsp;</td>
                  <td align="left"><a href="index.aspx">홈</a>&nbsp;>>&nbsp;상표시시템&nbsp;>>&nbsp;서비스 센터&nbsp;>>&nbsp;상표 주문</td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td height="639" valign="top">
              <table width="716" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="25" height="28">&nbsp;</td>
                  <td width="691">&nbsp;</td>
                </tr>
                <tr>
                  <td height="123">&nbsp;</td>
                  <td width="691" align="left" valign="top">
                    <table width="689" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="115" align="left" valign="top">
                          <table width="687" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="687" height="20" align="left" valign="top" style="border-bottom: 1px solid #d34245;">
                                <table width="114" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="10" height="20">&nbsp;</td>
                                    <td width="98" align="center" class="font12bt">상표 주문</td>
                                    <td width="6"></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="left"></td>
                            </tr>
                          </table>
                          <table width="689" border="0" cellspacing="1" cellpadding="1" bgcolor="#d0d0d0">
                            <tr>
                              <td width="108" height="35" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">주문 번호</td>
                              <td width="120" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">상표 출원번호</td>
                              <td width="120" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">총금액</td>
                              <%--   <td width="66" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">납부금액</td>--%>
                              <td width="78" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">시간</td>
                              <td width="78" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">납부시간</td>
                              <td width="88" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">주문 상태</td>
                              <td width="49" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">상세</td>
                               <td width="100" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">작업</td>
                            </tr>
                            <asp:Repeater ID="rp_orderlist" runat="server" OnItemDataBound="rp_orderlist_ItemDataBound">
                              <ItemTemplate>
                                <asp:HiddenField ID="hf_oid" runat="server" Value='<%# Eval("i_Id") %>' />
                                <tr>
                                  <td height="32" align="center" bgcolor="#FFFFFF">
                                    <%# Eval("nvc_OrderNumber") %></td>
                                  <td align="center" bgcolor="#FFFFFF">
                                    <asp:Repeater runat="server" ID="repTrademark">
                                      <ItemTemplate>
                                        <div style="text-align: center; width: 100%;">
                                          <%--<%#  Container.ItemIndex+1%>.--%> <a title="상표번호：<%#Eval("nvc_SBRegNum")%>" href="user_sbck.aspx?t_r_id=<%#Eval("i_TrademarkId")%>">
                                            <%#Eval("nvc_SBRegNum")%></a>
                                        </div>
                                      </ItemTemplate>
                                    </asp:Repeater>
                                  </td>
                                  <td align="center" bgcolor="#FFFFFF">
                                   <%#GetBizhong()%><%# GetGuojiName(int.Parse(Eval("i_GuoJiId").ToString())) == "中国" ? Eval("dm_TotalMoney") : Eval("dm_TotalMoneyGY")%></span> </td>
                                  <%--     <td width="66" align="center" bgcolor="#FFFFFF">1025</td>--%>
                                  <td align="center" bgcolor="#FFFFFF">
                                    <%# Eval("dt_AddTime") %></td>
                                  <td align="center" bgcolor="#FFFFFF">
                                    <%# Eval("dt_PayTime") %></td>
                                  <td align="center" bgcolor="#FFFFFF">
                                    <%#ConvertStatus(Eval("i_Status"),"kr")%></td>
                                  <td align="center" bgcolor="#FFFFFF"><a href="user_sbddck.aspx?order=<%# Eval("i_Id") %>" class="ac5t">보기</a> </td>
                                    <td align="center" bgcolor="#FFFFFF">
                                    <%# (Eval("i_Status").ToString() == "0" || Eval("i_Status").ToString() == "1") ? "<a href='user_sbdd.aspx?order=" + Eval("i_Id") + "' class='ac5t'>주문취소</a>" : (Eval("i_Status").ToString() == "5" ? "주문 취소" : "")%>
                                     </td>
                                </tr>
                              </ItemTemplate>
                            </asp:Repeater>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right" class="font12b4e">
                          <table class="aspnetpager" cellspacing="5">
                            <tr>
                              <webdiyer:AspNetPager NumericButtonCount="7" ID="AspNetPager1" ShowPageIndexBox="Always" runat="server" ShowFirstLast="False" FirstPageText="홈" LastPageText="끝페지로" PrevPageText="전으로" NextPageText="다음으로" ShowInputBox="Always" PageSize="12" ShowCustomInfoSection="Right" CustomInfoHTML="총 %PageCount% 페지 " InputBoxClass="pagetext" PageIndexBoxType="TextBox" SubmitButtonText="확정" SubmitButtonClass="submitbutton" OnPageChanged="AspNetPager1_PageChanged" TextAfterInputBox="페지" TextBeforeInputBox="건너 뛰기">
                              </webdiyer:AspNetPager>
                            </tr>
                          </table>
                        </td>
                      </tr>
                      <tr>
                        <td align="left">&nbsp;</td>
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
  <uc2:zscqfoot ID="zscqfoot1" runat="server" />
  </form>
</body>
</html>
