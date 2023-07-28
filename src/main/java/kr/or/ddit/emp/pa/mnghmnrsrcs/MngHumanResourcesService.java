package kr.or.ddit.emp.pa.mnghmnrsrcs;


import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.json.simple.JSONArray;

import kr.or.ddit.vo.AcntSttsVO;
import kr.or.ddit.vo.AuthoritiesVO;
import kr.or.ddit.vo.BankVO;
import kr.or.ddit.vo.BlacklistVO;
import kr.or.ddit.vo.DclzVO;
import kr.or.ddit.vo.DeptVO;
import kr.or.ddit.vo.EmpVO;
import kr.or.ddit.vo.GivePaidlvVO;
import kr.or.ddit.vo.JobGradeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PaidlvSectionVO;
import kr.or.ddit.vo.PaidlvVO;
import kr.or.ddit.vo.PaidlyRcordVO;
import kr.or.ddit.vo.SttemntVO;

public interface MngHumanResourcesService {

	//DB에서 근태 데이터 불러오기
	public List<DclzVO> getDclzData(String date);

	//특정 직원 근태 정보 불러오기
	public List<DclzVO> selectEmpDclz(DclzVO dclzVO);

	//특정 직원 근태 정보 업데이트
	public int updateEmpDclz(DclzVO dclzVO);

	//DB에서 기간 근태 데이터 불러오기
	public List<DclzVO> getDclzPeriodData(String startDate, String endDate);



	//휴가 데이터 불러오기
	public List<PaidlvVO> getPaidlvData(String date);

	//부서별 직원 불러오기
	public List<EmpVO> selectDeptEmp(String deptCd);

	//휴가 구분 코드 불러오기
	public List<PaidlvSectionVO> selectPaidlvSection();

	//특정 직원 휴가 지급하기
	public int insertGivePaidlv(GivePaidlvVO givePaidlvVO);

	//특정 직원 휴가 지급내역 불러오기
	public List<GivePaidlvVO> selectEmpGivePaidlv(GivePaidlvVO givePaidlvVO);

	//특정 직원 지급 휴가 정보 업데이트
	public int updateGivePaidlv(GivePaidlvVO givePaidlvVO);

	//특정 직원 지급 휴가 정보 삭제
	public int deleteGivePaidlv(GivePaidlvVO givePaidlvVO);

	//특정 직원 휴가 사용내역 불러오기
	public List<PaidlyRcordVO> selectPaidlyRcord(PaidlyRcordVO paidlyRcordVO);

	//특정 직원 휴가 사용 정보 업데이트
	public int updatePaidlyRcord(PaidlyRcordVO paidlyRcordVO);

	//특정 직원 사용 연차 정보 삭제
	public int deletePaidlyRcord(GivePaidlvVO givePaidlvVO);








}

