package com.an.dwojak.phoneBook.controller;

import com.an.dwojak.phoneBook.entity.Contact;
import com.an.dwojak.phoneBook.service.ContactService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Controller
@Validated
@RequestMapping("/")
public class ContactController {

    private ContactService contactService;

    public ContactController (ContactService contactService){
        this.contactService=contactService;
    }

    @GetMapping("/home")
    public String showHomePage(){

        return "home";
    }

    @GetMapping("/list")
    public String listOfContacts(Model theModel){

        List<Contact> listOfContacts = contactService.findAll();
        theModel.addAttribute("contacts", listOfContacts);

        return "contacts";
    }

    @GetMapping("/newContact")
    public String addContact(Model theModel){
        Contact contact = new Contact();
        theModel.addAttribute("contact", contact);

        return "contact-form";
    }

    @PostMapping("/save")
    public String saveContact(@Valid @ModelAttribute("contact") Contact contact, BindingResult resultOfValidation){

        if (resultOfValidation.hasErrors()){

            return "kontakt-formularz";
        }else{
            contactService.save(contact);

            return "redirect:/list";
        }
    }

    @GetMapping("/update")
    public String updateContact(@RequestParam("contactID") int theID, Model theModel){
        Contact contact = contactService.findById(theID);
        theModel.addAttribute("contact", contact);

        return "contact-form";
    }

    @GetMapping("/delete")
    public String deleteContact(@RequestParam("contactID") int theID){
        contactService.deleteById(theID);

        return "redirect:/list";
    }

    @PostMapping("/search")
    public String findContact(@RequestParam("surname") String searchedSurname, Model theModel){
        theModel.addAttribute("resultOfsearching", contactService.findContactBySurname(searchedSurname));

        return "searched-contact";
    }






}
