function isMobile(g){var f=g;if(f!=null&&f!=""){var e=/^13\d{9}$/;var d=/^15\d{9}$/;var c=/^0\d{10,11}$/;var b=/^18\d{9}$/;var a=false;if(e.test(f)){a=true}if(d.test(f)){a=true}if(c.test(f)){a=true}if(b.test(f)){a=true}return a}else{return false}}function isIE6(){if(window.XMLHttpRequest){return false}else{if(window.ActiveXObject){var b=navigator.appName;var d=navigator.appVersion;var a=d.split(";");var c=a[1].replace(/[ ]/g,"");if(b=="Microsoft Internet Explorer"&&c=="MSIE7.0"){return false}else{if(b=="Microsoft Internet Explorer"&&c=="MSIE6.0"){return true}}}}}function initTabSwitchMouseOverEvent(e,d,c){var a=jQuery(e);var b=jQuery(d);if(a&&a.size()>1){jQuery(a).mouseover(function(){var h=jQuery(e+"."+c);var i=jQuery(this);var g=a.index(h);var f=a.index(i);h.removeClass(c);i.addClass(c);b.eq(g).hide();
b.eq(f).show()})}};(function(a){a.fn.extend({YHDHomePage:function(c){c=a.extend(a.YHDHomePage.defaults,c||{});return this.each(function(){new a.YHDHomePage(c)})}});a.YHDHomePage=function(c){a.YHDHomePage.Init(c);a.YHDHomePage.PanelSlider(c);var currSiteId;if(currSiteId!=null&&currSiteId==1){a.YHDHomePage.GroupBuy(c);a.YHDHomePage.TrainMobileAirticket(c)}a.YHDHomePage.UserLoginInfo(c);a.YHDHomePage.friendlyRecommend()};a.YHDHomePage.Init=function(c){};a.YHDHomePage.PanelSlider=function(h){function d(m,s){var q=new Object();var l=a(m);a(".panel",l).css({display:"block","float":"left"});var n=a(".panel",l).size();q.panelCount=n;if(s=="x"){var k=a(".panel",l).width();var o=k*n;a(".panel-container",l).width(o);q.panelOffset=k}else{if(s=="y"){var r=a(".panel",l).height();var p=r*n;a(".panel-container",l).height(p);var k=a(".panel-container",l).width();
a(".panel",l).width(k);q.panelOffset=r}else{q=null}}return q}var j=function(l,m,k,o,n){if(m==0){return k}if(m==n){return k+o}if((m/=n/2)<1){return o/2*Math.pow(2,10*(m-1))+k}return o/2*(-Math.pow(2,-10*--m)+2)+k};var g=function(l,m,k,o,n){if((m/=n/2)<1){return o/2*m*m*m+k}return o/2*((m-=2)*m*m+2)+k};function c(k){if(k!=null){var l=null;a(k).each(function(){var m=a(this);var n=m.attr("loaded");if(m&&m.attr("original")!=null&&!n){a("<img />").bind("load",function(){a(m).hide().attr("src",a(m).attr("original"))["show"](1)}).attr("src",a(m).attr("original"));m.attr("loaded","true")}})}}function e(){var u="#first_banner_slider";var r="#first_banner_slider_nav";var n=d(u,"y");if(n!=null){var k=0;var l=n.panelOffset;var p=n.panelCount;var s=false;a(r+">li").click(function(){a(r+">li.select").removeClass("select");
a(this).addClass("select");var v=a(r+">li").index(a(this));var x=-(l*v);if(s==false){var w=a(u+" .panel").find("img");c(w);s=true}if(v==0){a(u+">.panel-container").css({marginTop:x-l})}a(u+">.panel-container").animate({marginTop:x},600,j)}).mouseover(function(){clearTimeout(q);var v=a(this);q=setTimeout(function(){v.click()},300)});var o=function(){var v=a(r+">li.select");var w=a(r+">li").index(v);a(r+">li").eq((w+1)%p).click()};var m=5000;var t=setInterval(o,m);var q=null;a(u+","+r).mouseout(function(){clearInterval(t);t=setInterval(o,m)}).mouseover(function(){clearInterval(t)})}}function i(){var p="#second_banner_slider";var n=d(p,"x");if(n!=null){var k=0;var l=n.panelOffset;var o=n.panelCount;var m=false;a("#prev_banner").click(function(){k=k-1<0?o-1:k-1;if(m==false){var q=a(p+" .panel").find("img");
c(q);m=true}var r=-(l*k);if(k==o-1){r=l;a("#second_banner_slider .panel:last").css({position:"relative",left:-1*o*l+"px"});a(p+">.panel-container").animate({marginLeft:r+"px"},700,null,function(){a("#second_banner_slider .panel:last").css({position:"relative",left:"0px"});a(p+">.panel-container").css({marginLeft:-(o-1)*l})})}else{a(p+">.panel-container").animate({marginLeft:r},700)}});a("#next_banner").click(function(){k=(k+1)>o-1?0:k+1;var r=-(l*k);if(m==false){var q=a(p+" .panel").find("img");c(q);m=true}if(k==0){r=-l*o;a("#second_banner_slider .panel").eq(0).css({position:"relative",left:o*l+"px"});a(p+">.panel-container").animate({marginLeft:r+"px"},700,null,function(){a("#second_banner_slider .panel").eq(0).css({position:"relative",left:"0px"});a(p+">.panel-container").css({marginLeft:0})
})}else{a(p+">.panel-container").animate({marginLeft:r},700)}})}}function f(){var o="#me_slider";var m="#buylimitcard_nav";var n=d(o,"y");if(n!=null){var k=n.panelOffset;var l=false;a(m+" li").click(function(){a(m+" li.select").removeClass("select");a(this).addClass("select");var p=a(m+" li").index(a(this));var r=-(k*p);if(l==false){var q=a(o+" .panel").find("img");c(q);l=true}a(o+">.panel-container").css({marginTop:r})})}}e();i();f()};var b=function(c){var f=c;var e;var d=function(){f=f-1;if(f>0){var j=Math.floor(f%60);var i=Math.floor((f/60)%60);var g=Math.floor((f/3600)%24);var h=Math.floor((f/3600)/24);j=j<10?"0"+j:j;i=i<10?"0"+i:i;if(h&&h>0){g=24*h+g}g=g<10?"0"+g:g;var k="ʣ��";k+='&nbsp;<span class="red9">'+g+'</span>&nbsp;Сʱ&nbsp;<span class="red9">'+i+'</span>&nbsp;��&nbsp;<span class="red9">'+j+"</span>&nbsp;��";
document.getElementById("groupBuyRemainSecond").innerHTML=k;return false}else{document.getElementById("groupBuyRemainSecond").innerHTML='<span class="red9">�ѽ�ֹ.</span>';clearInterval(e);return true}};if(a("#groupBuyRemainSecond").size()>0){e=setInterval(d,1000)}};a.YHDHomePage.GroupBuy=function(d){var c="/product/ajaxGetCurrentGroupon.do";var f=a("#proviceIdInput").val();var g=a("#merchantIdInput").val();var e={proviceId:f,merchantId:g,rd:Math.random()};a.ajax({type:"GET",url:c,data:e,success:function(h){if(h!=null){if(a("#index_GrouponImg").size()>0){a("#index_GrouponImg").remove()}if(a("#index_grouponAd").size()>0){a("#index_grouponAd").remove()}a("#index_grouponLoading").remove();a("#index_left_column").append(h);var i=parseInt(a("#groupBuyRemainSecond").attr("value"));b(i)}}})};a.YHDHomePage.TrainMobileAirticket=function(e){c();
g();f();d();function c(){var i=a("#trainMobileAirticketNav li");var h=a("#trainMobileAirticket_container .tab");if(i&&i.size()>1){a(i).click(function(){var l=a("#trainMobileAirticketNav li.select");var m=a(this);var k=i.index(l);var j=i.index(m);l.removeClass("select");m.addClass("select");h.eq(k).hide();h.eq(j).show()})}}function g(){var h="�������ֻ�����";a("#mobile_num_input").blur(function(){var i=a(this).val();i=a.trim(i);if(i==null||i.length==0){a(this).val(h)}else{if(!isMobile(i)){a(this).select()}else{a("#mobile_account_select").change()}}}).focus(function(){var i=a(this).val();i=a.trim(i);if(i&&i==h){a(this).val("")}a(this).select()});a("#mobile_account_select").change(function(){var l=a(this).val();var m=a("#mobile_num_input").val();if(!isMobile(m)){YHD.alert("�ֻ������ʽ����ȷ!");a("#mobile_num_input").select()
}if(l&&l!="0"){var j="/servicechannel/showAccount.do";var i="key="+l+"&card="+m;var k={key:l,card:m};a.get(j,k,function(n){if(n&&n.indexOf("��")==-1){YHD.alert(n);a("#mobile_num_input").select();a("#mobile_account_select").attr("value",0);a("#mobile_account_price").empty()}else{a("#mobile_account_price").html('<span class="orange blod" >'+n+"</span>&nbsp;&nbsp;Ԫ")}})}else{a("#mobile_account_price").empty()}});a("#goto_mobile_charge").click(function(k){var i=a("#mobile_account_select").val();var j=a("#mobile_num_input").val();j=a.trim(j);if(j==""){YHD.alert("�ֻ����벻��Ϊ��!");a("#mobile_num_input").select();return}else{if(!isMobile(j)){YHD.alert("�ֻ������ʽ����ȷ!");a("#mobile_num_input").select();return}else{if(i==null||i=="0"){YHD.alert("ѡ���ֵ���!");return}else{a("#mobileChargeForm").submit()}}}k.stopPropagation()
})}function f(){a("#trainMobileAirticket_container").mouseover(function(i){var h="";if(isDevMode==0){h="/js/v2/build/train_station_selector.js?"+currVersionNum}else{h="/tools/js.do?name=train_station_selector.js&root=/js/v2"}a.ajax({type:"GET",async:false,url:h,data:null,success:function(){a("#trainMobileAirticket_container").unbind()},dataType:"script"});i.stopPropagation()})}function d(){a("#airticket_panel").mouseover(function(i){var h="";if(isDevMode==0){h="/js/v2/build/home_index_airticket.js?"+currVersionNum}else{h="/tools/js.do?name=home_index_airticket.js&root=/js/v2"}a.ajax({type:"GET",async:false,url:h,data:null,success:function(){a("#airticket_panel").unbind()},dataType:"script"});i.stopPropagation()})}};a.YHDHomePage.UserLoginInfo=function(e){var h=a.cookie("ut");var g=0;if(h&&h!=null){g=1
}if(g==1){var c="/product/ajaxGetUserLoginInfoJson.do";var f={rd:Math.random()};var d="";a.get(c,f,function(i){if(i&&i.message=="success"){if(i.data==null){i.data=0}if(currSiteId==1){d+='<div class="loginintext tc">����ǰ�ʻ��Ŀ�����<span class="red9">��'+i.data+"</span></div>";d+='<div class="tc"><div class="logininbtn fl mr5 ml30 color_gary_none"><a href="/invite/commend_register.do?from=user">�������</a></div>';d+='<div class="logininbtn fl color_gary_none"><a href="/usermanager/order/myIndex.do">�ҵ�1�ŵ�</a></div></div>';a("#index_login_box").removeClass("logincon").addClass("loginin").html(d)}else{if(currSiteId==2){d+='<div class="loginintext tc">����ǰ�ʻ��Ŀ�����<span class="red9">��'+i.data+"</span></div>";d+='<div class="tc"><div class="logininbtn fl mr5 ml30 color_gary_none"><a href="/invite/commend_register.do?from=user">�������</a></div>';
d+='<div class="logininbtn fl color_gary_none"><a href="/usermanager/order/myIndex.do">�ҵ�ҩ��</a></div></div>';a("#index_login_box").removeClass("logincon").addClass("loginin").html(d)}else{d+='<div class="loginintext tc">����ǰ�ʻ��Ŀ�����<span class="red9">��'+i.data+"</span></div>";d+='<div class="tc"><div class="logininbtn fl mr5 ml30 color_gary_none"><a href="/invite/commend_register.do?from=user">�������</a></div>';d+='<div class="logininbtn fl color_gary_none"><a href="/usermanager/order/myIndex.do">�ҵ�1�ŵ�</a></div></div>';a("#index_login_box").removeClass("logincon").addClass("loginin").html(d)}}}else{d+='<h1><a href="/passport/register_input.do">���ע��</a></h1>';d+='<h1><a href="/passport/login_input.do">�û���¼</a></h1>';a("#index_login_box").removeClass("loginin").addClass("logincon").html(d)}})}};
a.YHDHomePage.friendlyRecommend=function(){initTabSwitchMouseOverEvent("#friendlyRecommendNav li","#friendlyRecommendList .tabbox","select");var h="#friendlyRecommendNav li";var g="#friendlyRecommendList .tabbox";var f="select";var c=a(h);var e=a(g);var d=function(k){var l=a(h+"."+f);var j=c.index(l);var i=j+k;if(i>=0&&i<3){var m=a(h).eq(i);l.removeClass(f);m.addClass(f);e.eq(j).hide();e.eq(i).show()}};if(c&&c.size()>1){a("#pre_friendlyRecommendImg").click(function(){d(-1)});a("#next_friendlyRecommendImg").click(function(){d(1)})}};a.YHDHomePage.defaults={}})(jQuery);jQuery("#footer").ready(function(){jQuery.YHDHomePage()});