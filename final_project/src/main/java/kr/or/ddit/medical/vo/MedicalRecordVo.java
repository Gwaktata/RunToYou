package kr.or.ddit.medical.vo;

import java.util.List;

import lombok.Data;

@Data
public class MedicalRecordVo {
	private String treatCd; // 진료코드
	private String pntCd; // 환자코드
	private String treatDt; // 진료일
	private String pntAddr; // 주소
	private String pntNm; // 이름
	private String pntPrno; // 주민번호
	private String height; // 키
	private String weight; // 체중
	private String empNm; // 담당의
	private String pntHp; // 연락처
	private String sex; // 성별
	private String age; // 연령
	private String treatOp; // 진찰소견

	private String fileNo; // 파일번호
	private String base64img; // base64 인코딩 결과

	private List<PrescriptionVO> prescription; // 처방 리스트
}
