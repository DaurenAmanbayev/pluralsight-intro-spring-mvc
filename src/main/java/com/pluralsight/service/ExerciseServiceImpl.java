package com.pluralsight.service;

import com.pluralsight.model.Activity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by daniel.arlitt on 1/27/15.
 */
@Service("exerciseService")
public class ExerciseServiceImpl implements ExerciseService {

  @Override
  public List<Activity> findAllActivities() {
    List<Activity> activities = new ArrayList<>();

    Activity run = new Activity();
    run.setDesc("Run");
    activities.add(run);

    Activity bike = new Activity();
    bike.setDesc("Bike");
    activities.add(bike);

    Activity swim = new Activity();
    swim.setDesc("Swim");
    activities.add(swim);

    return activities;
  }

}
