package com.an.dwojak.phoneBook.repository;

import com.an.dwojak.phoneBook.entity.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ContactRepository extends JpaRepository <Contact, Integer> {

    @Query("select c from Contact c where c.surname = :searchedSurname")
    Contact findContactBySurname(@Param("searchedSurname") String surname);
}
