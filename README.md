# sns 프로젝트 개발 일기장 조지훈

(시간이 얼마 없지만 그래도 그거라도)

어떤 주제를 건드렸는가 
왜 안되는가 : 어떤 부분에서 문제가 자꾸 발생하는지 여기에 기록 복사 붙여넣기 해서 오류 메시지 등등 여기에 다 적어두기 
정말 사소한 거라도 
내가 오늘 뭐 했는지, 뭐 하려고 했는데, 대충 어떤 이유 때문에 잘 안되는 것 같다. 
일기형식으로 옆에 있는 사람한테 말하듯이 이 브랜치는 온전히 개개인의 브랜치 다른 사람이 안건드림 그러니까 여기를 내 개인 개발 일기장이라고 생각하고, 사소한거라도 모두 기록 
나중에 다 같이 브레인스토밍할때도 여기 남아있는 기록 참고할 수도 있고, 내가 나중에 시간이 정말 없어서, 꼭 이거 하나라도 구현을 해야하는 긴박한 상황에서 
이런 빌드업 과정이 없으면, 결국 나중에 아무것도 못함. 그냥 한게없는게 됨. 내 뇌를 굴렸던 기록 자체가 없으니까 

가장 큰 문제 : 이미지 파일을 비동기 통신으로 못보내고, 못 가져옴 

그러니까, 이미지 파일 관련해서는, $.ajax 못 씀

1. 어떤 페이지를 들어간다. 랜덤피드 페이지.jsp 

헤더 임포트
MediasDao.java 에서 medias 접근한다. (등록된 사진 데이터에 접근)
좋아요 갯수가 높은 순 : 

미디어를 가져오는 메소드(int post_no) {
ArrayList<Medias> medias = new ArrayList<>();
String sql = " .... where p_no = ? order by count(*)
	
	...
	
	while(res.next()){
		sql = " ... where p_no = ? --> 여기서 medias_no 가져온다. 
	}
<% ArrayList<Medias> medias = MemdiasDao.getMediasDao.getList();

# 2021-12-21 랜덤피드

설계 
1. 랜덤 피드에는 좋아요 수가 높은 게시물의 사진 출력한다. 
2. 팔로우가 아니어도 출력된다
3. 처음에 6개가 출력된 후 스크롤이 아래에 닿으면 6개가 더 출력된다.
	
sql 
1. plike 테이블에서 좋아요 수가 높은 순으로 post_no를 가져온다.
		
2. 가져온 post_no를 조건으로 post_media 테이블에서 medias_no를 가져온다.
	
3. 가져온 medias_no를 조건으로 medias 테이블에서 content_url을 가져온다.
	
![sql](https://user-images.githubusercontent.com/88937233/146893395-67935211-25cf-4154-b204-11952485ab6f.png)
				(현재까지 작성한 sql문 )
	
문제점 
post_medias 테이블은 컬럼이 모두 fk라 생성이 임의적으로 생성이 불가하여 테스트가 불가하다.

변경점
1. 우리 DB설계에 좋아요 테이블명을 like로 정했는데 선생님께서 like는 sql문에서는 가능해도 java에서 읽지 못한다고 알려주셔서 plike로 수정
	
