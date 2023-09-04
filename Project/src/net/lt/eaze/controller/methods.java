package net.lt.eaze.controller;

import java.text.ParseException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Base64;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import net.lt.eaze.dao.EnterpriseDAO;
import net.lt.eaze.dao.namedLicenseValidation;
import net.lt.eaze.userManagement.roleDetails;

public class methods {
	@Autowired
	private EnterpriseDAO enterpriseDAO;
	
	private static BCryptPasswordEncoder passwordEcorder = new BCryptPasswordEncoder();


	   public String bcryptEncryptor(String plainText) {
	       return passwordEcorder.encode(plainText);
	   }

	   public Boolean doPasswordsMatch(String rawPassword,String encodedPassword) {
	      return passwordEcorder.matches(rawPassword, encodedPassword);
	   }
	
	static HashMap<String, Integer> findRepeating(List<String> allActualValues, int size){
	    // Hash map to store the  
	    // frequency of elements 
	    HashMap<String, Integer> frequency = new HashMap<String,Integer>(); 
	      
	    // Loop to store the frequency of  
	    // elements of array 
	  
	    for(int i = 0; i < size; i++)  
	    {
	        if(frequency.containsKey(allActualValues.get(i))) 
	        {
	            frequency.put(allActualValues.get(i), frequency.get(allActualValues.get(i)) + 1); 
	        } 
	        else
	        {
	            frequency.put(allActualValues.get(i), 1); 
	        } 
	    } 
	    return frequency; 
	}
	
	boolean isLicenseNotExpired(namedLicenseValidation namedLicenseDetails) {
//		if(namedLicenseDetails.size()>0) {
			String license_expiration_date = namedLicenseDetails.getExpiration_date();
			SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
			Date expirationDate = null;
			Date currentDate = null;
			try {
				expirationDate = sdformat.parse(license_expiration_date);
				Date date = new Date();  
			    System.out.println(sdformat.format(date));  
			    String date1 = sdformat.format(date);
			    currentDate = sdformat.parse(date1);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			if (expirationDate.compareTo(currentDate) > 0 || expirationDate.compareTo(currentDate) == 0) {
				return true;
			} else{
				System.out.println("expired");
				return false;
			}
//		}else {
//			System.out.println("License Do not exist");
//			return false;
//		}
	}
	
	private static final String ENCRYPTION_ALGORITHM = "AES";
    private static final String ENCRYPTION_KEY = "&ddfTdf7K;3fjn"; // Should be more secure in a real scenario

    public static String encryptList(List<String> stringList) throws Exception {
//        SecretKeySpec secretKey = new SecretKeySpec(ENCRYPTION_KEY.getBytes(StandardCharsets.UTF_8), ENCRYPTION_ALGORITHM);
    	SecretKeySpec secretKey = generateSecretKey(ENCRYPTION_KEY);
        Cipher cipher = Cipher.getInstance(ENCRYPTION_ALGORITHM);
        cipher.init(Cipher.ENCRYPT_MODE, secretKey);

        String combinedString = String.join("\n", stringList);
        byte[] encryptedBytes = cipher.doFinal(combinedString.getBytes(StandardCharsets.UTF_8));

        return Base64.getEncoder().encodeToString(encryptedBytes);
    }

    public static List<String> decryptList(String encryptedString) throws Exception {
//        SecretKeySpec secretKey = new SecretKeySpec(ENCRYPTION_KEY.getBytes(StandardCharsets.UTF_8), ENCRYPTION_ALGORITHM);
    	SecretKeySpec secretKey = generateSecretKey(ENCRYPTION_KEY);
        Cipher cipher = Cipher.getInstance(ENCRYPTION_ALGORITHM);
        cipher.init(Cipher.DECRYPT_MODE, secretKey);

        byte[] encryptedBytes = Base64.getDecoder().decode(encryptedString);
        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
        String decryptedString = new String(decryptedBytes, StandardCharsets.UTF_8);

        return new ArrayList<>(Arrays.asList(decryptedString.split("\n")));
    }
    
    private static SecretKeySpec generateSecretKey(String key) throws Exception {
        byte[] keyBytes = key.getBytes(StandardCharsets.UTF_8);
        MessageDigest sha = MessageDigest.getInstance("SHA-256");
        keyBytes = sha.digest(keyBytes);
        return new SecretKeySpec(keyBytes, ENCRYPTION_ALGORITHM);
    }
	
}
