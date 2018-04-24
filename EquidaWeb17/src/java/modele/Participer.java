/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.ArrayList;

/**
 *
 * @author ts2slam
 */
public class Participer {
    private int place;
    private Course uneCourse ;
    private Cheval unCheval ;

    public Participer() {
    }

    public Participer(int place) {
        this.place = place;
    }

    public int getPlace() {
        return place;
    }

    public void setPlace(int place) {
        this.place = place;
    }

    public Course getUneCourse() {
        return uneCourse;
    }

    public void setUneCourse(Course uneCourse) {
        this.uneCourse = uneCourse;
    }

    public Cheval getUnCheval() {
        return unCheval;
    }

    public void setUnCheval(Cheval unCheval) {
        this.unCheval = unCheval;
    }
    
    
}
