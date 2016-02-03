/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_Connector;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.simple.JSONObject;

/**
 *
 * @author aniruddha
 */
public class Handler {
    
    private String hospital;
    private String department;
    private  String ward;
    
    public Handler(String hospital, String department, String ward){
        
        this.hospital=hospital;
        this.department=department;
        this.ward=ward;
    }
    
     public JSONObject respond(){
          JSONObject obj =new JSONObject();
          
            Boolean status=true;
            String address=" 88, College Street, Chittaranjan Avenue, Kolkata, West Bengal 700073";
            String link= "http://www.medicalcollegekolkata.org/";
            int singlebed=-1,doublebed=-1,generalbed=-1;
            
            String timestamp= new SimpleDateFormat("dd/MM/YY HH:mm:ss").format(new Date());
            
              obj.put("status", new Boolean(status));
              obj.put("address", address);
              obj.put("link", link);
              obj.put("timestamp",timestamp);
              
              if(ward.equals("Any")){
                  obj.put("single",singlebed );
                  obj.put("double",doublebed);
                  obj.put("general", generalbed);
              }
              
              else if(ward.equals("Single Bed"))
                       obj.put("single",singlebed );
              else  if(ward.equals("Double Bed"))
                    obj.put("double",doublebed);
              else  if(ward.equals("General Bed"))
                    obj.put("general", generalbed);
                        
          return obj;
     }
    
}
