package kr.or.ddit.medical.mapper;

import java.util.List;
import java.util.Map;

import kr.or.ddit.medical.vo.CmntVO;
import kr.or.ddit.medical.vo.MedicalRecordVo;
import kr.or.ddit.medical.vo.MedicalSchVo;
import kr.or.ddit.medical.vo.MedicalTreatVo;
import kr.or.ddit.medical.vo.MedicalVitalSignVo;
import kr.or.ddit.medical.vo.MedicalVo;
import kr.or.ddit.medical.vo.PrescriptionVO;

public interface MedicalMapper {

	// 진료 등록
	public int insertMedical(MedicalVo medicalVo);

	// 우선대기 환자일 경우 진료 업데이트로 처리
	public int updateTreat(MedicalTreatVo medicalTreatVo);

	// 접수번호에 해당하는 진료 코드 가져오기
	public String getTreatCd(String rcptNo);

	// 진료 예약 목록
	public List<MedicalVo> selectListMedicalYeyak(Map<String, Object> map);

	// 진료 대기 목록
	public List<MedicalVo> selectListMedicalDaegi(Map<String, Object> map);

	// 진료 상세 조회
	public MedicalVo selectDetailMedical(MedicalVo medicalVo);

	// 코멘트용
	public MedicalVo selectDetailMedical2(String pntCd);

	// 증상 수정
	public int updateSymptoms(MedicalVo medicalVo);

	// 코멘트 저장
	public int insertCmnt(CmntVO cmntVo);

	// 코멘트 수정
	public int updateCmnt(CmntVO cmntVo);

	// 코멘트 삭제
	public int deleteCmnt(CmntVO cmntVo);

	// 환자 사진 저장
	public int insertCam(MedicalVo medicalVo);

	// 환자 사진 목록
	public List<MedicalVo> selectListCam(Map<String, Object> map);

	// 처방 및 진단 검색 결과 리스트
	public List<MedicalSchVo> selectListJindanSch(Map<String, Object> map);

	// 수가코드 검색 결과 리스트
	public List<MedicalSchVo> selectListSoogiSch(Map<String, Object> map);

	// 바이탈사인 저장
	public int insertVitalSign(MedicalVitalSignVo medicalVitalSignVo);

	// 바이탈사인 최근 기록 상세 조회
	public MedicalVitalSignVo selectVitalSignDetail(MedicalVitalSignVo medicalVitalSignVo);

	// 바이탈사인 기록 조회
	public List<MedicalVitalSignVo> selectListVitalSignRecord(Map<String, Object> map);

	// 진료 저장
	public int insertTreat(MedicalTreatVo medicalTreatVo);

	// 검사 저장
	public int insertInspection(MedicalTreatVo medicalTreatVo);

	// 처방 저장
	public int insertPrescription(PrescriptionVO prescriptionVo);

	// 질병 저장
	public int insertDig(MedicalTreatVo medicalTreatVo);

	// 차트파일 진료번호로 업데이트
	public int updateChartFile(MedicalTreatVo medicalTreatVo);

	// 진료코드 생성
	public String selectLastTreatCd();

	// 진료기록 상세 조회
	public List<MedicalRecordVo> selectListTreatRecord(String treatCd);

	// 진료일 목록 조회
	public List<MedicalRecordVo> selectListTreatDate(MedicalRecordVo medicalRecodeVo);

	// 사진 삭제
	public int deleteCam(MedicalVo medicalVo);

	// 환자 업데이트
	public int updatePntState(MedicalTreatVo medicalTreatVo);

	// 우선대기 환자 검사목록
	public List<MedicalSchVo> selectListOsDaegiInsp(String rcptNo);

	// 수납 내역 추가
	public int insertRcv(MedicalTreatVo medicalTreatVo);

	// 퀵오더
	public List<MedicalSchVo> setQoCd(int qoCd);
}
