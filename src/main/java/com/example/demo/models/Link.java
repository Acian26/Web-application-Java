package com.example.demo.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;

@Entity
@Table(name = "links")
@Data
@AllArgsConstructor
@NoArgsConstructor

public class Link {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    @Column(name = "path")
    private String name;
    @Column(name = "originalFilePath")
    private String originalFileName;
    @Column(name = "contentType")
    private String contentType;
    @Column(name = "isPreviewLink")
    private boolean isPreviewLink;
    @Lob
    private byte[] bytes;
    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
    private Product product;
}
