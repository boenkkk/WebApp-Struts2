package id.util.interceptor;

import java.util.Map;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import id.util.interceptor.LoginInterceptor;

public class LoginInterceptor extends AbstractInterceptor{
	
	private static final long serialVersionUID = 1L;
	private static final Logger LOG = Logger.getLogger(LoginInterceptor.class);

	public String intercept(ActionInvocation invocation) throws Exception {
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		if (session != null && session.get("idUser") != null) {
			LOG.info("");
			return invocation.invoke();
		} else {
			LOG.warn("session expired");
			return "login";
		}
	}
	
}
