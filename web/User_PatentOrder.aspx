﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User_PatentOrder.aspx.cs" Inherits="User_PatentCount" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register Src="ascx/zscqtop2.ascx" TagName="zscqtop2" TagPrefix="uc1" %>
<%@ Register Src="ascx/zscqadv.ascx" TagName="zscqadv" TagPrefix="uc2" %>
<%@ Register Src="ascx/patentleft.ascx" TagName="patentleft" TagPrefix="uc3" %>
<%@ Register Src="ascx/zscqfoot.ascx" TagName="zscqfoot" TagPrefix="uc4" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>我的专利订单_服务中心_会员中心_专利系统_环球汇通</title>
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <meta http-equiv="x-ua-compatible" content="ie=7" />

<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<style type="text/css">
    .time0 { font-size: 12px; color: #1e2b6c; font-weight: bold; }
    .time1 { font-size: 12px; color: #1e2b6c; font-weight: bold; }
    .time2 { font-size: 12px; color: #50245f; font-weight: bold; }
    .time3 { font-size: 12px; color: #852349; font-weight: bold; }
    .time4 { font-size: 12px; color: #b2333d; font-weight: bold; }
    .time5 { font-size: 12px; color: #d14b1a; font-weight: bold; }
    .time6 { font-size: 12px; color: #ebbf1c; font-weight: bold; }
    
    .aspnetpager a { display: block; float: left; padding: 2px 10px; background: #fff; text-align: center; line-height: 20px; border: 1px solid #ccc; color: #0065DB; margin: 0 3px; }
    .aspnetpager a:hover { border: 1px solid #FF5500; color: #FF5500; background: #FFEEE6; text-decoration: none; }
    .aspnetpager td .pagetext { width: 35px; height: 23px; background: #fff; text-align: center; line-height: 23px; border: 1px solid #ccc; }
    .aspnetpager td .submitbutton { width: 39px; height: 23px; background: url(images/fenbar.jpg); color: #fff; line-height: 23px; text-align: center; border: none; margin-left: 5px; }
  </style>
</head>
<body id="index">
  <form id="form1" runat="server">
  <uc1:zscqtop2 ID="zscqtop21" runat="server" />
  <uc2:zscqadv ID="zscqadv1" TypeId="55" runat="server" />
  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto;">
    <tr>
      <td height="3"></td>
    </tr>
  </table>
  <table width="1001" border="0" align="center" cellpadding="0" cellspacing="0" style="margin: 0 auto; background-color: #fff;">
    <tr>
      <td width="260" height="618" align="left" valign="top" style="background-image: url(images/server2.gif);">
        <!--专利左侧START-->
        <uc3:patentleft ID="patentleft1" runat="server" />
        <!--专利左侧END-->
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
                  <td align="left">首页 >> 专利系统 >> 会员中心 >> 服务中心 >> 我的专利订单 </td>
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
                                    <td width="98" align="center" class="font12bt">我的专利订单</td>
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
                              <td width="108" height="35" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">订单号</td>
                              <td width="56" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">专利</td>
                              <td width="66" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">总金额</td>
                              <td width="66" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">已付金额</td>
                              <td width="105" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">下单时间</td>
                              <td width="96" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">缴费时间</td>
                              <td width="101" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">订单状态</td>
                              <td width="66" align="center" bgcolor="#FFFFFF" class="font12b4e user_zlbottomline">操作</td>
                            </tr>
                            <asp:Repeater ID="Rtp_PatentOrderList" runat="server" OnItemDataBound="Rtp_PatentOrderList_ItemDataBound">
                              <ItemTemplate>
                                <tr>
                                  <td width="108" height="32" align="center" bgcolor="#FFFFFF">
                                    <%#Eval("nvc_OrderNumber")%></td>
                                  <td width="56" style=" padding:4px;" align="center" bgcolor="#FFFFFF">
                                    <asp:HiddenField ID="Hf_Id" runat="server" Value='<%#Eval("i_Id")%>' />
                                    <asp:Repeater ID="Rpt_PatentNameList" runat="server">
                                      <ItemTemplate>
                                        <a href="User_PatentInfo.aspx?pId=<%#Eval("i_PatentId")%>&href=<%=href %>"><%#Eval("nvc_PatentNumber")%></a> 
                                      </ItemTemplate>
                                    </asp:Repeater>
                                  </td>
                                  <td width="66" align="center" bgcolor="#FFFFFF">
                                    <%#Eval("dm_TotalMoney")%></td>
                                  <td width="66" align="center" bgcolor="#FFFFFF">
                                    <%#Eval("dm_CouponMoney")%></td>
                                  <td width="105" align="center" bgcolor="#FFFFFF">
                                    <%#Convert.ToDateTime(Eval("dt_AddTime")).ToString("yyyy-MM-dd HH:mm")%>
                                  </td>
                                  <td width="96" align="center" bgcolor="#FFFFFF">
                                    <%#Eval("dt_PayMoneyTime") == null || Eval("dt_PayMoneyTime") == "" ? "" : Convert.ToDateTime(Eval("dt_PayMoneyTime")).ToString("yyyy-MM-dd HH:mm")%>
                                  </td>
                                  <td width="101" align="center" bgcolor="#FFFFFF">
                                    <%#DALPO.GetStatus(Convert.ToInt32(Eval("i_Status")))%></td>
                                  <td width="66" align="center" bgcolor="#FFFFFF" style="line-height: 20px;">
                                    <asp:HiddenField ID="Hf_Status" runat="server" Value='<%#Eval("i_Status")%>' />
                                    <asp:LinkButton ID="Lbtn_EscOrder" runat="server" class="ac5t" OnClientClick='return confirm("是否真的取消？")' CommandName='<%#Eval("i_Id")%>' CommandArgument='<%#Eval("nvc_OrderNumber")%>' OnCommand="EscOrder">取消订单</asp:LinkButton>
                                    <a href="User_PatentOrderInfo.aspx?oId=<%#Eval("i_Id")%>" class="ac5t">查看</a> </td>
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
                             <%-- <webdiyer:AspNetPager ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" PageIndexBoxType="DropDownList" PageSize="20" OnPageChanging="AspNetPager1_PageChanging" ShowPageIndexBox="Always" ShowPageIndex="False" TextAfterPageIndexBox=" 页" TextBeforePageIndexBox="跳转到 ">
                              </webdiyer:AspNetPager>--%>
                              <webdiyer:AspNetPager NumericButtonCount="7" ID="AspNetPager1" ShowPageIndexBox="Always"
                                                                runat="server" ShowFirstLast="False" FirstPageText="首页" LastPageText="末页" PrevPageText="上一页"
                                                                NextPageText="下一页" ShowInputBox="Always" PageSize="20" ShowCustomInfoSection="Right"
                                                                CustomInfoHTML="共 %PageCount% 页 " InputBoxClass="pagetext" PageIndexBoxType="TextBox"
                                                                SubmitButtonText="确定" SubmitButtonClass="submitbutton" OnPageChanging="AspNetPager1_PageChanging"
                                                                TextAfterInputBox=" 页" TextBeforeInputBox="跳转到 "></webdiyer:AspNetPager>
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
  <uc4:zscqfoot ID="zscqfoot1" runat="server" />
  <div runat="server" id="div_a">
  </div>
  </form>
</body>
</html>
