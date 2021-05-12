package com.workshop.backendservice

import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import java.util.concurrent.atomic.AtomicLong


@RestController
class HomeController {
    private val counter = AtomicLong()

    @CrossOrigin(origins = ["*"], allowedHeaders = ["*"])
    @GetMapping("/hello")
    fun hello(): String {
        return "hello ${counter.incrementAndGet()}"
    }
}