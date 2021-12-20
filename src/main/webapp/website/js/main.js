/* 스크롤 Jquery 사용 */
	
	var item = 2; // 기본 주문 2개를 제외한 세번째 주문 부터
	//$(window) : 현재 창
	$(window).scroll(function() { // 스크롤 이벤트
		alert("dd")
		
		//스크롤이 바닥에 닿았을때
		if($(window).scrollTop() == $(document).height()- $(window).height() ) {
				// (문서전체)현재스크롤위치 == 문서전체높이 - 현재 문서 높이
				
				$.ajax({
					url :"../../controller/orderlistscrollcontroller.jsp" ,
					data : {item : item} ,
					success : function(result) {
						alert("result")
						$("section").append(result);
						// $("태그명").append(html) : 해당 태그에 html 추가
					}
					
				});
				item++; // 스크롤 이벤트가 실행될때마다 주문 1씩증가 2씩증가하고싶으면 +=2
		}
	});
	//$(window).scrollTop() 현재 스크롤 위치