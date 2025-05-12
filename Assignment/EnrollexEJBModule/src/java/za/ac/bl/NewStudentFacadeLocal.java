/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.bl;

import jakarta.ejb.Local;
import java.util.List;
import za.ac.entity.NewStudent;

/**
 *
 * @author shots
 */
@Local
public interface NewStudentFacadeLocal {

    void create(NewStudent newStudent);

    void edit(NewStudent newStudent);

    void remove(NewStudent newStudent);

    NewStudent find(Object id);

    List<NewStudent> findAll();

    List<NewStudent> findRange(int[] range);

    int count();
    
    List<NewStudent> ViewByCourse(String course);

    
    List<NewStudent> ViewByGender(Character gender);

    
}
