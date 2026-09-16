function check_in(){
	if(document.frm.rid.value==""){
		alert("예매아이디가 입력되지 않았습니다.");
		document.frm.rid.focus();
		return false;
	}
	if(document.frm.sid.value==""){
		alert("공연아이디가 입력되지 않았습니다.");
		document.frm.sid.focus();
		return false;
	}
	if(document.frm.name.value==""){
		alert("예매자 이름이 입력되지 않았습니다.");
		document.frm.name.focus();
		return false;
	}
	if(document.frm.num.value==""){
		alert("예매자 연락처가 입력되지 않았습니다.");
		document.frm.num.focus();
		return false;
	}
	if(document.frm.tick.value==""){
		alert("티켓수량이 입력되지 않았습니다.");
		document.frm.tick.focus();
		return false;
	}
	if(document.frm.pri.value==""){
		alert("금액이 입력되지 않았습니다.");
		document.frm.pri.focus();
		return false;
	}
	if(document.frm.allprice.value==""){
		alert("총금액이 입력되지 않았습니다.");
		document.frm.allprice.focus();
		return false;
	}
	if(document.frm.yn.value==""){
		alert("결제상태가 입력되지 않았습니다.");
		document.frm.yn.focus();
		return false;
	}
	alert("예매정보가 정상적으로 등록 되었습니다.");
	return true;
}

function rewrite(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.rid.focus();
}