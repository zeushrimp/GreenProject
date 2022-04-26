function cmu_submit(){
    if ( $.trim($("#USR_ID1").val()) == "") {
        alert("작성자를 입력해주세요.");
        $("#USR_ID1").focus();
        return;
    }
    if ($.trim($("#CCM_CONTENT1").val()) == "") {
        alert("글 내용을 입력해주세요.");
        $("#CCM_CONTENT1").focus();
        return;
    }
    $("#cmu_comentsave").submit();   
}
