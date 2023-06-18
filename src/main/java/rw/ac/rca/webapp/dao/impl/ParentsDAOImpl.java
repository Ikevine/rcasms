package rw.ac.rca.webapp.dao.impl;

import org.hibernate.Query;
import rw.ac.rca.webapp.dao.ParentsDAO;
import rw.ac.rca.webapp.orm.Parents;

import java.util.List;

public class ParentsDAOImpl  extends DAO implements ParentsDAO {

    public static ParentsDAOImpl instance ;
    private ParentsDAOImpl(){}

    public static ParentsDAOImpl getInstance() {
        if (instance == null) {
            return new ParentsDAOImpl();

        } else {
            return instance;
        }
    }

    @Override
    public Parents saveParent(Parents parents) {
        try{
            begin();
            getSession().save(parents);
            commit();
            return parents;
        }
        catch (Exception e){
            e.printStackTrace();
            rollback();
            return null;
        }
    }

    @Override
    public Parents updateParent(Parents parents) {
        try{
            begin();
            getSession().update(parents);
            commit();
            return parents;
        }
        catch (Exception e){
            rollback();
            return null;
        }
    }

    @Override
    public boolean deleteParent(int id) {
        try{
            begin();
            Query query = getSession().createQuery("from parents where id = :ref");
            query.setInteger("ref" , id);
            Parents parent = (Parents) query.uniqueResult();
            commit();
            return  true;
        }
        catch (Exception e){
            rollback();
            return  false;
        }
    }

    @Override
    public Parents findParentById(int id) {
        try{
            begin();
            Query query = getSession().createQuery("from parents where id = :ref");
            query.setInteger("ref" , id);
            Parents parents =(Parents) query.uniqueResult();
            commit();
            return parents;
        }
        catch (Exception e){
            rollback();
            return null;
        }
    }

    @Override
    public List<Parents> getAllParents() {
        try{
            begin();
            Query query = getSession().createQuery("from parents");
            List<Parents>parents = query.list();
            commit();
            return parents;
        }
        catch (Exception e){
            rollback();
            return null;
        }
    }
}
