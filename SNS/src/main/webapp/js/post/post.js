/* 게시물 등록 : 사진 등록 시 미리 보기 표시하기 1 */

function readImages(input) {
	const imageContainer = document.getElementById("imageContainer")
	// 1. 인풋 태그에 파일이 있는 경우에만 통과
	if (input.files) {
		// 2. image 파일 형식 검사는 생략됨 (input 태그안에서 accept="images/*" 이거 안먹혔음)
		// 3. 유사 배열을 배열로 변환 (forEach 문으로 다루기 위함)
		const fileArray = Array.from(input.files)
		console.log(input.files) // 콘솔에서 파일 잘 들어가는지 확인

		const $colDiv1 = document.createElement("div") // <div> </div> 값을 만드는 코드인가? 
		// const $colDiv2 = document.createElement("div")
		$colDiv1.classList.add("column") // <div class="column"> </div> 생성하는 것 같다.
		// $colDiv2.classList.add("column")

		fileArray.forEach((file, index) => {
			const reader = new FileReader()

			const $imgDiv = document.createElement("div")
			const $img = document.createElement("img")
			$img.classList.add("image")

			const $label = document.createElement("label")
			$label.classList.add("image-label")
			$label.textContent = file.name

			$imgDiv.appendChild($img)
			$imgDiv.appendChild($label)

			reader.onload = e => {
				$img.src = e.target.result
				/*$imgDiv.style.width = ($img.naturalWidth) * 0.2 + "px"
				$imgDiv.style.height = ($img.naturalHeight) * 0.2 + "px"*/
			}
			console.log(file.name)
			/*if (index % 2 == 0) {
				$colDiv1.appendChild($imgDiv)
			} else {
				$colDiv2.appendChild($imgDiv)
			}*/
			$colDiv1.appendChild($imgDiv)
			
			reader.readAsDataURL(file)
		})
		imageContainer.appendChild($colDiv1)
		/*imageContainer.appendChild($colDiv2)*/
	}
}
const inputImages = document.getElementById("uploadImages")
inputImages.addEventListener("change", e => {
	readImages(e.target)
})

const reloadImages = document.getElementById("reloadImages");
reloadImages.addEventListener("click", e => {
	readImages(e.target);
});


/* 게시물 등록 : 사진 등록 시 미리 보기 표시하기 2 */

/* 본문 내용 입력 : 입력 시 '#' '@' 특수문자 입력되면 분류 1*/

function sortTag() {

	/* 본문에 입력된 내용을 검사해서, '#' 혹은 '@' 이 포함되었을 때 이벤트 발생 -> db 조회 한 뒤 결과를 출력한다. (#tagList) */
	var contents = $("pstContent").val();

	// indexOf 는 해당하는 문자열이 존재하면 위치를 반환, 없으면 '-1' 을 반환한다. 
	var searchHashtag = contents.indexOf('#');
	var searchTag = contents.indexOf('@');

	if (searchHashtag == -1 && searchTag == -1) {
		// 해시태그와 태그 모두 존재하지 않는 경우

	} else if (searchTag == -1 && searchHashTag != -1) {
		// 1. 해시태그가 존재하는 경우
		// 1.1 띄어쓰기가 입력되면 띄어쓰기 입력 전 까지 문자를 해시태그로 간주한다 [#apple\s : (#apple) 띄어쓰기 자르고 # 포함 단어를 해시태그로 취급]
		// 1.2 #apple 에서 # 띄고 db - sns.hashtags 에 저장된 데이터와 일치하는게 있는지 찾는다. 
		// 1.3 js 에서 db에 접근 못하는거 아닌가? 
		// 1.4 여기서 jsp 로 값 넘겨주고, 컨트롤러에서 db 접근해서 조회 한 다음 결과값을 다시 여기로 보내야하나?
	} else if (searchTag != -1 && searchHashTag == -1) {
		// 2. 태그(유저 아이디) 가 존재하는 경우
	}

}


/* 본문 내용 입력 : 입력 시 '#' '@' 특수문자 입력되면 분류 2*/


/* 게시물 등록 1 */



/* 게시물 등록 2 */