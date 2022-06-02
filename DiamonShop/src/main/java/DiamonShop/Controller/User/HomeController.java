package DiamonShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {

	@RequestMapping(value = { "/", "/trang-chu" })
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	@RequestMapping(value = { "lich-su/{user}" })
	public ModelAndView BaiViet(@PathVariable String user) {
		_mvShare.addObject("bills", _homeService.GetBillByID(user));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/docs/LS");
		return _mvShare;
	}
	@RequestMapping(value = { "lien-he" })
	public ModelAndView LienHe() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/docs/LH");
		return _mvShare;
	}
	@RequestMapping(value = { "check" })
	public ModelAndView UserAdmin() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/account/useradmin");
		return _mvShare;
	}
	@RequestMapping(value = { "admin-page" })
	public ModelAndView Admin() {
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/adminPage");
		return _mvShare;
	}
	
}