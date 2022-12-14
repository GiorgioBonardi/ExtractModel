(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	satellite1 - satellite
	instrument1 - instrument
	instrument2 - instrument
	satellite2 - satellite
	instrument3 - instrument
	satellite3 - satellite
	instrument4 - instrument
	instrument5 - instrument
	satellite4 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite5 - satellite
	instrument8 - instrument
	satellite6 - satellite
	instrument9 - instrument
	instrument10 - instrument
	satellite7 - satellite
	instrument11 - instrument
	instrument12 - instrument
	satellite8 - satellite
	instrument13 - instrument
	satellite9 - satellite
	instrument14 - instrument
	infrared12 - mode
	thermograph2 - mode
	thermograph8 - mode
	spectrograph11 - mode
	infrared10 - mode
	thermograph14 - mode
	spectrograph1 - mode
	image13 - mode
	thermograph3 - mode
	image4 - mode
	infrared5 - mode
	image7 - mode
	spectrograph9 - mode
	spectrograph6 - mode
	thermograph0 - mode
	GroundStation0 - direction
	Star1 - direction
	Phenomenon2 - direction
	Planet3 - direction
	Planet4 - direction
	Star5 - direction
	Phenomenon6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Star10 - direction
	Phenomenon11 - direction
	Star12 - direction
	Phenomenon13 - direction
	Phenomenon14 - direction
	Star15 - direction
	Planet16 - direction
	Phenomenon17 - direction
	Star18 - direction
	Star19 - direction
	Phenomenon20 - direction
	Star21 - direction
	Star22 - direction
	Planet23 - direction
	Phenomenon24 - direction
	Planet25 - direction
	Planet26 - direction
	Phenomenon27 - direction
	Phenomenon28 - direction
	Star29 - direction
	Phenomenon30 - direction
	Planet31 - direction
	Star32 - direction
	Star33 - direction
	Planet34 - direction
	Phenomenon35 - direction
	Planet36 - direction
	Star37 - direction
	Planet38 - direction
	Star39 - direction
	Phenomenon40 - direction
	Planet41 - direction
	Phenomenon42 - direction
	Planet43 - direction
	Phenomenon44 - direction
	Star45 - direction
	Phenomenon46 - direction
	Star47 - direction
	Phenomenon48 - direction
	Star49 - direction
	Star50 - direction
	Phenomenon51 - direction
	Phenomenon52 - direction
	Star53 - direction
	Star54 - direction
	Star55 - direction
	Star56 - direction
	Phenomenon57 - direction
	Phenomenon58 - direction
	Planet59 - direction
	Planet60 - direction
	Planet61 - direction
	Star62 - direction
	Star63 - direction
	Planet64 - direction
	Star65 - direction
	Planet66 - direction
	Star67 - direction
	Planet68 - direction
	Planet69 - direction
	Planet70 - direction
	Star71 - direction
	Star72 - direction
	Phenomenon73 - direction
	Star74 - direction
	Planet75 - direction
	Star76 - direction
	Phenomenon77 - direction
	Star78 - direction
	Phenomenon79 - direction
	Star80 - direction
	Phenomenon81 - direction
	Planet82 - direction
	Planet83 - direction
	Star84 - direction
	Planet85 - direction
	Star86 - direction
	Planet87 - direction
	Planet88 - direction
	Phenomenon89 - direction
	Planet90 - direction
	Phenomenon91 - direction
	Phenomenon92 - direction
	Phenomenon93 - direction
	Star94 - direction
	Planet95 - direction
	Phenomenon96 - direction
	Phenomenon97 - direction
	Planet98 - direction
	Star99 - direction
	Phenomenon100 - direction
	Phenomenon101 - direction
	Planet102 - direction
	Phenomenon103 - direction
	Star104 - direction
	Planet105 - direction
	Star106 - direction
	Phenomenon107 - direction
	Planet108 - direction
	Star109 - direction
	Phenomenon110 - direction
	Planet111 - direction
	Star112 - direction
	Star113 - direction
	Phenomenon114 - direction
	Planet115 - direction
	Star116 - direction
	Phenomenon117 - direction
	Planet118 - direction
	Phenomenon119 - direction
	Star120 - direction
	Phenomenon121 - direction
	Planet122 - direction
	Planet123 - direction
	Planet124 - direction
	Star125 - direction
	Phenomenon126 - direction
	Phenomenon127 - direction
	Phenomenon128 - direction
	Planet129 - direction
	Star130 - direction
	Planet131 - direction
)
(:init
	(supports instrument0 spectrograph11)
	(calibration_target instrument0 Star1)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star74)
	(supports instrument1 image13)
	(calibration_target instrument1 Star1)
	(supports instrument2 thermograph2)
	(supports instrument2 spectrograph1)
	(calibration_target instrument2 Star1)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet115)
	(supports instrument3 thermograph8)
	(supports instrument3 thermograph3)
	(supports instrument3 thermograph2)
	(calibration_target instrument3 GroundStation0)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Phenomenon35)
	(supports instrument4 spectrograph11)
	(supports instrument4 thermograph14)
	(calibration_target instrument4 Star1)
	(supports instrument5 infrared5)
	(supports instrument5 thermograph3)
	(calibration_target instrument5 Star1)
	(on_board instrument4 satellite3)
	(on_board instrument5 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Star71)
	(supports instrument6 infrared10)
	(calibration_target instrument6 GroundStation0)
	(supports instrument7 thermograph14)
	(calibration_target instrument7 GroundStation0)
	(on_board instrument6 satellite4)
	(on_board instrument7 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Star67)
	(supports instrument8 image13)
	(calibration_target instrument8 GroundStation0)
	(on_board instrument8 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Star94)
	(supports instrument9 infrared5)
	(supports instrument9 thermograph14)
	(supports instrument9 spectrograph9)
	(calibration_target instrument9 Star1)
	(supports instrument10 image13)
	(supports instrument10 spectrograph1)
	(supports instrument10 spectrograph9)
	(calibration_target instrument10 Star1)
	(on_board instrument9 satellite6)
	(on_board instrument10 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Planet122)
	(supports instrument11 infrared5)
	(supports instrument11 image4)
	(supports instrument11 thermograph3)
	(calibration_target instrument11 GroundStation0)
	(supports instrument12 spectrograph6)
	(calibration_target instrument12 Star1)
	(on_board instrument11 satellite7)
	(on_board instrument12 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Star84)
	(supports instrument13 spectrograph9)
	(supports instrument13 image7)
	(calibration_target instrument13 GroundStation0)
	(on_board instrument13 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Star62)
	(supports instrument14 thermograph0)
	(supports instrument14 spectrograph6)
	(calibration_target instrument14 Star1)
	(on_board instrument14 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Planet102)
)
(:goal (and
	(pointing satellite3 Phenomenon100)
	(pointing satellite5 Planet123)
	(have_image Phenomenon2 infrared5)
	(have_image Phenomenon2 thermograph8)
	(have_image Phenomenon2 image4)
	(have_image Phenomenon2 image13)
	(have_image Phenomenon2 spectrograph1)
	(have_image Planet3 spectrograph9)
	(have_image Planet4 spectrograph11)
	(have_image Star5 infrared5)
	(have_image Star5 thermograph14)
	(have_image Star5 spectrograph11)
	(have_image Phenomenon6 image7)
	(have_image Phenomenon6 image13)
	(have_image Phenomenon6 spectrograph6)
	(have_image Star7 thermograph2)
	(have_image Star7 spectrograph11)
	(have_image Star7 spectrograph1)
	(have_image Star7 spectrograph9)
	(have_image Star7 infrared10)
	(have_image Phenomenon8 infrared5)
	(have_image Phenomenon8 infrared10)
	(have_image Phenomenon8 spectrograph9)
	(have_image Phenomenon8 spectrograph11)
	(have_image Planet9 image13)
	(have_image Planet9 thermograph3)
	(have_image Planet9 thermograph2)
	(have_image Planet9 image4)
	(have_image Star10 spectrograph9)
	(have_image Phenomenon11 image7)
	(have_image Phenomenon11 image13)
	(have_image Phenomenon11 thermograph8)
	(have_image Phenomenon11 thermograph3)
	(have_image Phenomenon11 spectrograph1)
	(have_image Star12 spectrograph6)
	(have_image Phenomenon13 infrared10)
	(have_image Phenomenon13 thermograph2)
	(have_image Phenomenon14 image13)
	(have_image Phenomenon14 spectrograph6)
	(have_image Phenomenon14 spectrograph9)
	(have_image Phenomenon14 thermograph0)
	(have_image Phenomenon14 thermograph3)
	(have_image Star15 spectrograph9)
	(have_image Planet16 thermograph8)
	(have_image Planet16 spectrograph9)
	(have_image Planet16 image4)
	(have_image Planet16 spectrograph6)
	(have_image Phenomenon17 spectrograph9)
	(have_image Phenomenon17 spectrograph6)
	(have_image Star18 spectrograph11)
	(have_image Star18 infrared5)
	(have_image Star18 spectrograph9)
	(have_image Star18 image7)
	(have_image Star18 thermograph3)
	(have_image Star19 thermograph14)
	(have_image Star19 image7)
	(have_image Star19 infrared5)
	(have_image Phenomenon20 image4)
	(have_image Phenomenon20 infrared10)
	(have_image Phenomenon20 thermograph14)
	(have_image Star22 thermograph0)
	(have_image Star22 infrared10)
	(have_image Star22 thermograph14)
	(have_image Planet23 infrared5)
	(have_image Planet23 spectrograph9)
	(have_image Phenomenon24 spectrograph9)
	(have_image Phenomenon24 thermograph14)
	(have_image Planet25 thermograph14)
	(have_image Planet25 spectrograph9)
	(have_image Planet25 thermograph3)
	(have_image Planet26 thermograph0)
	(have_image Planet26 spectrograph11)
	(have_image Planet26 spectrograph1)
	(have_image Phenomenon27 thermograph8)
	(have_image Phenomenon27 image4)
	(have_image Star29 spectrograph6)
	(have_image Star29 spectrograph9)
	(have_image Star29 image4)
	(have_image Planet31 infrared10)
	(have_image Planet31 thermograph8)
	(have_image Planet31 image7)
	(have_image Planet31 thermograph2)
	(have_image Planet31 thermograph0)
	(have_image Star32 spectrograph6)
	(have_image Star32 spectrograph11)
	(have_image Star32 image7)
	(have_image Star32 thermograph8)
	(have_image Star32 infrared5)
	(have_image Star33 spectrograph6)
	(have_image Star33 thermograph3)
	(have_image Star33 image4)
	(have_image Planet34 thermograph14)
	(have_image Planet34 image4)
	(have_image Planet34 image7)
	(have_image Planet34 spectrograph1)
	(have_image Planet34 spectrograph9)
	(have_image Phenomenon35 thermograph3)
	(have_image Phenomenon35 spectrograph9)
	(have_image Planet36 thermograph3)
	(have_image Star37 thermograph0)
	(have_image Star37 spectrograph9)
	(have_image Star37 image7)
	(have_image Planet38 thermograph3)
	(have_image Planet38 thermograph0)
	(have_image Planet38 image13)
	(have_image Star39 infrared5)
	(have_image Phenomenon40 infrared10)
	(have_image Phenomenon40 infrared5)
	(have_image Phenomenon40 image7)
	(have_image Phenomenon40 thermograph8)
	(have_image Planet41 image4)
	(have_image Planet41 infrared10)
	(have_image Planet41 thermograph14)
	(have_image Planet41 image7)
	(have_image Phenomenon42 image7)
	(have_image Planet43 thermograph2)
	(have_image Planet43 image4)
	(have_image Planet43 image7)
	(have_image Planet43 thermograph8)
	(have_image Star45 thermograph2)
	(have_image Star45 thermograph8)
	(have_image Star45 image13)
	(have_image Star45 thermograph3)
	(have_image Star45 image7)
	(have_image Star47 image7)
	(have_image Star47 image13)
	(have_image Star47 spectrograph1)
	(have_image Star47 image4)
	(have_image Star47 thermograph14)
	(have_image Phenomenon48 spectrograph9)
	(have_image Phenomenon48 thermograph8)
	(have_image Star49 spectrograph9)
	(have_image Star49 spectrograph11)
	(have_image Star50 spectrograph6)
	(have_image Star50 spectrograph11)
	(have_image Star50 thermograph8)
	(have_image Star50 infrared10)
	(have_image Phenomenon52 infrared5)
	(have_image Star53 spectrograph9)
	(have_image Star53 thermograph14)
	(have_image Star53 thermograph3)
	(have_image Star54 spectrograph6)
	(have_image Star54 thermograph8)
	(have_image Star54 image7)
	(have_image Star54 thermograph0)
	(have_image Star55 thermograph2)
	(have_image Star55 image13)
	(have_image Star55 spectrograph11)
	(have_image Phenomenon57 spectrograph6)
	(have_image Phenomenon57 thermograph14)
	(have_image Phenomenon58 thermograph2)
	(have_image Phenomenon58 spectrograph11)
	(have_image Planet59 image13)
	(have_image Planet59 infrared10)
	(have_image Planet59 spectrograph9)
	(have_image Planet59 thermograph2)
	(have_image Planet60 spectrograph1)
	(have_image Planet60 thermograph2)
	(have_image Planet60 spectrograph9)
	(have_image Planet61 image4)
	(have_image Star62 spectrograph6)
	(have_image Star62 spectrograph9)
	(have_image Star62 spectrograph1)
	(have_image Star63 infrared5)
	(have_image Star63 spectrograph1)
	(have_image Star63 image4)
	(have_image Star63 spectrograph6)
	(have_image Star63 image13)
	(have_image Planet64 spectrograph9)
	(have_image Star67 spectrograph11)
	(have_image Star67 infrared10)
	(have_image Star67 spectrograph1)
	(have_image Star67 spectrograph9)
	(have_image Planet68 infrared5)
	(have_image Planet69 spectrograph11)
	(have_image Planet69 infrared5)
	(have_image Planet69 spectrograph9)
	(have_image Star72 spectrograph1)
	(have_image Star72 spectrograph11)
	(have_image Star72 image4)
	(have_image Star74 thermograph0)
	(have_image Star74 thermograph3)
	(have_image Star74 thermograph14)
	(have_image Planet75 thermograph14)
	(have_image Planet75 spectrograph1)
	(have_image Planet75 infrared5)
	(have_image Star76 thermograph14)
	(have_image Star76 thermograph8)
	(have_image Star76 image7)
	(have_image Star76 spectrograph1)
	(have_image Star76 spectrograph6)
	(have_image Phenomenon77 thermograph2)
	(have_image Phenomenon77 infrared10)
	(have_image Phenomenon77 spectrograph11)
	(have_image Phenomenon77 thermograph0)
	(have_image Phenomenon77 thermograph8)
	(have_image Star78 spectrograph1)
	(have_image Star78 spectrograph11)
	(have_image Star78 infrared10)
	(have_image Star78 infrared5)
	(have_image Star78 thermograph2)
	(have_image Phenomenon79 image4)
	(have_image Phenomenon79 spectrograph1)
	(have_image Phenomenon79 thermograph2)
	(have_image Star80 thermograph0)
	(have_image Star80 thermograph14)
	(have_image Phenomenon81 infrared5)
	(have_image Planet83 spectrograph9)
	(have_image Planet83 image4)
	(have_image Planet83 image7)
	(have_image Planet83 infrared10)
	(have_image Planet83 spectrograph6)
	(have_image Star84 infrared5)
	(have_image Star84 spectrograph6)
	(have_image Star84 spectrograph1)
	(have_image Star84 image4)
	(have_image Star84 thermograph0)
	(have_image Planet85 image13)
	(have_image Star86 infrared10)
	(have_image Star86 spectrograph11)
	(have_image Star86 image7)
	(have_image Star86 thermograph0)
	(have_image Planet88 thermograph0)
	(have_image Planet88 image7)
	(have_image Phenomenon89 thermograph14)
	(have_image Phenomenon89 infrared10)
	(have_image Phenomenon89 image4)
	(have_image Planet90 thermograph3)
	(have_image Planet90 thermograph8)
	(have_image Phenomenon91 infrared10)
	(have_image Phenomenon91 image13)
	(have_image Phenomenon91 thermograph8)
	(have_image Phenomenon91 spectrograph6)
	(have_image Phenomenon92 spectrograph9)
	(have_image Phenomenon92 thermograph0)
	(have_image Phenomenon93 image7)
	(have_image Star94 image13)
	(have_image Star94 spectrograph11)
	(have_image Planet95 thermograph2)
	(have_image Planet95 image4)
	(have_image Planet95 thermograph14)
	(have_image Planet95 spectrograph9)
	(have_image Phenomenon96 image13)
	(have_image Phenomenon96 spectrograph9)
	(have_image Phenomenon97 image7)
	(have_image Planet98 spectrograph9)
	(have_image Planet98 image7)
	(have_image Star99 thermograph0)
	(have_image Star99 image4)
	(have_image Star99 thermograph14)
	(have_image Phenomenon100 thermograph8)
	(have_image Phenomenon100 thermograph2)
	(have_image Phenomenon101 spectrograph11)
	(have_image Phenomenon101 image7)
	(have_image Phenomenon101 infrared5)
	(have_image Phenomenon101 image4)
	(have_image Planet102 infrared10)
	(have_image Phenomenon103 thermograph3)
	(have_image Phenomenon103 image4)
	(have_image Phenomenon103 thermograph2)
	(have_image Phenomenon103 spectrograph6)
	(have_image Planet105 spectrograph11)
	(have_image Planet105 image13)
	(have_image Planet105 infrared5)
	(have_image Planet105 thermograph8)
	(have_image Planet105 image7)
	(have_image Star106 thermograph8)
	(have_image Star106 image7)
	(have_image Star106 thermograph3)
	(have_image Star106 spectrograph6)
	(have_image Star106 spectrograph9)
	(have_image Phenomenon107 spectrograph1)
	(have_image Phenomenon107 thermograph2)
	(have_image Planet108 spectrograph11)
	(have_image Planet108 infrared5)
	(have_image Planet108 infrared10)
	(have_image Planet108 thermograph3)
	(have_image Star109 thermograph8)
	(have_image Star109 image4)
	(have_image Star109 thermograph14)
	(have_image Star109 infrared10)
	(have_image Star109 spectrograph6)
	(have_image Phenomenon110 spectrograph11)
	(have_image Planet111 thermograph3)
	(have_image Planet111 image13)
	(have_image Planet111 thermograph0)
	(have_image Planet111 thermograph14)
	(have_image Planet111 thermograph2)
	(have_image Star113 thermograph8)
	(have_image Star113 infrared5)
	(have_image Star113 infrared10)
	(have_image Star113 thermograph0)
	(have_image Phenomenon114 image7)
	(have_image Phenomenon114 spectrograph6)
	(have_image Planet115 thermograph8)
	(have_image Planet115 thermograph2)
	(have_image Planet115 image13)
	(have_image Star116 image7)
	(have_image Star116 thermograph3)
	(have_image Star116 infrared5)
	(have_image Star116 thermograph14)
	(have_image Phenomenon117 spectrograph6)
	(have_image Planet118 thermograph2)
	(have_image Phenomenon119 spectrograph9)
	(have_image Phenomenon119 spectrograph1)
	(have_image Phenomenon119 spectrograph6)
	(have_image Phenomenon119 image7)
	(have_image Star120 spectrograph11)
	(have_image Star120 thermograph8)
	(have_image Star120 thermograph3)
	(have_image Planet122 spectrograph11)
	(have_image Planet122 infrared5)
	(have_image Planet122 image7)
	(have_image Planet124 spectrograph11)
	(have_image Planet124 image7)
	(have_image Planet124 image4)
	(have_image Star125 spectrograph11)
	(have_image Star125 thermograph14)
	(have_image Star125 spectrograph9)
	(have_image Phenomenon126 thermograph8)
	(have_image Phenomenon126 spectrograph1)
	(have_image Phenomenon126 thermograph0)
	(have_image Phenomenon127 spectrograph11)
	(have_image Phenomenon127 thermograph8)
	(have_image Phenomenon127 infrared10)
	(have_image Phenomenon128 spectrograph1)
	(have_image Phenomenon128 thermograph3)
	(have_image Phenomenon128 thermograph8)
	(have_image Phenomenon128 image4)
	(have_image Phenomenon128 thermograph0)
	(have_image Planet129 spectrograph11)
	(have_image Planet129 spectrograph6)
	(have_image Planet129 thermograph14)
	(have_image Planet129 image13)
	(have_image Star130 thermograph2)
	(have_image Star130 spectrograph1)
	(have_image Star130 infrared10)
	(have_image Star130 spectrograph9)
	(have_image Star130 spectrograph11)
))

)
