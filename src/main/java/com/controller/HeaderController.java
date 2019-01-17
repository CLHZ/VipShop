package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Types;
import com.service.TypesService;

@Controller
@RequestMapping("/czj")
public class HeaderController {
	
	@Autowired
	private TypesService typesService;

    @RequestMapping("/getHead")
    public String getHead(){
        return "czj/header";
    }
    
    @RequestMapping("/getcateitem.htm")
    @ResponseBody
    public List<Types> getCateItem(){
    	/*List<Types> list = typesService.getCateItem();
    	int length = 0;
    	int id = 0 ;
    	for (Types types : list) {
			//System.out.println("Name:"+types.getT_Name() +";ID:"+types.getT_ID()+";parentID:"+types.getT_parentID());
			if(types.getT_ID() == 1) {
				length++ ;
			}
		}
    	System.out.println(length);
    	for(int i = 0; i < length; i++) {
    		for (Types type : list) {
	    		if(type.getT_parentID() == 1) {
	    			System.out.println("Name:"+type.getT_Name()+";Id:"+type.getT_ID());
	    			id = type.getT_ID();
	    		}
    		}
    	}
    	
    	for(Types typ : list) {
			if(typ.getT_parentID() == id) {
				System.out.println("Name:"+typ.getT_Name());
				
			}
		}*/
    	return typesService.getCateItem();
    }
    
}
