package DiamonShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Service.User.IProductService;

@Controller
public class ProductController extends BaseController {
	
	@Autowired
	private IProductService _productService;
	@RequestMapping(value = { "chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.GetProductByID(id));
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory));
		return _mvShare;
	}
	@RequestMapping(value = { "sanpham" })
	public ModelAndView SP() {
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("user/products/SP");
		return _mvShare;
	}
	
}