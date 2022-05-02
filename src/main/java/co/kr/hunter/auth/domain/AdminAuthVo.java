package co.kr.hunter.auth.domain;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

@Data
public class AdminAuthVo implements UserDetails{

    /** 사용자ID */
    private String userId;

	/** 사용자명 */
	private String userName;
	
    /** 패스워드 */
    private String password;
    
    /** 권한타입 */
    private String userType;
    
    /** 부서코드 */
    private String deptCd;
    
    /** 부서명ㅇ*/
    private String deptNm;
    
    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
        String AUTHORITY = userType;
//        if(userType.equals("ROO1")) {
//        	AUTHORITY = "ROLE_MASTER";
//        }
        auth.add(new SimpleGrantedAuthority(AUTHORITY));
        return auth;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return userId;
    }

    @Override
    public boolean isAccountNonExpired() {    	return true;    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
}
