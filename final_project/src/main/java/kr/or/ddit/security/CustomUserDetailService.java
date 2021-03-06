package kr.or.ddit.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kr.or.ddit.emp.vo.EmpVO;
import kr.or.ddit.login.mapper.LoginMapper;

public class CustomUserDetailService implements UserDetailsService{
	
	@Autowired
	LoginMapper loginMapper;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		EmpVO empVO = loginMapper.read(userName);
		
		return empVO==null?null:new CustomUser(empVO);
	}
	
}





