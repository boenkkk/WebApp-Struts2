package id.util.db;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.apache.tomcat.util.codec.binary.Base64;

import id.util.JFileStream;

public class DBEngine {
	
	private static final Logger LOG = Logger.getLogger(DBEngine.class.getName());
	
	String getEncr=null;
	String getUrl=null;
	String getUs=null;
	String getPs=null;
	String user=null;
	String password=null;
	
	public DBEngine() {
		JFileStream fileStream = new JFileStream("jdbc.properties");
		fileStream.getProperties();
	}

	public Connection getConnection() {						
		/*cekStatusEnckrip();	
		String url = getUrl;
		if(getEncr.equals("1")){
			String us = getUs;
			String ps = getPs;						
			byte[] uss= Base64.decodeBase64(us.getBytes());
			byte[] pss= Base64.decodeBase64(ps.getBytes());			
			user=new String(uss);
			password=new String(pss);			
		}else if(getEncr.equals("0")){
			user=getUs;
			password=getPs;	
			EncrypBack(user,password,url);
		}*/
		try {
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			//Connection connection = DriverManager.getConnection(url,user,password);
			Class.forName("com.mysql.jdbc.Driver");
			Connection connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/webapp-struts2","root","");
			//Connection connection = DriverManager.getConnection("jdbc:mysql://us-cdbr-east-02.cleardb.com:3306/heroku_d2f0bdd71417be1","bf26cd8d97f71e","e24b77c0");
			return connection;
		} catch (ClassNotFoundException e) {
			LOG.error(e);
		} catch (SQLException e) {
			LOG.error(e);
		}			
		return null;
	}

	private void cekStatusEnckrip() {
		Properties prop = new Properties();
		InputStream input  = null;
		try {
			input = new FileInputStream(System.getProperty("catalina.home") + "/conf/connDB.am");
			prop.load(input);
			getEncr = prop.getProperty("encr");
            getUrl = prop.getProperty("url");
            getUs = prop.getProperty("user");
            getPs = prop.getProperty("password");
		} catch (FileNotFoundException e) {
			LOG.error(e);
		} catch (IOException e) {
			LOG.error(e);
		}
	}
	
	private void EncrypBack(String user2, String password2, String url) {
		String str=user2;
		String str2=password2;
		byte[] bytesEncoded = Base64.encodeBase64(str .getBytes());
		byte[] bytesEncoded2 = Base64.encodeBase64(str2 .getBytes());
		try {
			FileOutputStream out = new FileOutputStream(System.getProperty("catalina.home") + "/conf/connDB.am");
			Properties prop = new Properties();
			prop.setProperty("encr", "1");
			prop.setProperty("url", url);
			prop.setProperty("user", new String(bytesEncoded ));
			prop.setProperty("password", new String(bytesEncoded2 ));
			prop.setProperty("NB", "rubah isi encr menjadi 0 ketika mengganti password");
			prop.store(out, null);
			out.close();
		} catch (FileNotFoundException e) {
			LOG.error(e);
		} catch (IOException e) {
			LOG.error(e);
		}		
	}

}
