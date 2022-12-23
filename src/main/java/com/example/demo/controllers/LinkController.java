package com.example.demo.controllers;

import com.example.demo.models.Link;
import com.example.demo.repositories.LinkRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;

@RestController
@RequiredArgsConstructor
public class LinkController {
    private final LinkRepository linkRepository;

    @GetMapping("/links/{id}")
    private ResponseEntity<?> getLinkById(@PathVariable Long id) {
        Link link = linkRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .header("fileName", link.getOriginalFileName())
                .contentType(MediaType.valueOf(link.getContentType()))
                .body(new InputStreamResource(new ByteArrayInputStream(link.getBytes())));
    }
}
