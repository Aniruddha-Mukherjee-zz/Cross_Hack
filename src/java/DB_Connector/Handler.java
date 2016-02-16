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
          
            Boolean status=false; //hospital seat
            String address=" 88, College Street, Chittaranjan Avenue, Kolkata, West Bengal 700073";
            String link= "http://www.medicalcollegekolkata.org/";
            int Childrenbed=-1,Cabinbed=-1,Generalbed=-1;
            
            String timestamp= new SimpleDateFormat("dd/MM/YY HH:mm:ss").format(new Date());
            
              obj.put("status", new Boolean(status));
              obj.put("address", address);
              obj.put("link", link);
              obj.put("timestamp",timestamp);
              
              if(ward.equals("Any")){
                  obj.put("Children",Childrenbed );
                  obj.put("Cabin",Cabinbed);
                  obj.put("General", Generalbed);
              }
              
              else if(ward.equals("Children Bed"))
                       obj.put("Children",Childrenbed );
              else  if(ward.equals("Cabin Bed"))
                    obj.put("Cabin",Cabinbed);
              else  if(ward.equals("General Bed"))
                    obj.put("General", Generalbed);
                        
          return obj;
     }
    
}
