/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 *
 * @author lipef
 */
public class CriptografaSenhaMD5 {
    
    public CriptografaSenhaMD5(){}
    
    public String criptografar(String senha) {
	String md5 = null;
	
	if(null == senha) return null;
	
	try{
		MessageDigest digest = MessageDigest.getInstance("MD5");
		
		digest.update(senha.getBytes(), 0, senha.length());
		
		md5 = new BigInteger(1,digest.digest()).toString(16);
		
	   //System.out.println(md5);
	
	}catch(NoSuchAlgorithmException e){
		e.printStackTrace();
	}
	return md5;
    }
    
}
