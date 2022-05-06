
function fn_commentsubmit(){
    if ($.trim($("#CCM_CONTENT").val()) == "") {
        alert("글 내용을 입력해주세요.");
        $("#CCM_CONTENT").focus();
        return;
    }
    $("#cmu_commentsave").submit();   
}

// 댓글 삭제
function fn_commentdelete(CCM_PK){
    if (!confirm("삭제하시겠습니까?")) {
        return;
    }
    var form = document.updateform;

    form.action="cmu_replydelete.do";
    form.CCM_PK.value=CCM_PK;
    form.submit();   
}
	
// 페이지 이전 버튼
function fn_prev(page, range, rangesize, listsize, searchtype, keyword) {
		
	var page = ((range - 2) * rangesize) + 1;
	var range = range - 1;
		
	var url = "/VgCmuList.do";
	url = url + "?page=" + page;
	url = url + "&range=" + range;
	url = url + "&listsize=" + listsize;
	url = url + "&searchtype=" + searchtype;
	url = url + "&keyword=" + keyword;
	location.href = url;
	}

// 페이지 번호 클릭
function fn_pagination(page, range, rangesize, listsize, searchtype, keyword) {

	var url = "/cmu/VgCmuList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listsize=" + listsize;
		url = url + "&searchtype=" + searchtype;
		url = url + "&keyword=" + keyword; 

		location.href = url;	
	}

// 페이지다음 버튼
// 다음 페이지 범위의 가장 앞 페이지로 이동
function fn_next(page, range, rangesize, listsize, searchtype, keyword) {
	var page = parseInt((range * rangesize)) + 1;
	var range = parseInt(range) + 1;			
	var url = "/cmu/VgCmuList.do";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listsize=" + listsize;
		url = url + "&searchtype=" + searchtype;
		url = url + "&keyword=" + keyword;
		location.href = url;
	}

/* 검색 */
$(document).on('click', '#btnSearch', function(e){
	e.preventDefault();
	console.log(e)
	var url = "/cmu/VgCmuList.do";
	url = url + "?searchtype=" + $('#searchtype').val();
	url = url + "&keyword=" + $('#keyword').val();
	url = url + "&listsize=" + 8;
	location.href = url;
	console.log(url);
});
			
function hideDiv(id){
    var div = document.getElementById(id);
    div.style.display = "none";
    document.body.appendChild(div);
}

function fn_replyReply(CCM_PK){
    var form = document.recommnetform;
    var reply = document.getElementById("reply"+CCM_PK);
    var replyDia = document.getElementById("replyDialog");
    replyDia.style.display = "";
   
    if (updateReno) {
        fn_replyUpdateCancel();
    }
   
    form.CCM_CONTENT.value = "";
    form.CCM_REF.value=CCM_PK;
    reply.appendChild(replyDia);
    form.rewriter.focus();
}
function fn_replyReplyCancel(){
    hideDiv("replyDialog");
}

function fn_replyReplySave(){
    var form = document.recommnetform;

    if (form.CCM_CONTENT.value=="") {
        alert("글 내용을 입력해주세요.");
        form.CCM_CONTENT.focus();
        return;
    }
   
    form.action="cmu_commentsave.do";
    form.submit();   
}

// ajax 카테고리
$(function(){
	$('.catebutton').click(function(e){
		
		var menuSelector = e.target.value;
		
		if( menuSelector == '전체'){
//			alert('전체');
		}else{
//			alert(menuSelector)
			cate_ajax(menuSelector);	
		}
	})
})

