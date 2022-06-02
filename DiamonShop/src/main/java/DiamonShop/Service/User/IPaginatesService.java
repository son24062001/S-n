package DiamonShop.Service.User;

import java.util.List;

import DiamonShop.Dto.PaginatesDto;
import DiamonShop.Dto.ProductsDto;

public interface IPaginatesService {
	public PaginatesDto GetInfoPaginate(int totalData, int limit, int currentPage);
}
