package kr.or.ddit.medical.vo;

import lombok.Data;

@Data
public class PrescriptionVO {
	private String prspCd; // 처방코드
	private String treatCd; // 진료코드
	private String drugCd; // 의약품 코드
	private int drugTimes; // 일일 복용 횟수
	private int drugDoes; // 일회 복용량
	private int prspTerm; // 처방 기간
	private int prspDrugAmt; // 처방약 금액
	private String prspDt; // 처방일시
	private String drugNm; // 의약품명
	private String rcptNo; // 접수번호
}
