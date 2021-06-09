package heycar.integrations.workshop.backendservice

import org.springframework.web.bind.annotation.CrossOrigin
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController
import java.util.concurrent.atomic.AtomicLong

@RestController
class CounterController {

    private var count: AtomicLong = AtomicLong()

    @CrossOrigin
    @GetMapping("/count")
    fun getCount(): String {
        return "count: ${count.incrementAndGet()}"
    }
}