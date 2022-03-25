//   var submit = document.getElementById('submitButton');
//   submit.onclick = showImage;     //Submit 버튼 클릭시 이미지 보여주기
   
   /*function showImage() {
       var newImage = document.getElementById('image-show').lastElementChild;
     
       //이미지는 화면에 나타나고
       newImage.style.visibility = "visible";
     
       //이미지 업로드 버튼은 숨겨진다
       document.getElementById('image-upload').style.visibility = 'hidden';
   
       document.getElementById('fileName').textContent = null;     //기존 파일 이름 지우기
   }*/

   function loadFile(input) {
	   console.log("loadFile");
       var file = input.files[0];   //선택된 파일 가져오기
       console.log("file : " + file);
       //미리 만들어 놓은 div에 text(파일 이름) 추가
       var name = document.getElementById('fileName');
       name.textContent = file.name;
       console.log("name : " + name);
        //새로운 이미지 div 추가
       var newImage = document.createElement("img");
       newImage.setAttribute("class", 'img');
       console.log("newImage : " + newImage);
       //이미지 source 가져오기
       newImage.src = URL.createObjectURL(file);   

       newImage.style.width = "100%";
       newImage.style.height = "100%";
       
      // newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지를 숨긴다
       newImage.style.objectFit = "contain";

       //이미지를 image-show div에 추가
       var container = document.getElementById('image-show');
       console.log("container : " + container);
       container.appendChild(newImage);
       
       document.getElementById('image-upload').style.visibility = 'hidden';
       if(newImage != null){
          newImage.style.visibility = "hidden;"
       }else{
          newImage.style.visibility = "visible";
       }
      
       document.getElementById('fileName').textContent = null;
   };
   
   
   