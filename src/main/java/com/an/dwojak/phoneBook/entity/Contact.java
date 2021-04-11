package com.an.dwojak.phoneBook.entity;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name="kontakt")
public class Contact {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="imie")
    @NotNull
    private String name;

    @Column(name="nazwisko")
    @NotNull
    private String surname;


    @Column(name="nr_tel")
    @NotNull
    @Size(min = 9, max = 9)
    private String phoneNumber;
}
