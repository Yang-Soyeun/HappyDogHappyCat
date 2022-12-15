<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/views/common/header.jsp"%>
<body>
 <section id="content">
      <div style="width: 100%; height: 250px; background-color: rgba(211, 211, 211, 0.516); display: flex;">
          <img src="<%=request.getContextPath() %>/images/admission/dog1.png" alt="" style="margin-right: auto;" class="dogimg">
          <div id="text" >
            <br>
                <h1 style="font-size: 30px; text-align: center;">Q&A</h1>
              <p style="font-size: 20px; text-align: center;">궁금하신 점은 언제든지 문의주세요.<br>
              <br>해피독해피캣은 전문상담가들을 통해<br>
              <br>정확하고 신속한 답변을 드리겠습니다.</p>
          </div>
          <img src="<%=request.getContextPath() %>/images/admission/dog2.png" alt="" style="margin-left: auto;" class="dogimg">
      </div>
    </section>   
    
    <div class="board_wrap">
      <div class="board_title">
          <Strong>Q&A</Strong>
      </div>
      <form action="<%=request.getContextPath() %>/qa/qaWriteEnd.do" 
      method="post">
      <input type="text" name="memberNo" value="<%=loginMember.getMemberNo()%>" hidden>
      <div class="board_write_wrap">
          <div class="board_write" >
              <div class="title">
                  <dl>
                      <dt><h5>제목</h5></dt>
                      <dd><input type="text" placeholder="제목 입력" id="inputTitle" name="qaTitle"></dd>
                  </dl>
              </div>
              <div class="cont">
                  <textarea rows="10" cols="100" name="summernote" id="summernote" placeholder="내용 입력"></textarea>
              </div>
    		 <div class="info">
                	<dl>
                        <dt style="font-size:16px;">🔒공개여부</dt> 
                       <dd>공개<input type="radio" id="open" name="openYn" value="Y"></dd>
                       <dd>비공개<input type="radio" id="close" name="openYn" value="N"></dd>
                    </dl>
             </div>
             <div class="info" id="pwContainer" style="display:none;">   
                    <dl>
                        <dt style="font-size:18px;">비밀번호</dt>
                        <dd><input type="password" name="passWord" value="password" ></dd>
                    </dl>
                    
             </div>	
              <div class="file2">
                  <h5>📸사진첨부</h5>
                  <input type="file" id='btnAtt' accept="image/*"  multiple/>
              </div>
              <div id='att_zone' 
              data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
             </div>
    
     
              <div class="bt_wrap">
                  <input type="submit" value="등록" id="on">
                  <input type="reset" value="취소">
              </div>
          </div>
      </div>
      </form>
    </div>
    
  <style>
  	#inputTitle{
  		width:870px;
  		height:30px;
  	}
      body{
          font-family: 'Poor Story';
          width: 100%;
          height: 100%;
          overflow-x: hidden;
      }
      * {
           margin: 0;
           padding: 0;
      }
       
     
      ul, li{
           list-style: none;
       }
      a {
           text-decoration: none;
           color: inherit;
       }
       .board_wrap {
           width: 1000px;
           margin: 50px auto;
          
       }
       
       .board_title {
           margin-bottom: 30px;
       }
       
       .board_title strong {
           font-size: 2rem;
       }
       
       .board_title p {
           margin-top: 5px;
           font-size: 1.4rem;
       }
       
       .bt_wrap {
           margin-top: 30px;
           text-align: center;
           font-size: 0;
       }
       
       .bt_wrap input {
           display: inline-block;
           min-width: 80px;
           margin-left: 10px;
           padding: 10px;
           border: 1px solid #000;
           border-radius: 2px;
           font-size: 1.4rem;
       }
       
       .bt_wrap a:first-child {
           margin-left: 0;
       }
       
       .bt_wrap input#on {
           background: gray;
           color: #fff;
       }
       
    
       .board_write {
           border-top: 2px solid #000;
           
       }
       
       .board_write .title,
       .board_write .info {
           padding: 15px;
       }
       
       .board_write .info {
           border-top: 1px solid #000;
           border-bottom: 1px solid #000;
           font-size: 0;
       }
       
       .board_write .title dl {
           font-size: 0;
       }
       
       
       .board_write .info dl {
           display: inline-block;
           width: 50%;
           vertical-align: middle;
       }
       
       .board_write .title dt,
       .board_write .title dd,
       .board_write .info dt,
       .board_write .info dd {
           display: inline-block;
           vertical-align: middle;
           font-size: 1.4rem;
       }
       
       .file{
          border-bottom : 1px solid #555;
           font-size: 1.4rem;
           padding : 15px;
           
       }
    
       .file2{
          font-size: 1.4rem;
           padding : 15px;
       }
    
       .file input{
          padding:20px;
       }
    
       .file2 input{
          padding:20px;
       }
       .board_write .title dt,
       .board_write .info dt {
           width: 100px;
       }
       
       .board_write .title dd {
           width: calc(100% - 100px);
       }
       
       .board_write .title input[type="text"],
       .board_write .info input[type="text"],
       .board_write .info input[type="number"] 
       .board_write .info input[type="date"]{
           padding: 5px;
           box-sizing: border-box;
       }
       
       .board_write .title input[type="text"] {
           width:80%;
       }
       
       .board_write .cont {
           border-bottom: 1px solid #000;
       }
       
       .board_write .cont textarea {
           display: block;
           width: 100%;
           height: 700px;
           padding: 15px;
           box-sizing: border-box;
           border: 0;
           resize: vertical;
       }
    
      #att_zone{
      width: 660px;
      min-height:150px;
      padding:10px;
      border:1px dotted #00f;
    }
      #att_zone:empty:before{
          content : attr(data-placeholder);
          color : #999;
          font-size:.9em;
	    }
	    
	  li{
	    list-style: none;
	  }
	  .real-upload {
	    display: none;
	  }
	  .image-preview {
	    display: none;
	    width: 200px;
	    height: 200px;
	    background-color:white;
	    gap: 20px;
	  }
	  .dogimg{
	            width: 200px;
	            height: 250px;
	            opacity: 0.5; 
  	}
