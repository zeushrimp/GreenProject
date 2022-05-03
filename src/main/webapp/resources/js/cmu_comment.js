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
	
	    form.action="/cmu_replydelete.do";
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
	// 댓글 수정
	function fn_commentupdate(CCM_PK){
	    if (!confirm("수정하시겠습니까?")) {
	        return;
	    }
	    var form = document.updateform;
	
	    form.action="/cmu_replyupdate.do";
	    form.CCM_PK.value=CCM_PK;
	    form.submit();   
	}
	
var updateReno = null;
var updateRememo = null;
function fn_commentupdate(reno){
    var form = document.updateform;
    var reply = document.getElementById("reply"+reno);
    var replyDiv = document.getElementById("replyDiv");
    replyDiv.style.display = "";
   
    if (updateReno) {
        document.body.appendChild(replyDiv);
        var oldReno = document.getElementById("reply"+updateReno);
        oldReno.innerText = updateRememo;
    }
   
    form.reno.value=reno;
    form.rememo.value = reply.innerText;
    reply.innerText ="";
    reply.appendChild(replyDiv);
    updateReno   = reno;
    updateRememo = form.rememo.value;
    form.rememo.focus();
}

function fn_replyUpdateSave(){
    var form = document.updateform;
    if (form.rememo.value=="") {
        alert("글 내용을 입력해주세요.");
        form.rememo.focus();
        return;
    }
   
    form.action="/updatecmu.do";
    form.submit();   
}

function fn_replyUpdateCancel(){
    var form = document.updateform;
    var replyDiv = document.getElementById("replyDiv");
    document.body.appendChild(replyDiv);
    replyDiv.style.display = "none";
   
    var oldReno = document.getElementById("reply"+updateReno);
    oldReno.innerText = updateRememo;
    updateReno = updateRememo = null;
}