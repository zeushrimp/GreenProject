function fn_commentsubmit(){
    if ($.trim($("#CCM_CONTENT").val()) == "") {
        alert("글 내용을 입력해주세요.");
        $("#CCM_CONTENT").focus();
        return;
    }
    $("#cmu_commentsave").submit();   
}

function fn_commentdelete(CCM_PK){
    if (!confirm("삭제하시겠습니까?")) {
        return;
    }
    var form = document.updateform;

    form.action="cmu_commentdelete";
    form.CCM_PK.value=CCM_PK;
    form.submit();   
}

function fn_catesubmit(CATE){
	
	var url = "/cmu_catecheck.do";
	var CMU_CATE = CATE;
	
	console.log(url);
}

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

	  //페이지 번호 클릭

	function fn_pagination(page, range, rangesize, listsize, searchtype, keyword) {

		var url = "/VgCmuList.do";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&listsize=" + listsize;
			url = url + "&searchtype=" + searchtype;
			url = url + "&keyword=" + keyword; 

			location.href = url;	
		}

		//다음 버튼 이벤트
		//다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangesize, listsize, searchtype, keyword) {
		var page = parseInt((range * rangesize)) + 1;
		var range = parseInt(range) + 1;			
		var url = "/VgCmuList.do";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&listsize=" + listsize;
			url = url + "&searchType=" + searchtype;
			url = url + "&keyword=" + keyword;
			location.href = url;
		}
		
/* 검색 */
$(document).on('click', '#btnSearch', function(e){
	e.preventDefault();
	var url = "/VgCmuList.do";
	url = url + "?searchtype=" + $('#searchtype').val();
	url = url + "&keyword=" + $('#keyword').val();
	url = url + "&listsize=" + $('#listsize').val();
	location.href = url;
	console.log(url);

});	