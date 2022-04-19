
    function check() {
        if(form.USR_ID.value==""){
            alert("아이디를 입력해주세요");
            form.USR_ID.focus();
            return false;
        }
        else if(form.USR_NICK.value==""){
            alert("닉네임을 입력해주세요");
            form.USR_NICK.focus();
            return false;
        }
        else if(form.USR_PW.value==""){
            alert("비밀번호를 입력해주세요");
            form.USR_PW.focus();
            return false;
        }
        else if(form.USR_PW1.value==""){
            alert("비밀번호 재확인란을 입력해주세요");
            form.USR_PW1.focus();
            return false;
        }
        else if(form.USR_PW.value!=form.USR_PW1.value){
            alert("비밀번호가 입력하신 것과 일치하지 않습니다");
            form.USR_PW1.focus();
            return false;
        }
        else if(form.USR_NAME.value==""){
            alert("이름을 입력해주세요");
            form.USR_NAME.focus();
            return false;
        }
   

        else if(form.USR_TEL.value==""){
            alert("휴대전화를 입력해주세요");
            form.USR_TEL.focus();
            return false;
        }
        else if(form.USR_ADDR1.value==""){
            alert("주소를 입력해주세요");
            form.USR_ADDR1.focus();
            return false;
        }
        else if(form.USR_ADDR2.value==""){
            alert("주소를 입력해주세요");
            form.USR_ADDR2.focus();
            return false;
        }
        else if(form.USR_ADDR3.value==""){
            alert("주소를 입력해주세요");
            form.USR_ADDR3.focus();
            return false;
        }
        else if(form.idDuplication.value=="idUncheck" || form.USR_ID.value != form.idDuplication.value){
            alert("아이디 중복확인을 하지 않으셨습니다.");
            return false;
        }
        
    }
 	