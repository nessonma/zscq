﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="patentleft.ascx.cs" Inherits="ascx_patentleft" %>
<table width="260" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="73" align="left" valign="top" style="background-image: url(images/user1.gif);">&nbsp; </td>
  </tr>
  <tr>
    <td width="260" align="left" valign="top">
      <table width="260" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10">&nbsp; </td>
          <td width="221" height="22" bgcolor="#d34245">
            <table width="221" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="25" height="22">&nbsp; </td>
                <td width="13">&nbsp; </td>
                <td width="183" align="left" class="font12b">個人資料 </td>
              </tr>
            </table>
          </td>
          <td width="29">&nbsp; </td>
        </tr>
        <tr>
          <td align="left" valign="top">&nbsp; </td>
          <td align="left" valign="top" style="background-color: #f4f4f4;">
            <table >
              <tr>
                <td width="10" height="22"></td>
                <td width="96" align="right">会員番号：</td>
                <td width="65" align="left">
                <%= unumber%></td>
                <td width="45" rowspan="2"><img src="../<%= grageImg%>" width="45" height="45" /></td>
              </tr>
              <tr>
                <td width="10" height="22"> </td>
                <td align="right">会員レベル：</td>
                <td align="left">
                <%= grade %></td>
              </tr>
            </table>
          </td>
          <td align="left" valign="top">&nbsp; </td>
        </tr>
      </table>
      <table width="260" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10">&nbsp; </td>
          <td width="221" height="22" bgcolor="#d34245" id="faq1_td">
            <table width="221" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="25" height="22">&nbsp; </td>
                <td width="13"><img id="faq1_img" src="images/server5.gif" width="7" height="22" /> </td>
                <td width="183" align="left" class="font12b" style="cursor: pointer;" onclick="txt_roll('faq1');">サービスセンター </td>
              </tr>
            </table>
          </td>
          <td width="29">&nbsp; </td>
        </tr>
         <tr id="faq1" style="display:;">
          <td align="left" valign="top">&nbsp; </td>
          <td align="left" valign="top" style="background-color: #f4f4f4;">
            <table width="221" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="8" colspan="3"></td>
              </tr>
              <tr>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentList.aspx" <% if (myurl == "user_patentlist" || myurl == "user_patentselect" || myurl == "user_patentadd" || myurl == "user_patentadd1"|| myurl == "user_patentadd2"|| myurl == "user_patentinfo"||myurl == "user_patentaddok"|| myurl == "user_patentcount"){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·私の特許</a> </td>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
              <tr>
                <td height="6" colspan="3"></td>
              </tr>
              <tr>
                <td width="29">&nbsp; </td>
                <td width="182" height="18" align="left" valign="top">
                  <table width="150" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="23" align="left">&nbsp; </td>
                      <td width="127" height="22" align="left"><a href="User_PatentList.aspx" <% if (myurl == "user_patentlist" || myurl == "user_patentinfo"){ %>class="ac7" <%}else{%>class="" <%} %>>·全ての特許情報</a> </td>
                    </tr>
                    <tr>
                      <td width="23" align="left">&nbsp; </td>
                      <td width="127" height="22" align="left"><a href="User_PatentSelect.aspx" <% if (myurl == "user_patentselect" ){ %>class="ac7" <%}else{%>class="" <%} %>>·特許情報検索</a> </td>
                    </tr>
                    <tr>
                      <td width="23" align="left">&nbsp; </td>
                      <td width="127" height="22" align="left"><a href="User_PatentAdd.aspx" <% if (myurl == "user_patentadd" ||myurl == "user_patentadd1"||myurl == "user_patentadd2"||myurl == "user_patentaddok"){ %>class="ac7" <%}else{%>class="" <%} %>>·特許情報を添加</a> </td>
                    </tr>
                    <tr>
                      <td width="23" align="left">&nbsp; </td>
                      <td width="127" height="22" align="left"><a href="User_PatentCount.aspx" <% if (myurl == "user_patentcount" ){ %>class="ac7" <%}else{%>class="" <%} %>>·特許案件を統計</a> </td>
                    </tr>
                  </table>
                </td>
                <td width="10">&nbsp; </td>
              </tr>
              <tr>
                <td height="6" colspan="3"></td>
              </tr>
              <tr>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentOrder.aspx" <% if (myurl == "user_patentorder" || myurl == "user_patentorderinfo"|| myurl == "user_patentorderadd1"|| myurl == "user_patentorderadd2"){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·私の特許オーダー</a> </td>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
              <tr>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentIntegral.aspx" <% if (myurl == "user_patentintegral" ||myurl == "user_patentsetintegral" ){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·私のポイント</a> </td>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
              <tr>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentCoupon.aspx" <% if (myurl == "user_patentcoupon" ){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·私のクーポン</a> </td>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
              <tr>
                <td>&nbsp; </td>
                <td height="30" align="left"><a href="User_PatentMessage.aspx" <% if (myurl == "user_patentmessage" ){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·メッセージフィードバック</a> </td>
                <td>&nbsp; </td>
              </tr>
            </table>
          </td>
          <td align="left" valign="top">&nbsp; </td>
        </tr>
        <tr>
          <td>&nbsp; </td>
          <td height="22" bgcolor="#d34245" id="faq2_td">
            <table width="221" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="25" height="22">&nbsp; </td>
                <td width="13"><img id="faq2_img" src="images/server5.gif" width="7" height="22" /> </td>
                <td width="183" align="left" class="font12b" style="cursor: pointer;" onclick="txt_roll('faq2');">アカウントセンター </td>
              </tr>
            </table>
          </td>
          <td>&nbsp; </td>
        </tr>
        <tr id="faq2" style="display:;">
          <td align="left" valign="top">&nbsp; </td>
          <td align="left" valign="top" style="background-color: #f4f4f4;">
            <table width="221" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="8" colspan="3"></td>
              </tr>
              <tr>
                <td width="36" style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td width="176" height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentUpdateData.aspx" <% if (myurl == "user_patentupdatedata" ){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·私の資料</a> </td>
                <td width="9" style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
              <tr>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
                <td height="30" align="left" style="border-bottom: 1px solid #d3d3d3;"><a href="User_PatentUpdatePwd.aspx" <% if (myurl == "user_patentupdatepwd" ){ %>class="font12bd44147" <%}else{%>class="" <%} %>>·パスワードを修正</a> </td>
                <td style="border-bottom: 1px solid #d3d3d3;">&nbsp; </td>
              </tr>
             
             
            </table>
          </td>
          <td align="left" valign="top">&nbsp; </td>
        </tr>
        <tr>
                    <td>&nbsp;
                        
                    </td>
                    <td bgcolor="#d34245">
                        <table width="221" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="25" height="22">&nbsp;
                                    
                                </td>
                                <td width="13">
                                    <img  src="images/server5.gif" width="7" height="22" />
                                </td>
                                <td width="183" align="left" class="font12b"><a href="Login.aspx?flag=zl&esc=true" class="ac2">システムからログアウト</a></td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;
                        
                    </td>
                </tr>
        <tr>
          <td colspan="3" height="3"></td>
        </tr>
      </table>
      <table width="260" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10" height="56">&nbsp; </td>
          <td width="222">&nbsp; </td>
          <td width="28">&nbsp; </td>
        </tr>
        <tr>
          <td>&nbsp; </td>
          <td align="left" valign="top"><a href="download.aspx?filename=../<%=filename %>" target="_blank"><img src="images/user2.gif" /></a>
            <%--<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/user2.gif" Width="221" Height="50" OnClick="ImageButton1_Click" />--%>
          </td>
          <td>&nbsp; </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<script type="text/javascript">
  function switchTag1(tag, content, k) {
    for (i = 1; i < 3; i++) {
      if (i == k)
      { document.getElementById(tag + i).className = "font12bt"; document.getElementById(content + i).className = ""; }
      else
      { document.getElementById(tag + i).className = "font12bs"; document.getElementById(content + i).className = "h_lsit_none"; }
    }
  }
  function txt_roll(str) {
    if (document.getElementById(str).style.display == "") {
      document.getElementById(str).style.display = "none";
      document.getElementById(str + "_td").setAttribute("bgColor", "#949293");
      document.getElementById(str + "_img").setAttribute("src", "images/server6.gif");
    }
    else {
      document.getElementById(str).style.display = "";
      document.getElementById(str + "_td").setAttribute("bgColor", "#d34245");
      document.getElementById(str + "_img").setAttribute("src", "images/server5.gif");
    }
  } 
</script>
