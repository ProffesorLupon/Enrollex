/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.bl;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;
import za.ac.entity.NewStudent;

/**
 *
 * @author shots
 */
@Stateless
public class NewStudentFacade extends AbstractFacade<NewStudent> implements NewStudentFacadeLocal {

    @PersistenceContext(unitName = "EnrollexEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public NewStudentFacade() {
        super(NewStudent.class);
    }

    @Override
    public List<NewStudent> ViewByCourse() {
        return null;
    }

    @Override
    public List<NewStudent> ViewByGender() {
        return null;
    }
    
    
    
}
