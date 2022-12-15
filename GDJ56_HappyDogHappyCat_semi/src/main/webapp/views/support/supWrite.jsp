<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/supwrite.css"/>

<section id="container1">
<form action="<%=request.getContextPath() %>/vol/supWriteEnd.do?memberNo=<%=loginMember!=null?loginMember.getMemberNo():"" %>"
	method="post" enctype="multipart/form-data">
    <div class="board_wrap">
        <div class="board_title">
            <strong style="font-size: 25px;">후원하기</strong>
        </div>
        <div class="board_write_wrap">
            <div class="board_write" >
                <div class="title" >
                    <dl>
                        <dt style="font-size:17px">제목</dt>
                        <dd style="font-size:17px;margin-top:14px;"><input type="text" placeholder="제목 입력"></dd>
                    </dl>
                </div>
                <div class="info">
                    <dl>
                        <dt style="font-size:17px">시설이름</dt>
                        <dd style="font-size:17px;margin-top:14px;"></dd>
                    </dl>
                    <dl>
                        <dt style="font-size:17px">목표금액</dt>
                        <dd style="font-size:17px;margin-top:14px;"><input type="text" placeholder="목표금액 금액"></dd>
                    </dl>
                </div>
                <div class="cont">
                    <textarea rows="10" cols="100" name="summernote" id="summernote" placeholder="내용 입력"></textarea>
                </div>

                <div class="file" style="font-size:17px">
                    <b>* 대표이미지 설정</b>
                    <input type="file" class="real-upload" accept="image/*" onchange="readURL(this);">
                    <img id="preview" style="display:none;"></div>
                </div>
                
                <div class="file2" style="font-size:17px">
                    <b>* 사진첨부</b>
                    <input type="file" id='btnAtt' accept="image/*"  multiple/>
                </div>
                <div id='att_zone' 
                data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
              
            </div>

            <div class="bt_wrap" >
                <input type="button" style="font-size:17px" id="saveBtn" class="on" value="등록">
                <input type="button" style="font-size:17px" value="취소" onclick="location.replace('<%=request.getContextPath()%>/suplist.do')">
            </div>
        </div>
    </form>
</section>

<script>
$("#saveBtn").click(e=>{
			/* if(fn_invalidate()){
				
			} */
			let form=new FormData();
			const sumnail=$("input[name=upFile]")[0].files;
			const files=$("input[name=upload2]")[0].files;
			
			let inputs=$("form input").not("input[class*=note]");
	/* 		console.log(inputs); */
			 var summernoteContent = $('#summernote').summernote('code');
			
			
			inputs.each((i,v)=>{
				/* console.log($(v).attr("name"),$(v).val()); */
				form.append("param"+i,$(v).val());
			});
			
			$.each(files,(i,v)=>{
				form.append("upfile"+i,v);
			});		
			
			$.each(sumnail,(i,v)=>{
				form.append("sumn"+i,v);
			});		
					
			
				
			 form.append("content",summernoteContent);
		
			if(sumnail.length==1){
				 if(files.length!=0){
			 	$.ajax({
				url :"<%=request.getContextPath()%>/vol/volWriteEnd.do",
				data : form,
				type : "post",
				contentType:false,
				processData:false,
				success : e=>{
					/* console.log(e.msg);	 */
					/* console.log(e.loc); */
					var loc2 = e.loc;
					alert(e.msg);
					location.replace('<%=request.getContextPath()%>'+loc2);
// 					alert("파일업로드 성공");
// 					$("#upload2").val("");
// 					},error:(r,m,e)=>{
// 						alert("업로드 실패 다시시도하세요!");
// 					}
			 	}
					 });}
			 else{alert("사진을 1장 이상 첨부해주세요.")}
			 
		}else{
			alert("대표이미지를 설정해야 합니다.");
		}
	});

</script>




<script src="<%=request.getContextPath()%>/js/supwrite.js"></script>
<%@ include file="/views/common/footer.jsp" %>