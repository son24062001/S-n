package DiamonShop.Service.User;
import org.springframework.stereotype.Service;

import DiamonShop.Entity.Admin;

@Service
public interface IAdminService {
	public Admin CheckAdmin(Admin admin);
}
