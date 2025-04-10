package com.csc340.crudapi.butterfly;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Includes all MVC mappings for the Butterfly object
 */
@Controller
@RequestMapping("/butterfly")
public class ButterflyController{

    @Autowired
    private ButterflyService service;

    /**
     * Get a list of all Butterflys in the database
     * http://localhost:8080/butterfly/all
     * @return a list of Butterfly objects
     */
    @GetMapping("/all")
    public Object getAllButterflys(Model model){
        model.addAttribute("butterflyList", service.getAllButterflys());
        model.addAttribute("title", "All Butterflies");
        return "animal-list";
    }

    /**
     * Get a Butterfly by ID
     * http://localhost:8080/butterfly/butterflyId
     *
     * @param butterflyId the unique Butterfly ID
     * @return one Butterfly object
     */
    @GetMapping("/{butterflyId}")
    public Object getAButterfly(@PathVariable int butterflyId, Model model){
        model.addAttribute("butterfly", service.getButterflyById(butterflyId));
        model.addAttribute("title", "Butterfly #: " + butterflyId);
        return "animal-details";
    }

    /**
     * Get a list of Butterflys whose name contains the search name
     * http://localhost:8080/butterfly/name?search=jug
     *
     * @param search the name search
     * @return list of Butterfly objects matching the search name
     */
    @GetMapping("/name")
    public Object getButterflyByName(@RequestParam String search, Model model){
        model.addAttribute("butterflyList", service.getButterflyByNameSearch(search));
        model.addAttribute("title", "Butterflies by Name: " + search);
        return "animal-list";
    }

    /**
     * Get a list of Butterflys of a specific breed
     * http://localhost:8080/butterfly/breed/monarch
     *
     * @param breed the search key
     * @return a list of Butterflys of a specific breed
     */
    @GetMapping("/breed/{breed}")
    public Object getButterflyByBreed(@PathVariable String breed, Model model) {
        model.addAttribute("butterflyList", service.getButterflyByBreed(breed));
        model.addAttribute("title", "Butterflies by Breed: " + breed);
        return "animal-list";
    }

    /**
     * Show the view for the Butterfly form.
     *
     * @param model
     * @return the form view
     */
    @GetMapping("/createForm")
    public String showCreateForm(Model model){
        Butterfly butterfly = new Butterfly();
        model.addAttribute("butterfly", butterfly);
        model.addAttribute("title", "Create New Butterfly");
        return "animal-create";
    }

    /**
     * Create a new Butterfly entry
     * @param butterfly the new Butterfly object
     * @return the updated list of Butterflies
     */
    @PostMapping("/new")
    public Object addNewButterfly(Butterfly butterfly){
        service.addNewButterfly(butterfly);
        return "redirect:/butterfly/all";
    }


    /**
     * Show the update form.
     * @param butterflyId
     * @param model
     * @return the update form view
     */
    @GetMapping("/update/{butterflyId}")
    public String showUpdateForm(@PathVariable int butterflyId, Model model){
        model.addAttribute("butterfly", service.getButterflyById(butterflyId));
        model.addAttribute("title", "Update Butterfly");
        return "animal-update";
    }

    /**
     * Update an exisiting Butterfly object.
     * @param butterflyId
     * @param butterfly
     * @return the update Butterfly object
     */
    @PostMapping("/update/{butterflyId}")
    public Object updateButterfly(@PathVariable int butterflyId, Butterfly butterfly){
        service.updateButterfly(butterflyId, butterfly);
        return "redirect:/butterfly/" + butterflyId;
    }


    /**
     * Delete a Butterfly object
     */
    @GetMapping("/delete/{butterflyId}")
    public Object deleteButterflyById(@PathVariable int butterflyId){
        service.deleteButterflyById(butterflyId);
        return "redirect:/butterfly/all";
    }

    @GetMapping("/about")
    public Object getAbout(Model model){
        model.addAttribute("title", "About Us");
        return "animal-about";
    }

}