/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;

/**
 *
 * @author bej0843
 */
@ManagedBean(name = "studentrequest")
@SessionScoped
public class StudentRequest {

    public String clid = "";
    public String gender = "";
    public String building = "";
    public String room = "";
    
    /**
     * Creates a new instance of StudentRequest
     */
    public StudentRequest() {
    }

    public String getClid() {
        return clid;
    }

    public void setClid(String clid) {
        this.clid = clid;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBuilding() {
        return building;
    }

    public void setBuilding(String building) {
        this.building = building;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }
    
    public void changeBuilding(ValueChangeEvent e){
        FacesContext.getCurrentInstance().renderResponse();
        this.building = e.getNewValue().toString();
    }
    
}
