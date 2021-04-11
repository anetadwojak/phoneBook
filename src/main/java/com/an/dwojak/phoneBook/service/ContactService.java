package com.an.dwojak.phoneBook.service;


import com.an.dwojak.phoneBook.entity.Contact;

import java.util.List;

public interface ContactService {

    public List<Contact> findAll();
    public Contact findById(int theId);
    public void save(Contact contact);
    public void deleteById(int theId);
    public Contact findContactBySurname(String surname);
}
