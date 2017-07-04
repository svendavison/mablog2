/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ninja.sven.imrunicorn;

import java.util.Date;
import java.text.SimpleDateFormat;


/**
 *
 * @author svendavison
 */
public class Config {
    	
	public final static String SITE_NAME = "IMR Unicorn";
	public final static String TITLE_SITE = "IMR Unicorn";
	public final static String META_DESCRIPTION = "Welcome to IMRUnicorn";
	public final static String META_KEYWORDS = "sven, software, java, jsp, IMRUnicorn";
	    
	public final static String SITE_URL = "/IMRUnicorn/";
	public final static String TPL_URL = "/IMRUnicorn/tpl/base/";
	public final static String STATIC_URL = "/IMRUnicorn/static/";
	    
	public final static String ANALYTICS_ID = "0"; // Google Analytics ID orig (UA-31501397-1)
	public final static String CONTACT_EMAIL = "Sven@FakeAddress.com";
	    
    public static String getYear() {
    	Date date = new Date();
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy");
    	return dateFormat.format(date);	
    }
    	
}
  