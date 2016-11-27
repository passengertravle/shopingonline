package main.java;
import java.io.Serializable;
import java.sql.ResultSet;
import java.io.File;
import java.io.IOException;
import java.util.Date;


public interface AdminWorkInterface {

	ResultSet find(String foodName);

	Admin delete(String foodName);

	Admin add(String cName,String aSex,String aBirth,String anormalPrice,String aDescr,String apicUrl);

	Admin modify(String foodName);
	
	Admin move(File f) throws Exception;
	
	ResultSet goodFind(String goodName);
	
	Admin goodAdd(String gName,String gNumber,String gnormalPrice,String gpicUrl,String gDescr,String gBirth,String gProtect);
	
	Admin goodModify(String gId,String gName,String value);

	
}
