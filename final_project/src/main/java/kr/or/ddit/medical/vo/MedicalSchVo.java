package kr.or.ddit.medical.vo;

import lombok.Data;

@Data
public class MedicalSchVo {
	private String sgCd; // 수가코드 검색 > 수가 코드
	private String sgNm; // 수가코드 검색 > 수가 코드명
	private String sgAmt; // 수가코드 검색 > 수가금액
	private String drugCd; // 진단 및 처방 검색 > 의약품 코드
	private String drugNm; // 진단 및 처방 검색 > 의약품 코드명
	private String disCd; // 진단 및 처방 검색 > 질병 코드
	private String disNm; // 진단 및 처방 검색 > 질병 코드명
	private String qoCd; // 진단 및 처방 검색 > 퀵오더 코드
	private String qoNm; // 진단 및 처방 검색 > 킉오더 코드명
	private int drugTimes; // 일일 복용 횟수
	private int drugDoes; // 일회 복용량
	private int prspTerm; // 처방 기간
}
