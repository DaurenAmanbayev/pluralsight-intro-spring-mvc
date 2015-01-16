package com.pluralsight.controller;

import com.pluralsight.model.Exercise;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by daniel.arlitt on 1/16/15.
 */
@Controller
public class MinutesController {

  @RequestMapping(value = "/addMinutes")
  public String addMinutes(@ModelAttribute("exercise") Exercise exercise) {
    System.out.println("exercise: " + exercise.getMinutes());
    return "addMinutes";
  }

}
