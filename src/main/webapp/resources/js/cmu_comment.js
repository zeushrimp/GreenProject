
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
		var url = "/cmu/VgCmuList.do";
		url = url + "?searchtype=" + $('#searchtype').val();
		url = url + "&keyword=" + $('#keyword').val();
		url = url + "&listsize=" + $('#listsize').val();
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


$(function(){
	$('.button').click(function(e){
		
		var menuSelector = e.target.value;
		
		if( menuSelector == '전체'){
//			alert('전체');
		}else{
//			alert(menuSelector)
			cate_ajax(menuSelector);	
		}
	})
})



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


