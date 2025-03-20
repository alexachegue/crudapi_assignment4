package com.csc340.crudapi.butterfly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Centralizes data access to the Butterfly database
 */

@Service
public class ButterflyService{

    @Autowired
    private ButterflyRepository butterflyrepository;

    /**
     * Fetch all butterfly spirits
     * @return the list of all butterfly spirits
     */
    public List<Butterfly> getAllButterflys(){
        return butterflyrepository.findAll();
    }

    /**
     * Fetch a unique butterfly spirit
     * @param butterflyId the unique Butterfly id
     * @return a unique Butterfly object
     */
    public Butterfly getButterflyById(int butterflyId){
        return butterflyrepository.findById(butterflyId).orElse(null);
    }

    /**
     * Fetch all butterfly spirits of a given breed
     * @param breed the given Butterfly breed
     * @return a list of Butterflys of that breed
     */
    public List<Butterfly> getButterflyByBreed(String breed){
        return butterflyrepository.getButterflyByBreed(breed);
    }

    /**
     * Fetch all butterfly spirits whose name contains a String
     * @param name the given String
     * @return a list of Butterflys with the String in its name
     */
    public List<Butterfly> getButterflyByNameSearch(String name){
        return butterflyrepository.getButterflyByNameSearch(name);
    }

    /**
     * Add a new Butterfly to the database
     * @param butterfly the Butterfly to add
     */
    public void addNewButterfly(Butterfly butterfly){
        butterflyrepository.save(butterfly);
    }

    /**
     * Update an existing Butterfly
     * @param butterflyId the unique Butterfly Id
     * @param butterfly the new Butterfly details
     */
    public Butterfly updateButterfly(int butterflyId, Butterfly butterfly){
        Butterfly existing = getButterflyById(butterflyId);
        existing.setName(butterfly.getName());
        existing.setDescription(butterfly.getDescription());
        existing.setBreed(butterfly.getBreed());
        existing.setAge(butterfly.getAge());
        existing.setActiveDate(butterfly.getActiveDate());

        return butterflyrepository.save(existing);
    }

    /**
     * Delete a unique Butterfly Id.
     * @param butterflyId the unique Butterfly Id
     */
    public void deleteButterflyById(int butterflyId){
        butterflyrepository.deleteById(butterflyId);
    }
}