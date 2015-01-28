package com.pluralsight.service;

import com.pluralsight.model.Activity;

import java.util.List;

/**
 * Created by daniel.arlitt on 1/27/15.
 */
public interface ExerciseService {
  List<Activity> findAllActivities();
}
