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
	satellite4 - satellite
	instrument5 - instrument
	satellite5 - satellite
	instrument6 - instrument
	instrument7 - instrument
	satellite6 - satellite
	instrument8 - instrument
	satellite7 - satellite
	instrument9 - instrument
	satellite8 - satellite
	instrument10 - instrument
	instrument11 - instrument
	satellite9 - satellite
	instrument12 - instrument
	instrument13 - instrument
	thermograph7 - mode
	infrared0 - mode
	image14 - mode
	infrared1 - mode
	infrared2 - mode
	image8 - mode
	image12 - mode
	spectrograph9 - mode
	infrared10 - mode
	infrared4 - mode
	spectrograph6 - mode
	infrared11 - mode
	spectrograph5 - mode
	infrared13 - mode
	thermograph3 - mode
	GroundStation1 - direction
	Star0 - direction
	Planet2 - direction
	Star3 - direction
	Phenomenon4 - direction
	Star5 - direction
	Planet6 - direction
	Star7 - direction
	Phenomenon8 - direction
	Planet9 - direction
	Planet10 - direction
	Star11 - direction
	Planet12 - direction
	Phenomenon13 - direction
	Star14 - direction
	Planet15 - direction
	Star16 - direction
	Star17 - direction
	Phenomenon18 - direction
	Planet19 - direction
	Planet20 - direction
	Phenomenon21 - direction
	Phenomenon22 - direction
	Star23 - direction
	Planet24 - direction
	Planet25 - direction
	Planet26 - direction
	Phenomenon27 - direction
	Planet28 - direction
	Planet29 - direction
	Planet30 - direction
	Star31 - direction
	Star32 - direction
	Star33 - direction
	Star34 - direction
	Planet35 - direction
	Phenomenon36 - direction
	Star37 - direction
	Phenomenon38 - direction
	Phenomenon39 - direction
	Phenomenon40 - direction
	Star41 - direction
	Planet42 - direction
	Planet43 - direction
	Planet44 - direction
	Star45 - direction
	Planet46 - direction
	Planet47 - direction
	Star48 - direction
	Planet49 - direction
	Phenomenon50 - direction
	Planet51 - direction
	Planet52 - direction
	Phenomenon53 - direction
	Phenomenon54 - direction
	Planet55 - direction
	Phenomenon56 - direction
	Phenomenon57 - direction
	Star58 - direction
	Phenomenon59 - direction
	Planet60 - direction
	Planet61 - direction
	Planet62 - direction
	Star63 - direction
	Star64 - direction
	Phenomenon65 - direction
	Phenomenon66 - direction
	Star67 - direction
	Phenomenon68 - direction
	Planet69 - direction
	Phenomenon70 - direction
	Planet71 - direction
	Phenomenon72 - direction
	Phenomenon73 - direction
	Planet74 - direction
	Planet75 - direction
	Phenomenon76 - direction
	Star77 - direction
	Phenomenon78 - direction
	Planet79 - direction
	Star80 - direction
	Planet81 - direction
	Phenomenon82 - direction
	Planet83 - direction
	Planet84 - direction
	Star85 - direction
	Planet86 - direction
	Star87 - direction
	Phenomenon88 - direction
	Phenomenon89 - direction
	Star90 - direction
	Phenomenon91 - direction
	Star92 - direction
	Phenomenon93 - direction
	Phenomenon94 - direction
	Phenomenon95 - direction
	Planet96 - direction
	Phenomenon97 - direction
	Planet98 - direction
	Phenomenon99 - direction
	Phenomenon100 - direction
	Star101 - direction
	Phenomenon102 - direction
	Phenomenon103 - direction
	Phenomenon104 - direction
	Star105 - direction
	Phenomenon106 - direction
	Star107 - direction
	Phenomenon108 - direction
	Planet109 - direction
	Phenomenon110 - direction
	Phenomenon111 - direction
	Star112 - direction
	Planet113 - direction
	Phenomenon114 - direction
	Star115 - direction
	Planet116 - direction
	Planet117 - direction
	Phenomenon118 - direction
	Planet119 - direction
	Phenomenon120 - direction
	Phenomenon121 - direction
	Planet122 - direction
	Planet123 - direction
	Planet124 - direction
	Star125 - direction
	Planet126 - direction
	Planet127 - direction
	Phenomenon128 - direction
	Phenomenon129 - direction
	Planet130 - direction
	Planet131 - direction
	Star132 - direction
	Planet133 - direction
	Planet134 - direction
	Star135 - direction
	Planet136 - direction
	Phenomenon137 - direction
	Star138 - direction
	Star139 - direction
	Phenomenon140 - direction
	Star141 - direction
	Star142 - direction
	Planet143 - direction
	Phenomenon144 - direction
	Star145 - direction
	Phenomenon146 - direction
	Phenomenon147 - direction
	Phenomenon148 - direction
	Star149 - direction
	Planet150 - direction
	Phenomenon151 - direction
)
(:init
	(supports instrument0 image14)
	(supports instrument0 spectrograph9)
	(calibration_target instrument0 Star0)
	(on_board instrument0 satellite0)
	(power_avail satellite0)
	(pointing satellite0 Star0)
	(supports instrument1 infrared2)
	(calibration_target instrument1 GroundStation1)
	(supports instrument2 spectrograph9)
	(supports instrument2 infrared1)
	(calibration_target instrument2 Star0)
	(on_board instrument1 satellite1)
	(on_board instrument2 satellite1)
	(power_avail satellite1)
	(pointing satellite1 Planet52)
	(supports instrument3 infrared10)
	(supports instrument3 infrared2)
	(calibration_target instrument3 Star0)
	(on_board instrument3 satellite2)
	(power_avail satellite2)
	(pointing satellite2 Star67)
	(supports instrument4 spectrograph6)
	(supports instrument4 infrared2)
	(calibration_target instrument4 GroundStation1)
	(on_board instrument4 satellite3)
	(power_avail satellite3)
	(pointing satellite3 Planet15)
	(supports instrument5 infrared2)
	(supports instrument5 spectrograph6)
	(calibration_target instrument5 Star0)
	(on_board instrument5 satellite4)
	(power_avail satellite4)
	(pointing satellite4 Phenomenon78)
	(supports instrument6 spectrograph9)
	(supports instrument6 infrared10)
	(calibration_target instrument6 Star0)
	(supports instrument7 spectrograph6)
	(calibration_target instrument7 Star0)
	(on_board instrument6 satellite5)
	(on_board instrument7 satellite5)
	(power_avail satellite5)
	(pointing satellite5 Star149)
	(supports instrument8 image12)
	(supports instrument8 image8)
	(supports instrument8 spectrograph5)
	(calibration_target instrument8 Star0)
	(on_board instrument8 satellite6)
	(power_avail satellite6)
	(pointing satellite6 Planet30)
	(supports instrument9 spectrograph9)
	(calibration_target instrument9 GroundStation1)
	(on_board instrument9 satellite7)
	(power_avail satellite7)
	(pointing satellite7 Planet6)
	(supports instrument10 spectrograph6)
	(supports instrument10 infrared4)
	(supports instrument10 infrared10)
	(calibration_target instrument10 Star0)
	(supports instrument11 infrared11)
	(calibration_target instrument11 Star0)
	(on_board instrument10 satellite8)
	(on_board instrument11 satellite8)
	(power_avail satellite8)
	(pointing satellite8 Phenomenon120)
	(supports instrument12 infrared13)
	(supports instrument12 spectrograph5)
	(calibration_target instrument12 GroundStation1)
	(supports instrument13 thermograph3)
	(calibration_target instrument13 Star0)
	(on_board instrument12 satellite9)
	(on_board instrument13 satellite9)
	(power_avail satellite9)
	(pointing satellite9 Planet127)
)
(:goal (and
	(pointing satellite1 Planet71)
	(pointing satellite3 Star64)
	(pointing satellite4 Phenomenon103)
	(pointing satellite5 Phenomenon70)
	(pointing satellite7 Phenomenon144)
	(pointing satellite8 Phenomenon56)
	(pointing satellite9 Planet84)
	(have_image Planet2 infrared1)
	(have_image Planet2 spectrograph9)
	(have_image Planet2 infrared4)
	(have_image Planet2 infrared13)
	(have_image Phenomenon4 thermograph3)
	(have_image Star5 spectrograph5)
	(have_image Star5 image12)
	(have_image Star5 thermograph3)
	(have_image Star5 infrared10)
	(have_image Star5 infrared11)
	(have_image Star7 image8)
	(have_image Phenomenon8 infrared13)
	(have_image Phenomenon8 spectrograph6)
	(have_image Phenomenon8 image8)
	(have_image Phenomenon8 infrared2)
	(have_image Phenomenon8 infrared11)
	(have_image Planet9 image8)
	(have_image Planet9 infrared2)
	(have_image Planet9 thermograph3)
	(have_image Planet9 image14)
	(have_image Planet9 infrared11)
	(have_image Planet10 infrared10)
	(have_image Planet10 thermograph3)
	(have_image Star11 spectrograph6)
	(have_image Star11 spectrograph9)
	(have_image Planet12 image8)
	(have_image Planet12 infrared10)
	(have_image Planet12 spectrograph6)
	(have_image Phenomenon13 thermograph3)
	(have_image Phenomenon13 infrared1)
	(have_image Star14 infrared1)
	(have_image Star14 infrared10)
	(have_image Star14 infrared4)
	(have_image Planet15 image12)
	(have_image Planet15 spectrograph5)
	(have_image Star16 infrared10)
	(have_image Star16 image12)
	(have_image Star16 image14)
	(have_image Star17 spectrograph9)
	(have_image Star17 infrared10)
	(have_image Star17 infrared2)
	(have_image Star17 image12)
	(have_image Phenomenon18 image14)
	(have_image Phenomenon18 infrared11)
	(have_image Phenomenon18 infrared4)
	(have_image Planet19 infrared13)
	(have_image Planet19 spectrograph6)
	(have_image Planet19 infrared4)
	(have_image Planet20 spectrograph5)
	(have_image Phenomenon21 image12)
	(have_image Phenomenon22 infrared11)
	(have_image Star23 infrared4)
	(have_image Star23 spectrograph5)
	(have_image Planet24 infrared2)
	(have_image Planet24 infrared11)
	(have_image Planet24 infrared1)
	(have_image Planet24 infrared10)
	(have_image Planet24 image12)
	(have_image Planet25 spectrograph6)
	(have_image Planet25 infrared13)
	(have_image Planet25 image12)
	(have_image Planet25 infrared10)
	(have_image Planet26 infrared11)
	(have_image Planet26 infrared2)
	(have_image Planet26 spectrograph5)
	(have_image Phenomenon27 infrared1)
	(have_image Phenomenon27 thermograph3)
	(have_image Phenomenon27 spectrograph6)
	(have_image Phenomenon27 spectrograph5)
	(have_image Planet28 spectrograph9)
	(have_image Planet30 spectrograph6)
	(have_image Planet30 infrared1)
	(have_image Planet30 spectrograph9)
	(have_image Star31 spectrograph5)
	(have_image Star31 image14)
	(have_image Star31 spectrograph9)
	(have_image Star31 image12)
	(have_image Star32 image8)
	(have_image Star32 infrared13)
	(have_image Star32 infrared10)
	(have_image Star33 spectrograph6)
	(have_image Star33 image8)
	(have_image Star33 infrared10)
	(have_image Star34 infrared4)
	(have_image Star34 spectrograph6)
	(have_image Planet35 infrared2)
	(have_image Star37 infrared13)
	(have_image Star37 infrared2)
	(have_image Star37 spectrograph9)
	(have_image Star37 infrared11)
	(have_image Star37 image12)
	(have_image Phenomenon38 infrared1)
	(have_image Phenomenon38 infrared10)
	(have_image Phenomenon38 image12)
	(have_image Phenomenon38 image14)
	(have_image Phenomenon39 infrared11)
	(have_image Star41 image12)
	(have_image Planet42 infrared10)
	(have_image Planet42 spectrograph6)
	(have_image Planet42 infrared11)
	(have_image Planet42 infrared4)
	(have_image Planet42 spectrograph5)
	(have_image Planet43 infrared13)
	(have_image Planet43 image14)
	(have_image Planet43 thermograph3)
	(have_image Planet44 image12)
	(have_image Planet44 spectrograph9)
	(have_image Planet44 infrared13)
	(have_image Star45 infrared13)
	(have_image Star45 spectrograph9)
	(have_image Star45 infrared1)
	(have_image Planet46 infrared11)
	(have_image Planet46 image12)
	(have_image Planet46 image14)
	(have_image Planet47 spectrograph5)
	(have_image Planet47 infrared10)
	(have_image Star48 image14)
	(have_image Star48 spectrograph5)
	(have_image Planet49 spectrograph5)
	(have_image Phenomenon50 infrared2)
	(have_image Phenomenon50 infrared13)
	(have_image Phenomenon50 infrared11)
	(have_image Planet52 spectrograph5)
	(have_image Phenomenon54 spectrograph5)
	(have_image Phenomenon54 infrared11)
	(have_image Phenomenon54 thermograph3)
	(have_image Planet55 image14)
	(have_image Planet55 infrared10)
	(have_image Planet55 infrared2)
	(have_image Planet55 image12)
	(have_image Planet55 infrared11)
	(have_image Phenomenon56 spectrograph5)
	(have_image Phenomenon56 infrared10)
	(have_image Phenomenon56 infrared11)
	(have_image Phenomenon56 infrared2)
	(have_image Phenomenon56 spectrograph6)
	(have_image Phenomenon57 infrared1)
	(have_image Phenomenon57 image8)
	(have_image Phenomenon57 thermograph3)
	(have_image Phenomenon57 infrared2)
	(have_image Phenomenon57 image14)
	(have_image Star58 spectrograph9)
	(have_image Star58 spectrograph5)
	(have_image Phenomenon59 image12)
	(have_image Phenomenon59 infrared11)
	(have_image Phenomenon59 spectrograph9)
	(have_image Planet60 infrared1)
	(have_image Planet60 infrared13)
	(have_image Planet61 infrared1)
	(have_image Planet61 image12)
	(have_image Planet61 thermograph3)
	(have_image Planet61 infrared4)
	(have_image Planet62 image14)
	(have_image Star63 spectrograph9)
	(have_image Star63 infrared1)
	(have_image Star64 infrared10)
	(have_image Phenomenon65 infrared10)
	(have_image Phenomenon66 infrared10)
	(have_image Phenomenon66 spectrograph5)
	(have_image Phenomenon66 image8)
	(have_image Star67 spectrograph6)
	(have_image Star67 infrared10)
	(have_image Star67 infrared13)
	(have_image Star67 image12)
	(have_image Phenomenon68 spectrograph5)
	(have_image Phenomenon68 thermograph3)
	(have_image Phenomenon68 image8)
	(have_image Phenomenon68 infrared10)
	(have_image Planet69 spectrograph6)
	(have_image Planet69 infrared11)
	(have_image Planet69 infrared2)
	(have_image Planet69 spectrograph5)
	(have_image Planet69 image12)
	(have_image Phenomenon72 spectrograph9)
	(have_image Phenomenon73 spectrograph9)
	(have_image Phenomenon73 infrared2)
	(have_image Phenomenon73 infrared1)
	(have_image Phenomenon73 image12)
	(have_image Planet74 infrared13)
	(have_image Planet75 infrared13)
	(have_image Planet75 spectrograph6)
	(have_image Planet75 spectrograph9)
	(have_image Phenomenon76 infrared2)
	(have_image Phenomenon76 thermograph3)
	(have_image Star77 image12)
	(have_image Phenomenon78 infrared13)
	(have_image Phenomenon78 infrared2)
	(have_image Planet79 infrared4)
	(have_image Planet79 image14)
	(have_image Planet79 image12)
	(have_image Star80 spectrograph5)
	(have_image Star80 infrared13)
	(have_image Star80 infrared11)
	(have_image Star80 image8)
	(have_image Planet81 image8)
	(have_image Planet81 infrared10)
	(have_image Planet81 image12)
	(have_image Planet81 infrared11)
	(have_image Phenomenon82 infrared1)
	(have_image Phenomenon82 image8)
	(have_image Planet83 image12)
	(have_image Planet83 spectrograph6)
	(have_image Planet84 spectrograph9)
	(have_image Planet84 infrared4)
	(have_image Planet84 infrared11)
	(have_image Planet84 thermograph3)
	(have_image Planet84 image8)
	(have_image Star85 infrared2)
	(have_image Star85 infrared1)
	(have_image Star85 image8)
	(have_image Star85 image12)
	(have_image Star85 infrared11)
	(have_image Planet86 thermograph3)
	(have_image Star87 spectrograph9)
	(have_image Star87 image8)
	(have_image Star87 spectrograph5)
	(have_image Star87 infrared10)
	(have_image Phenomenon88 image12)
	(have_image Phenomenon88 image8)
	(have_image Star90 infrared10)
	(have_image Star90 infrared11)
	(have_image Star90 thermograph3)
	(have_image Star92 infrared4)
	(have_image Star92 image12)
	(have_image Phenomenon93 thermograph3)
	(have_image Phenomenon93 infrared10)
	(have_image Phenomenon93 image14)
	(have_image Phenomenon93 image8)
	(have_image Phenomenon94 image12)
	(have_image Phenomenon94 infrared1)
	(have_image Phenomenon94 thermograph3)
	(have_image Phenomenon95 infrared13)
	(have_image Planet96 spectrograph5)
	(have_image Planet96 image8)
	(have_image Phenomenon99 infrared13)
	(have_image Phenomenon99 infrared11)
	(have_image Phenomenon100 image14)
	(have_image Phenomenon100 infrared1)
	(have_image Phenomenon100 thermograph3)
	(have_image Phenomenon100 image8)
	(have_image Star101 infrared11)
	(have_image Star101 spectrograph6)
	(have_image Star101 infrared1)
	(have_image Star101 infrared13)
	(have_image Phenomenon102 infrared13)
	(have_image Phenomenon103 image8)
	(have_image Phenomenon103 image14)
	(have_image Phenomenon103 infrared1)
	(have_image Phenomenon104 infrared13)
	(have_image Phenomenon104 infrared10)
	(have_image Star105 image8)
	(have_image Phenomenon108 infrared2)
	(have_image Phenomenon108 infrared13)
	(have_image Planet109 infrared4)
	(have_image Phenomenon110 thermograph3)
	(have_image Phenomenon110 infrared10)
	(have_image Phenomenon110 image8)
	(have_image Phenomenon110 image14)
	(have_image Phenomenon111 infrared2)
	(have_image Phenomenon111 infrared1)
	(have_image Star112 infrared1)
	(have_image Star112 infrared13)
	(have_image Star112 image12)
	(have_image Star112 infrared2)
	(have_image Phenomenon114 infrared11)
	(have_image Phenomenon114 image12)
	(have_image Phenomenon114 image8)
	(have_image Phenomenon114 spectrograph9)
	(have_image Phenomenon114 infrared10)
	(have_image Star115 infrared4)
	(have_image Planet116 infrared13)
	(have_image Planet116 thermograph3)
	(have_image Planet116 infrared4)
	(have_image Planet117 infrared1)
	(have_image Planet117 spectrograph5)
	(have_image Planet117 image14)
	(have_image Phenomenon118 image8)
	(have_image Phenomenon118 infrared11)
	(have_image Phenomenon118 infrared2)
	(have_image Phenomenon118 image14)
	(have_image Planet119 spectrograph9)
	(have_image Planet119 infrared13)
	(have_image Planet119 spectrograph6)
	(have_image Planet119 infrared1)
	(have_image Phenomenon120 spectrograph9)
	(have_image Phenomenon121 infrared4)
	(have_image Phenomenon121 infrared11)
	(have_image Phenomenon121 thermograph3)
	(have_image Phenomenon121 spectrograph5)
	(have_image Planet122 image14)
	(have_image Planet122 infrared13)
	(have_image Planet122 image12)
	(have_image Planet123 infrared2)
	(have_image Planet124 infrared2)
	(have_image Star125 thermograph3)
	(have_image Star125 spectrograph6)
	(have_image Planet126 infrared1)
	(have_image Planet126 spectrograph9)
	(have_image Planet127 image12)
	(have_image Phenomenon128 infrared11)
	(have_image Phenomenon128 spectrograph5)
	(have_image Planet130 infrared1)
	(have_image Planet130 image12)
	(have_image Planet131 infrared13)
	(have_image Planet131 spectrograph5)
	(have_image Planet131 infrared10)
	(have_image Planet133 infrared10)
	(have_image Planet134 spectrograph9)
	(have_image Planet134 image8)
	(have_image Star135 infrared4)
	(have_image Star135 infrared13)
	(have_image Planet136 infrared2)
	(have_image Planet136 infrared10)
	(have_image Planet136 image12)
	(have_image Planet136 image14)
	(have_image Planet136 infrared1)
	(have_image Phenomenon137 spectrograph6)
	(have_image Phenomenon137 infrared10)
	(have_image Star138 infrared2)
	(have_image Star139 image14)
	(have_image Star139 image8)
	(have_image Phenomenon140 thermograph3)
	(have_image Phenomenon140 image14)
	(have_image Star141 infrared13)
	(have_image Star142 infrared4)
	(have_image Star142 infrared2)
	(have_image Star142 infrared13)
	(have_image Star142 thermograph3)
	(have_image Planet143 image8)
	(have_image Phenomenon144 spectrograph6)
	(have_image Phenomenon144 thermograph3)
	(have_image Star145 infrared10)
	(have_image Star145 spectrograph9)
	(have_image Phenomenon147 image8)
	(have_image Phenomenon147 spectrograph5)
	(have_image Phenomenon148 infrared2)
	(have_image Phenomenon148 image14)
	(have_image Star149 image14)
	(have_image Star149 image12)
	(have_image Star149 spectrograph9)
	(have_image Planet150 infrared10)
	(have_image Phenomenon151 image12)
	(have_image Phenomenon151 thermograph3)
	(have_image Phenomenon151 infrared11)
	(have_image Phenomenon151 infrared2)
))

)
