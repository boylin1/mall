<!DOCTYPE html>
<html lang="zh-cn">
  <head>
  	<#assign basePath=request.contextPath>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <meta name="keywords" content="${seo.meteKey}">
    <meta name="description" content="${seo.meteDes}">

    <link rel="stylesheet" href="${basePath}/css/style.css"/>
    <#if (sys.bsetName)??>
    	<title>${(sys.bsetName)!''}</title>
    	<input type="hidden" id="bsetName" value="${(sys.bsetName)!''}">
    	<input type="hidden" id="bsetDesc" value="${(sys.bsetDesc)!''}">
    <#else>
	    <title>${(seo.mete)!''}</title>
	    <input type="hidden" id="bsetName" value="${(seo.mete)!''}">
    	<input type="hidden" id="bsetDesc" value="${(sys.bsetDesc)!''}">
    </#if>
    <!-- Bootstrap -->
        <link rel="stylesheet" href="${basePath}/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="${basePath}/css/mui.min.css"/>
        <link rel="stylesheet" href="${basePath}/css/address.css"/>
        <script src="${basePath}/js/mui.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]> 

    <![endif]-->
        <script src="${basePath}/js/jquery.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="${basePath}/js/bootstrap.min.js"></script>
        <script src="${basePath}/js/fastclick.min.js"></script>
        <script src="${basePath}/js/idangerous.swiper-2.1.min.js"></script>
        <script src="${basePath}/js/jquery.keleyi.js"></script>
        <script src="${basePath}/js/customer/address.js"></script>
        <script src="${basePath}/js/customer/asvalidate.js"></script>
        <script src="${basePath}/js/customer/allvalid.js"></script>
   <script>if(myObj&&myObj.setHomeFlag){myObj.setHomeFlag('false');}</script></head>
  <body>
  <#include "../publicHeader2_ftl.ftl" />

  <input type="hidden" id="basePath"  value="${basePath}"/>

  <div class="wrap">
      <div class="mui-container">
          <form action="${basePath}/orderaddaddress.htm" id="addForm" method="post">
              <input type="hidden" id="needRetrun" name="needRetrun"  value="${needRetrun!'0'}"/>
              <div class="mui-form-group" >
                  <input type="text" class="mui-form-control"name="addressName" id="addressName" value="" required/>
                  <label class="mui-form-floating-label" >收货人姓名</label>
              </div>
              <div class="mui-form-group">
                  <input type="text" class="mui-form-control" name="addressMoblie" id="addressMoblie" value="" required/>
                  <label class="mui-form-floating-label">收货人手机号</label>
              </div>
              <div class="mui-form-group mui-select">
                  <select name="infoProvince" class="form-control" id="infoProvince">
                  </select>
                  <label>省份</label>
              </div>
              <div class="mui-form-group mui-select">
                  <select name="infoCity"  class="form-control" id="infoCity">
                  </select>
                  <label>城市</label>
              </div>
              <div class="mui-form-group mui-select">
                  <select name="infoCounty"  class="form-control" id="infoCounty">
                  </select>
                  <label>区县</label>
              </div>
              <div class="mui-form-group">
                  <textarea class="mui-form-control"name="addressDetail" id="addressDetail" required></textarea>
                  <label class="mui-form-floating-label">地址信息</label>
              </div>
              <button class="mui-btn mui-btn-danger" type="button" style="background:#F6AB02;" onclick="checkForm()">下一步</button>
          </form>
      </div>
  </div>
  <#include "../common/smart_menu.ftl"/>
  </body>
  <script src="${basePath}/js/publicModel.js"></script>
  <script>
      var num=0;
      //验证收件人电话
      var tel="^[0-9\-()（）]{7,18}$";
      //验证表单
      function checkForm(){
           var bl=true;
          //收件人姓名
          if( $("#addressName").val().trim()==''){
              $("#addressName").parent().addClass("error");
              bl=false;
          }else if(! /^[a-zA-Z0-9\u4e00-\u9fa5]+$/.test( $("#addressName").val())){
              $("#addressName").parent().addClass("error");
              bl=false;
          }else{
              $("#addressName").parent().removeClass("error");
          }

          //收件人电话
          if($("#addressMoblie").val().trim()==''){
              $("#addressMoblie").parent().addClass("error");
              bl=false;
          }else if(!(/^(13|14|15|18|17)\d{9}$/.test( $("#addressMoblie").val()))){
              $("#addressMoblie").parent().addClass("error");
              bl=false;
          }else{
              $("#addressMoblie").parent().removeClass("error");

          }
          //详细地址
          if($("#addressDetail").val().trim()==''){
              $("#addressDetail").parent().addClass("error");
              bl=false;
          }else if($("#addressDetail").val().trim().length>100){
              $("#addressDetail").parent().addClass("error");
              bl=false;
          }else{
              $("#addressDetail").parent().removeClass("error");

          }
          //地区
          if($("#infoCounty").val()==''||$("#infoCounty").val()==0){
              $(".mui-select").each(function(){
                  $(this).addClass("error");
              })
              bl=false;
          }
          if(bl&&num==0){
              num+=1;
              //添加收件地址
              $("#addForm").submit();
          }
      }
      $(function(){
          //检查收件人姓名
          $("#addressName").blur(function(){
              if($(this).val().trim()==''){
                $("#addressName").parent().addClass("error");

              }else if(! /^[a-zA-Z0-9\u4e00-\u9fa5]+$/.test( $("#addressName").val())){
                  $("#addressName").parent().addClass("error");
              }else{
                  $("#addressName").parent().removeClass("error");
              }
          });
          //检查收件人电话
          $("#addressMoblie").blur(function(){
              if($("#addressMoblie").val().trim()==''){
                  $("#addressMoblie").parent().addClass("error");
              }else if(!(/^(13|14|15|18|17)\d{9}$/.test( $("#addressMoblie").val()))){
                  $("#addressMoblie").parent().addClass("error");
              }else{
                  $("#addressMoblie").parent().removeClass("error");

              }
          });
          //验证详细地址
          $("#addressDetail").blur(function(){
              if($("#addressDetail").val().trim()==''){
                  $("#addressDetail").parent().addClass("error");
              }else if($("#addressDetail").val().trim().length>100){
                  $("#addressDetail").parent().addClass("error");
              }else{
                  $("#addressDetail").parent().removeClass("error");

              }
          });
      });

      loadProvice();
      selectLocationOption($("#Province").val(),$("#City").val(),$("#County").val(),$("#Street").val(),'infoProvince','infoCity','infoCounty','infoStreet');
  </script>
</html>