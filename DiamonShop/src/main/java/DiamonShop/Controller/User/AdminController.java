package DiamonShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Admin;
import DiamonShop.Service.User.AdminServiceImpl;
@Controller
public class AdminController extends BaseController{
	@Autowired
	AdminServiceImpl adminService = new AdminServiceImpl();
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView  RegisterAdmin() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/account/admin");
		_mvShare.addObject("admin", new Admin());
		return _mvShare;
	}
	@RequestMapping(value = "/adminLogin", method = RequestMethod.POST)
	public ModelAndView Admin(HttpSession session, @ModelAttribute("admin") Admin admin) {
		
		admin = adminService.CheckAdmin(admin);
		if(admin != null) {
			_mvShare.setViewName("redirect:/admin-page");
			session.setAttribute("LoginInfoAdmin",admin);
		}
		else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại");
		}
		return _mvShare;
	}
	@RequestMapping(value = "/log-out", method = RequestMethod.GET)
	public String Login(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("LoginInfoAdmin");
		return "redirect: trang-chu";
	}
}
