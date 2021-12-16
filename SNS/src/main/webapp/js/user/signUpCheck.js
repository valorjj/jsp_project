	/* 회원가입 유효성검사 */
		function signupcheck() {

			// 1. 폼 가져오기 [ 폼에 id 존재 ]	//	document.getElementById("signupform")
			// 2. 폼내 아이디 입력 input 가져오기

			var id = document.getElementById("signupform").id.value;
			var password = document.getElementById("signupform").password.value;
			var passwordconfirm = document.getElementById("signupform").passwordconfirm.value;
			var name = document.getElementById("signupform").name.value;
			var email = document.getElementById("signupform").email.value;
			var phone = document.getElementById("signupform").phone.value;
			var name = document.getElementById("signupform").name.value;
			var sex1 = document.getElementById("signupform").sex1.checked; // checked 유무 가져오기
			var sex2 = document.getElementById("signupform").sex2.checked;
			var age = document.getElementById("signupform").age.checked;

			// 3. 유효성검사 [ 정규표현식 : 텍스트 패턴 검사 ] 
			var idj = /^[a-z0-9]{5,15}$/; // 아이디 정규표현식	[ 소문자 숫자 5~15]
			var pwj = /^[A-Za-z0-9]{5,15}$/; // 비밀번호 정규표현식[ 대,소문자 숫자 5~15]
			var phonej = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/; // 연락처
			var namej = /^[A-Za-z0-9가-힣]{1,15}$/; // 이름 정규표현식

			// 아이디 
			if (!idj.test(id)) {
				document.getElementById("idresult").innerHTML = "아이디는 소문자와 숫자 조합 5~15 사이만 가능 합니다";
				document.getElementById("idresult").style.color = "red";
				return false;// form submit 불가
			} else {
				document.getElementById("idresult").innerHTML = "사용가능한 아이디 입니다."
				document.getElementById("idresult").style.color = "green";
			}

			// 패스워드 [ 두 패스워드 동일한지 검사 ]

			if (!pwj.test(password) || !pwj.test(passwordconfirm)) {
				document.getElementById("pwresult").innerHTML = "대소문자 조합 5~15 사이만 가능합니다.";
				document.getElementById("pwresult").style.color = "red";
				return false;
			} else if (password != passwordconfirm) {
				document.getElementById("pwresult").innerHTML = "패스워드가 동일하지 않습니다.";
				document.getElementById("pwresult").style.color = "red";
				return false;
			} else {
				document.getElementById("pwresult").innerHTML = "사용가능한 패스워드 입니다.";
				document.getElementById("pwresult").style.color = "green";
			}

			// 이름
			if (!namej.test(name)) {
				document.getElementById("nameresult").innerHTML = "이름을 입력해주세요.[특수문자는 제외]";
				document.getElementById("nameresult").style.color = "red";
				return false;
			} else {
				document.getElementById("nameresult").innerHTML = "";
			}
			// 성별
			if (!sex1 && !sex2) { // 둘다 false 이면 // 둘다 체크를 안했으면
				document.getElementById("sexresult").innerHTML = "성별을 선택해주세요";
				document.getElementById("sexresult").style.color = "red";
				return false;
			} else {
				document.getElementById("sexresult").innerHTML = "";
			}
			// 전화번호 
			if (!phonej.test(phone)) {
				document.getElementById("phoneresult").innerHTML = "휴대폰번호 형식으로 입력해주세요.";
				document.getElementById("phoneresult").style.color = "red";
				return false;
			} else {
				document.getElementById("phoneresult").innerHTML = "";
			}
		}

		/* 회원가입 유효성검사 end */