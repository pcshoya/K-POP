function check(){
	if(document.frm.r_id.value==""){
		alert("예매아이디가 입력되지 않았습니다.");
		frm.r_id.focus();
		return false;
	}
	if(document.frm.c_id.value==""){
		alert("공연아이디가 입력되지 않았습니다.");
		frm.c_id.focus();
		return false;
	}
	if(document.frm.b_name.value==""){
		alert("예매자 이름이 입력되지 않았습니다.");
		frm.b_name.focus();
		return false;
	}
	if(document.frm.b_phone.value==""){
		alert("예매자 연락처가 입력되지 않았습니다.");
		frm.b_phone.focus();
		return false;
	}
	if(document.frm.t_count.value==""){
		alert("티켓수량이 입력되지 않았습니다.");
		frm.t_count.focus();
		return false;
	}
	if(document.frm.u_price.value==""){
		alert("금액이 입력되지 않았습니다.");
		frm.u_price.focus();
		return false;
	}
	if(document.frm.t_price.value==""){
		alert("총금액이 입력되지 않았습니다.");
		frm.t_price.focus();
		return false;
	}
	if(document.frm.p_status.value==""){
		alert("결제상태가 입력되지 않았습니다.");
		frm.p_status.focus();
		return false;
	}
	return true;
}

function rewrite(){
	alert("정보를 지우고 처음부터 다시 입력합니다!");
	document.frm.r_id.focus();	
}