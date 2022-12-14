(define (problem grounded-STRIPS-ROVERPROB4135)
(:domain grounded-STRIPS-ROVER)
(:init
(EMPTY-ROVER3STORE)
(AVAILABLE-ROVER3)
(AT-ROVER3-WAYPOINT4)
(EMPTY-ROVER2STORE)
(AVAILABLE-ROVER2)
(AT-ROVER2-WAYPOINT6)
(AVAILABLE-ROVER1)
(AT-ROVER1-WAYPOINT6)
(EMPTY-ROVER0STORE)
(AVAILABLE-ROVER0)
(AT-ROVER0-WAYPOINT4)
(CHANNEL_FREE-GENERAL)
(AT_ROCK_SAMPLE-WAYPOINT10)
(AT_SOIL_SAMPLE-WAYPOINT10)
(AT_ROCK_SAMPLE-WAYPOINT9)
(AT_ROCK_SAMPLE-WAYPOINT8)
(AT_SOIL_SAMPLE-WAYPOINT8)
(AT_SOIL_SAMPLE-WAYPOINT7)
(AT_SOIL_SAMPLE-WAYPOINT5)
(AT_SOIL_SAMPLE-WAYPOINT4)
(AT_ROCK_SAMPLE-WAYPOINT2)
(AT_SOIL_SAMPLE-WAYPOINT2)
(AT_ROCK_SAMPLE-WAYPOINT1)
(AT_SOIL_SAMPLE-WAYPOINT0)
)
(:goal
(and
(COMMUNICATED_IMAGE_DATA-OBJECTIVE1-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE1-LOW_RES)
(COMMUNICATED_ROCK_DATA-WAYPOINT8)
(COMMUNICATED_ROCK_DATA-WAYPOINT1)
(COMMUNICATED_ROCK_DATA-WAYPOINT2)
(COMMUNICATED_SOIL_DATA-WAYPOINT0)
(COMMUNICATED_SOIL_DATA-WAYPOINT10)
(COMMUNICATED_SOIL_DATA-WAYPOINT8)
(COMMUNICATED_SOIL_DATA-WAYPOINT2)
(COMMUNICATED_SOIL_DATA-WAYPOINT5)
)
)
)
