package com.mzps.web.admin;

import com.mzps.model.Tourney;
import com.mzps.util.CustomErrorType;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {

    public static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    TourneyService tourneyService; //Service which will do all data retrieval/manipulation work

    // -------------------Retrieve All Tourneys---------------------------------------------
    @GetMapping(value = "/")
    public ResponseEntity<List<Tourney>> listAllMatchResults() {
        List<Tourney> tourneys = tourneyService.findAllTourneys();

        if (tourneys.isEmpty()) {
            return new ResponseEntity(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(tourneys, HttpStatus.OK);
    }

    // -------------------Create a Tourney-------------------------------------------

    @PostMapping(value = "/")
    public ResponseEntity<?> createTourney(@RequestBody Tourney tourney, UriComponentsBuilder ucBuilder) {
        logger.info("Creating Tourney : {}", tourney);

        if (tourneyService.tourneyExists(tourney)) {
            logger.error("Unable to create. A Tourney with name {} already exist", tourney.getName());
            return new ResponseEntity(new CustomErrorType("Unable to create. A Tourney with name " +
                    tourney.getName() + " already exist."),HttpStatus.CONFLICT);
        }
        tourneyService.saveTourney(tourney);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/{id}").buildAndExpand(tourney.getId()).toUri());
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
}