// ajax 카테고리
function cate_ajax(menuSelector){	
	$.ajax({
		type: 'post', 
		url: '/cmu/VgCmuList_ajax.do',
		data: {"CMU_CATE" : menuSelector}, // input 태그내의 값
		success: function(data){
//			alert("성공했습니다.");	
			var tag_String = create_cate_list(data);			
			
//			alert(tag_String);
			$('#listForm').html(tag_String) 
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}

// ajax 카테고리
function create_cate_list(data){	
	var str = "";
//	console.log(typeof data);                                           
//	console.log(data);
	for ( cmuvo in data ){
//		console.log(typeof data[cmuvo]);
//		console.log(data[cmuvo].CMU_PK);
		
		str += '<div class="entry one-third">';
		str += '<figure>'
		str += '<img src="/resources/images/img.jpg" alt="" /> <!-- 이미지 가져오는 걸로 -->'
		str += '<!-- 상세 페이지 가는 링크 -->'
		str += '<figcaption>'
		str += '<a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'"></a>'
		str += '<i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a>'
		str += '</figcaption>'
		str += '</figure>'
		str += '<div class="container">'
		str += '<!-- 상세 페이지 가는 링크 -->'
		str += '<h2>'
		str += '<a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">'+data[cmuvo].CMU_TITLE+'</a>'
		str += '</h2>'
		str += '<div class="actions">'
		str += '<div>'
		str += '<div class="difficulty" style="width: 200px; border-right: none !important;">'
		str += '<i class="ico i-medium"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">'+data[cmuvo].USR_ID+'</a>'
		str += '</div>'
		str += '<div class="comments">'
		str += '<i class="fa fa-comment"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">${replycount}</a>'
		str += '</div>'
		str += '<div class="likes">'
		str += '<i class="fa fa-heart"></i><a href="/cmu/VgCmuDtail.do?CMU_PK='+data[cmuvo].CMU_PK+'">0</a>'
		str += '</div>'
		str += '</div>'
		str += '</div>'
		str += '</div>'
		str += '</div>';
		
	}	
	return str;
}

// ajax 대댓글
$(document).on('click', '#rereplybutton', function(e){
		
		var replyClick = e.target.value;
		alert(replyClick);
		
		if(replyClick == '수정'){
			alert('수정');
			// 새로운 ajax 수정창
		}else if(replyClick == '삭제'){
			fn_commentdelete();				
		}else if(replyClick == '댓글'){
			var rereply_string= $('#recommnetform').serialize();
			rereply_ajax(rereply_string);
			// 새로운 ajax 댓글창
		}
});

// ajax 대댓글 작성
function rereply_ajax(rereply_string){
	$.ajax({
		type: 'post', 
		url: '/cmu/VgCmuRereply_ajax.do',
		data: {"recommnetform" : rereply_string}, // input 태그내의 값
		success: function(data){
			alert("성공했습니다.");
			
			str += '<div class="container" style="margin-top:10px; padding-bottom: 10px;">'
			str += '<p class="rereply_ajax"><span class="req">*</span><strong>주의 :</strong> 댓글로 인해 타인의 기분을 상하게 하는 게시물의 내용은 삼가주시길바랍니다. <span class="req">*</span></p>'
			str += '<form name="recommnetform" id="recommnetform" action="cmu_commentsave.do" method="post">'
			str += '<!-- 여기서 할 일, 아이디 세션 받고 게시물 번호 받고(히든) -->'
			str += '<div class="f-row">'
			str += '<!-- 게시글 번호 받음 -->'
			str += '<input type="hidden" id="CMU_PK" name="CMU_PK" value="<c:out value="'+data[cmuvo].CMU_PK+'"/>">'
			str += '<input type="hidden" id="USR_ID" name="USR_ID" value="<c:out value="'+data[cmuvo].USR_ID+'"/>">'
			str += '<input type="hidden" id="CCM_REF" name="CCM_REF">'
			str += '<textarea id="CCM_CONTENT" name="CCM_CONTENT" placeholder="댓글을 작성해주세요."></textarea>'
			str += '</div>'
												
			str += '<div>'
			str += '<!-- 수정, 취소 -->'
			str += '<a class="reply-cmulink" href="#" onclick="fn_replyReplySave()">댓글 작성</a>'
			str += '<a class="reply-cmulink" href="#" onclick="fn_replyReplyCancel()">취소</a>'
			str += '</div>'
			str += '</form>'
			str += '</div>';
			$(".rereply_ajax").after(str);
				
		},
		error: function(request,status,error){
			alert("에러났음"+request.status + " \n error" + error);	
		}		
	})	
}