</style>

<script>
	$(function (){
		 
		$("input[type='radio'][name='openYn']").on('click', function(event){
		  //var chkValue = $('input[type=radio][id="open"]:checked').val();
		  var chkValue=event.target.value;
		  if(chkValue=="Y"){
		             $('#pwContainer').hide();
		  }else{
		             $('#pwContainer').show();
		  }
		 
		});
		 
		});
 
    
    
    
    
    
    
    
    
    
    
    $(document).ready(function() {
    $('#summernote').summernote({
      tablesize :2,
      height:500
    });
    });
    
    
    ( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
    imageView = function imageView(att_zone, btn){
    
    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                + 'width:150px;height:120px;margin:5px;border:1px solid #00f;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00';
    
    btnAtt.onchange = function(e){
    var files = e.target.files;
    var fileArr = Array.prototype.slice.call(files)
    if(files.length<=3){
    for(f of fileArr){
      imageLoader(f);
    }}else{alert("사진첨부는 3개까지만 가능합니다.")}
    }  
    
    
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){      
    e.preventDefault();
    e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
    e.preventDefault();
    e.stopPropagation();
    
    }, false)
    
    attZone.addEventListener('drop', function(e){
    var files = {};
    e.preventDefault();
    e.stopPropagation();
    var dt = e.dataTransfer;
    files = dt.files;
    for(f of files){
      imageLoader(f);
    }
    
    }, false)
    
    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
    sel_files.push(file);
    var reader = new FileReader();
    reader.onload = function(ee){
      let img = document.createElement('img')
      img.setAttribute('style', img_style)
      img.src = ee.target.result;
      attZone.appendChild(makeDiv(img, file));
      
    }
    
    reader.readAsDataURL(file);
    
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      if(document.getElementsByTagName("img").length>3){
      alert("사진첨부는 3개까지만 가능합니다.");
    } 
    
    var div = document.createElement('div')
    div.setAttribute('style', div_style)
    
    var btn = document.createElement('input')
    btn.setAttribute('type', 'button')
    btn.setAttribute('value', 'x')
    btn.setAttribute('delFile', file.name);
    btn.setAttribute('style', chk_style);
    btn.onclick = function(ev){
      var ele = ev.srcElement;
      var delFile = ele.getAttribute('delFile');
      for(var i=0 ;i<sel_files.length; i++){
        if(delFile== sel_files[i].name){
          sel_files.splice(i, 1);      
        }
      }
      
      dt = new DataTransfer();
      for(f in sel_files) {
        var file = sel_files[f];
        dt.items.add(file);
      }
      btnAtt.files = dt.files;
      var p = ele.parentNode;
      attZone.removeChild(p)
    }
    div.appendChild(img)
    div.appendChild(btn)
    return div
    
    }
    }
    )('att_zone', 'btnAtt')
    
    function readURL(input) {
    $("#preview").css("display","flex");
    if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function(e) {
      document.getElementById('preview').src = e.target.result;
      };
      reader.readAsDataURL(input.files[0]);
    } else {
      document.getElementById('preview').src = "";
    }
    }
</script>

</body>
<%@include file="/views/common/footer.jsp"%>