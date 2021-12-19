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
		const $colDiv2 = document.createElement("div")
		$colDiv1.classList.add("column") // <div class="column"> </div> 생성하는 것 같다.
		$colDiv2.classList.add("column")

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
			if (index % 2 == 0) {
				$colDiv1.appendChild($imgDiv)
			} else {
				$colDiv2.appendChild($imgDiv)
			}
			reader.readAsDataURL(file)
		})
		imageContainer.appendChild($colDiv1)
		imageContainer.appendChild($colDiv2)
	}
}
const inputImages = document.getElementById("uploadImages")
inputImages.addEventListener("change", e => {
	readImages(e.target)
})



/* 게시물 등록 : 사진 등록 시 미리 보기 표시하기 2 */