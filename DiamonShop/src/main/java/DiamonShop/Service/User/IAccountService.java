package DiamonShop.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Entity.Users;

@Service
public interface IAccountService {
	public int AddAccount(Users user);
	public Users CheckAccount(Users user);
	public List<Users> DeleteUser(long id);
}
