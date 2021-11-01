// 회원가입 유효성 검사

// id 중복 검사
$(function(){
	$('#member_id').blur(function(){
		let id = $('#member_id').val();
		if(id == ''){
			$('#id_check').text('아이디를 입력해 주세요.');
		}else{
			$.ajax({
				type : 'POST',
				url : 'idoverlap.do',
				dataType : "json", //text 타입으로 하니 map key(data.result)가 undefiend뜸 그래서 json으로 하니됨	 
				data : {
					member_id : id
				},
				
				success : function(data){//spring version을 낮추니 data 값이안들어옴
					console.log(data);
					if(data.result == true){
						document.getElementById('id_check').style.color='#555';
						
						$('#id_check').text('사용이 가능한 아이디 입니다.');
					}else{
						
						document.getElementById('id_check').style.color='red';
						$('#id_check').text('이미 중복되는 Id가 있습니다.');
					}
				},
				error :function(error){
					$('#id_check').text('오류');
					console.log(error);
				}
			});
		}
	});
});

//비밀번호 확인
$(function(){
	$('#member_pwd2').blur(function(){
		if($('#member_pwd2').val() == ''){
			$('#password_check').text('비밀번호를 입력해주세요.');
		}else{
			if($('#member_pwd1').val() != $('#member_pwd2').val()){
				$('#password_check').text('비밀번호가 틀립니다. 확인해주세요');
			}else{
				$('#password_check').text('비밀번호 일치!');
			}
		}
		
	});	
});

//주소검색 처리
function find_addr() {
   new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("dongAddr").value = extraAddr;
                
                } else {
                    document.getElementById("dongAddr").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("postCode").value = data.zonecode;
                document.getElementById("basicAddr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddr").focus();
            }
        }).open();
 }

//Email 처리
$(function(){
			$('#email_select').change(function() { //이메일선택부분이 바뀌면
				var email = $('#email_select').val();	//선택된값 저장
				if (email == 'direct') { //이메일을 직접입력시
					$('#_email2').attr('disabled', false); //
					$('#_email2').val(''); 
					$('#_email2').focus();
				} else {
					$('#_email2').attr('disabled',true);
					$('#_email2').val($('#email_select').val());
					$('#member_email2').val($('#email_select').val());
				}
			});
});

function Submit(){
	if($('#member_id').val() == ''){
		alert("id를 입력해 주세요");
		$('#member_id').focus();
		$('#member_id').scrollIntoView();
		return;
	}
	
	var num = 0;
	var list = new Array();
	var phone = $('#member_cp1').val() + $('#member_cp2').val() + $('#member_cp3').val()
	
	$('#member_phone').val(phone);
	
	alert("회원가입이 완료 되었습니다.");
	document.memberJoin.action = "memberJoin.do";
	document.memberJoin.submit();
	
}