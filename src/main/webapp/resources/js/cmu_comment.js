function fn_replysubmit(){
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
    var form = document.replydelform;

    form.action="cmu_commentdelete";
    form.CCM_PK.value=CCM_PK;
    form.submit();   
}