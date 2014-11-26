/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;


/**
 *
 * @author bej0843
 */
@ManagedBean(name = "dbConnector")
@SessionScoped
public class DatabaseConnector {
    
    private String[] buildings;

    /**
     * Creates a new instance of DatabaseConnector
     */
    public DatabaseConnector() {
    }
    
    @PostConstruct
    public void init(){
        this.buildings = new String[6];
        buildings[0] = "Conference Center";
        buildings[1] = "Baker Hall";
        buildings[2] = "Bonin Hall";
        buildings[3] = "Harris Hall";
        buildings[4] = "Coronna Hall";
        buildings[5] = "Huger Hall";
    }

    public String[] getBuildings() {
        return buildings;
    }

    public void setBuildings(String[] buildings) {
        this.buildings = buildings;
    }
    
    
    
}
