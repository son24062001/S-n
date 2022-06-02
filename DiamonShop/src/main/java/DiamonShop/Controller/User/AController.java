package DiamonShop.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.CartDto;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Users;
import DiamonShop.Service.User.ProductServiceImpl;

@Controller
public class AController extends BaseController {
	ProductServiceImpl productService = new ProductServiceImpl();
	
	
	@RequestMapping(value = { "xem" })
	public ModelAndView view() {
		
		_mvShare.addObject("users", _homeService.GetAllUser());
		_mvShare.setViewName("user/admin/viewAdmin");
		return _mvShare;
	}
	@RequestMapping(value = "DeleteUser/{id}")
	public  ModelAndView deleteView(@PathVariable long id) {
		_mvShare.addObject("users", _homeService.DeleteUser(id));
		_mvShare.setViewName("user/admin/viewAdmin");
		return _mvShare;
		
	}
	@RequestMapping(value = { "lsdh" })
	public ModelAndView LSDH() {
		
		_mvShare.addObject("bills", _homeService.GetAllBill());
		_mvShare.setViewName("user/admin/lsdh");
		return _mvShare;
	}
	@RequestMapping(value = { "add" })
	public ModelAndView Add() {
		
		
		_mvShare.setViewName("user/admin/add");
		return _mvShare;
	}
//	@RequestMapping(value = "/addDevice", method = RequestMethod.POST)
//	public ModelAndView AddDevice(@ModelAttribute("product") ProductsDto product) {
//		
//		int count = productService.AddProduct(product);
//		if(count > 0) {
//			_mvShare.addObject("status", "Thêm sản phẩm thành công");
//		}
//		else {
//			_mvShare.addObject("status", "Thêm sản phẩm thấy bại");
//		}
//		_mvShare.setViewName("user/account/register");
//		return _mvShare;
//	}
}
