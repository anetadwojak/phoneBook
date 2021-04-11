package com.an.dwojak.phoneBook.service;

import com.an.dwojak.phoneBook.entity.Contact;
import com.an.dwojak.phoneBook.repository.ContactRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ContactServiceImpl implements ContactService {

    @Autowired
    private ContactRepository contactRepository;

    @Override
    public List<Contact> findAll() {

        return contactRepository.findAll(Sort.by(Sort.Direction.ASC, "surname"));
    }

    @Override
    public Contact findById(int theId) {
        Optional<Contact> result = contactRepository.findById(theId);

        Contact contact;

        if(result.isPresent()){
            contact=result.get();
        }else{
            throw new RuntimeException("Nie znaleziono kontaktu o podanym Id: " +theId);
        }

        return contact;
    }

    @Override
    public void save(Contact contact) {
        contactRepository.save(contact);
    }

    @Override
    public void deleteById(int theId) {
        contactRepository.deleteById(theId);
    }

    @Override
    public Contact findContactBySurname(String surname) {

        return contactRepository.findContactBySurname(surname);
    }
}
