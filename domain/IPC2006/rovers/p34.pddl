(define (problem grounded-STRIPS-ROVERPROB2006)
(:domain grounded-STRIPS-ROVER)
(:init
(EMPTY-ROVER11STORE)
(AVAILABLE-ROVER11)
(AT-ROVER11-WAYPOINT57)
(EMPTY-ROVER10STORE)
(AVAILABLE-ROVER10)
(AT-ROVER10-WAYPOINT17)
(EMPTY-ROVER9STORE)
(AVAILABLE-ROVER9)
(AT-ROVER9-WAYPOINT8)
(EMPTY-ROVER8STORE)
(AVAILABLE-ROVER8)
(AT-ROVER8-WAYPOINT29)
(EMPTY-ROVER7STORE)
(AVAILABLE-ROVER7)
(AT-ROVER7-WAYPOINT17)
(EMPTY-ROVER6STORE)
(AVAILABLE-ROVER6)
(AT-ROVER6-WAYPOINT8)
(EMPTY-ROVER5STORE)
(AVAILABLE-ROVER5)
(AT-ROVER5-WAYPOINT52)
(EMPTY-ROVER4STORE)
(AVAILABLE-ROVER4)
(AT-ROVER4-WAYPOINT46)
(EMPTY-ROVER3STORE)
(AVAILABLE-ROVER3)
(AT-ROVER3-WAYPOINT33)
(EMPTY-ROVER2STORE)
(AVAILABLE-ROVER2)
(AT-ROVER2-WAYPOINT63)
(EMPTY-ROVER1STORE)
(AVAILABLE-ROVER1)
(AT-ROVER1-WAYPOINT55)
(EMPTY-ROVER0STORE)
(AVAILABLE-ROVER0)
(AT-ROVER0-WAYPOINT13)
(CHANNEL_FREE-GENERAL)
(AT_ROCK_SAMPLE-WAYPOINT68)
(AT_ROCK_SAMPLE-WAYPOINT67)
(AT_SOIL_SAMPLE-WAYPOINT67)
(AT_SOIL_SAMPLE-WAYPOINT66)
(AT_ROCK_SAMPLE-WAYPOINT65)
(AT_SOIL_SAMPLE-WAYPOINT65)
(AT_ROCK_SAMPLE-WAYPOINT63)
(AT_ROCK_SAMPLE-WAYPOINT60)
(AT_SOIL_SAMPLE-WAYPOINT59)
(AT_SOIL_SAMPLE-WAYPOINT58)
(AT_SOIL_SAMPLE-WAYPOINT57)
(AT_SOIL_SAMPLE-WAYPOINT54)
(AT_ROCK_SAMPLE-WAYPOINT53)
(AT_SOIL_SAMPLE-WAYPOINT53)
(AT_ROCK_SAMPLE-WAYPOINT52)
(AT_SOIL_SAMPLE-WAYPOINT52)
(AT_SOIL_SAMPLE-WAYPOINT51)
(AT_SOIL_SAMPLE-WAYPOINT50)
(AT_SOIL_SAMPLE-WAYPOINT49)
(AT_ROCK_SAMPLE-WAYPOINT48)
(AT_ROCK_SAMPLE-WAYPOINT47)
(AT_SOIL_SAMPLE-WAYPOINT47)
(AT_ROCK_SAMPLE-WAYPOINT46)
(AT_SOIL_SAMPLE-WAYPOINT45)
(AT_SOIL_SAMPLE-WAYPOINT43)
(AT_ROCK_SAMPLE-WAYPOINT42)
(AT_SOIL_SAMPLE-WAYPOINT42)
(AT_ROCK_SAMPLE-WAYPOINT41)
(AT_ROCK_SAMPLE-WAYPOINT40)
(AT_SOIL_SAMPLE-WAYPOINT40)
(AT_ROCK_SAMPLE-WAYPOINT39)
(AT_SOIL_SAMPLE-WAYPOINT39)
(AT_ROCK_SAMPLE-WAYPOINT38)
(AT_SOIL_SAMPLE-WAYPOINT38)
(AT_SOIL_SAMPLE-WAYPOINT37)
(AT_SOIL_SAMPLE-WAYPOINT36)
(AT_SOIL_SAMPLE-WAYPOINT35)
(AT_ROCK_SAMPLE-WAYPOINT34)
(AT_SOIL_SAMPLE-WAYPOINT33)
(AT_ROCK_SAMPLE-WAYPOINT32)
(AT_SOIL_SAMPLE-WAYPOINT32)
(AT_ROCK_SAMPLE-WAYPOINT31)
(AT_SOIL_SAMPLE-WAYPOINT29)
(AT_ROCK_SAMPLE-WAYPOINT27)
(AT_SOIL_SAMPLE-WAYPOINT27)
(AT_ROCK_SAMPLE-WAYPOINT25)
(AT_SOIL_SAMPLE-WAYPOINT24)
(AT_ROCK_SAMPLE-WAYPOINT22)
(AT_SOIL_SAMPLE-WAYPOINT22)
(AT_ROCK_SAMPLE-WAYPOINT21)
(AT_SOIL_SAMPLE-WAYPOINT21)
(AT_SOIL_SAMPLE-WAYPOINT20)
(AT_ROCK_SAMPLE-WAYPOINT18)
(AT_SOIL_SAMPLE-WAYPOINT18)
(AT_ROCK_SAMPLE-WAYPOINT17)
(AT_SOIL_SAMPLE-WAYPOINT17)
(AT_ROCK_SAMPLE-WAYPOINT16)
(AT_SOIL_SAMPLE-WAYPOINT16)
(AT_ROCK_SAMPLE-WAYPOINT15)
(AT_SOIL_SAMPLE-WAYPOINT12)
(AT_ROCK_SAMPLE-WAYPOINT11)
(AT_SOIL_SAMPLE-WAYPOINT11)
(AT_ROCK_SAMPLE-WAYPOINT10)
(AT_SOIL_SAMPLE-WAYPOINT10)
(AT_ROCK_SAMPLE-WAYPOINT9)
(AT_SOIL_SAMPLE-WAYPOINT9)
(AT_ROCK_SAMPLE-WAYPOINT8)
(AT_SOIL_SAMPLE-WAYPOINT8)
(AT_ROCK_SAMPLE-WAYPOINT7)
(AT_ROCK_SAMPLE-WAYPOINT6)
(AT_SOIL_SAMPLE-WAYPOINT4)
(AT_SOIL_SAMPLE-WAYPOINT3)
(AT_ROCK_SAMPLE-WAYPOINT2)
(AT_SOIL_SAMPLE-WAYPOINT2)
(AT_ROCK_SAMPLE-WAYPOINT0)
(AT_SOIL_SAMPLE-WAYPOINT0)
)
(:goal
(and
(COMMUNICATED_IMAGE_DATA-OBJECTIVE5-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE7-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE7-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE8-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE0-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE8-LOW_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE1-HIGH_RES)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE5-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE8-COLOUR)
(COMMUNICATED_IMAGE_DATA-OBJECTIVE4-HIGH_RES)
(COMMUNICATED_ROCK_DATA-WAYPOINT11)
(COMMUNICATED_ROCK_DATA-WAYPOINT47)
(COMMUNICATED_ROCK_DATA-WAYPOINT34)
(COMMUNICATED_ROCK_DATA-WAYPOINT60)
(COMMUNICATED_ROCK_DATA-WAYPOINT46)
(COMMUNICATED_ROCK_DATA-WAYPOINT2)
(COMMUNICATED_ROCK_DATA-WAYPOINT53)
(COMMUNICATED_ROCK_DATA-WAYPOINT42)
(COMMUNICATED_SOIL_DATA-WAYPOINT47)
(COMMUNICATED_SOIL_DATA-WAYPOINT12)
(COMMUNICATED_SOIL_DATA-WAYPOINT43)
(COMMUNICATED_SOIL_DATA-WAYPOINT49)
(COMMUNICATED_SOIL_DATA-WAYPOINT17)
(COMMUNICATED_SOIL_DATA-WAYPOINT59)
(COMMUNICATED_SOIL_DATA-WAYPOINT67)
(COMMUNICATED_SOIL_DATA-WAYPOINT24)
(COMMUNICATED_SOIL_DATA-WAYPOINT51)
(COMMUNICATED_SOIL_DATA-WAYPOINT54)
(COMMUNICATED_SOIL_DATA-WAYPOINT2)
(COMMUNICATED_SOIL_DATA-WAYPOINT42)
(COMMUNICATED_SOIL_DATA-WAYPOINT53)
(COMMUNICATED_SOIL_DATA-WAYPOINT45)
)
)
)
