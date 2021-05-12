package com.workshop.backendservice

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class BackendServiceApplication

fun main(args: Array<String>) {
	runApplication<BackendServiceApplication>(*args)
}
