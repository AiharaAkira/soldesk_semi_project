function delCheck(no){
let ok = confirm('정말 삭제합니까?');

if(ok){
	location.href='FreeDeleteController?no=' +no;
}
	
}