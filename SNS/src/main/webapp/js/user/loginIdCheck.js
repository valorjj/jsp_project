/* 아이디 중복체크 [ ajax ] */
$(function() {
	// $("id명").이벤트명( 함수명(){ 실행코드; } );
	$("#id").change(function() {
		// 비동기식 : $.ajax({ 속성명 : "값" , 속성명 : "값" , 속석명 : "값" });
		$.ajax({
			url: "idCheck.jsp",
			/* url : 통신할 경로 페이지 */
			data: { userid: document.getElementById("signupform").id.value },
			/* 이동할 데이터 */
			success: function(result) {
				/* 통신이 성공했을때*/
				if (result == 1) { 	// js 변수는 자료형 없다
					document.getElementById("idresult").innerHTML = "사용중인 아이디";
				} else {

				}
			}
		});
	});
});
/* 아이디 중복체크 end */