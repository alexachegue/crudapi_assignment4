package com.csc340.crudapi.butterfly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Includes all REST API endpoint mappings for the Butterfly object
 */
@RestController
@RequestMapping("/butterfly")
public class ButterflyController{

    @Autowired
    private ButterflyService service;

    /**
     * Get a list of all Butterflys in the database
     * http://localhost:8080/butterfly/all
     * @return a list of all Butterfly
     */
    @GetMapping("/all")
    public Object getAllButterflys(){
        return new ResponseEntity<>(service.getAllButterflys(), HttpStatus.OK);
    }

    /**
     * Get a Butterfly by ID
     * http://localhost:8080/butterfly/butterflyId
     *
     * @param butterflyId the unique Butterfly ID
     * @return the Butterfly with that id
     */
    @GetMapping("/{butterflyId}")
    public Object getAButterfly(@PathVariable int butterflyId){
        return new ResponseEntity<>(service.getButterflyById(butterflyId), HttpStatus.OK);
    }

    /**
     * Get a list of Butterflys whose name contains the search name
     * http://localhost:8080/butterfly/name?search=jug
     *
     * @param search the name search
     * @return the Butterfly with the search containing their name
     */
    @GetMapping("/name")
    public Object getButterflyByName(@RequestParam(name = "search", defaultValue = "") String search){
        return new ResponseEntity<>(service.getButterflyByNameSearch(search), HttpStatus.OK);
    }

    /**
     * Get a list of Butterflys of a specific breed
     * http://localhost:8080/butterfly/breed/monarch
     *
     * @param breed the search key
     * @return a list of Butterflys of a specific breed
     */
    @GetMapping("/breed/{breed}")
    public Object getButterflyByBreed(@PathVariable String breed){
        return new ResponseEntity<>(service.getButterflyByBreed(breed), HttpStatus.OK);
    }

    /**
     * Create a new Butterfly entry
     */
    @PostMapping("/new")
    public Object addNewButterfly(@RequestBody Butterfly butterfly){
        service.addNewButterfly(butterfly);
        return new ResponseEntity<>(service.getAllButterflys(), HttpStatus.CREATED);
    }


    /**
     * Update an exisiting Butterfly object
     */
    @PutMapping("/update/{butterflyId}")
    public Object updateButterfly(@PathVariable int butterflyId, @RequestBody Butterfly butterfly){
        service.updateButterfly(butterflyId, butterfly);
        return new ResponseEntity<>(service.getButterflyById(butterflyId), HttpStatus.CREATED);
    }


    /**
     * Delete a Butterfly object
     */
    @DeleteMapping("/delete/{butterflyId}")
    public Object deleteButterflyById(@PathVariable int butterflyId){
        service.deleteButterflyById(butterflyId);
        return new ResponseEntity<>(service.getAllButterflys(), HttpStatus.OK);
    }

}