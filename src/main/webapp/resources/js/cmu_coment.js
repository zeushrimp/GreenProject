function cmu_submit(){
    if ($.trim($("#CCM_CONTENT").val()) == "") {
        alert("글 내용을 입력해주세요.");
        $("#CCM_CONTENT").focus();
        return;
    }
    $("#cmu_comentsave").submit();   
}
