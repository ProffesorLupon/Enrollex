package za.ac.bl;

import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;
import za.ac.entity.NewStudent;

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
    public List<NewStudent> ViewByCourse(String course) {
        return em.createQuery("SELECT s FROM NewStudent s WHERE s.qualification = :course", NewStudent.class)
             .setParameter("course", course)
             .getResultList();
    }


    @Override
    public List<NewStudent> ViewByGender(Character gender) {
        return em.createQuery("SELECT s FROM NewStudent s WHERE s.gender = :gender", NewStudent.class)
             .setParameter("gender", gender)
             .getResultList();
    }
}
