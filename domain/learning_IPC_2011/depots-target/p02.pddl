(define (problem depotprob134536825) (:domain depots)
(:objects
	depot0 depot1 - Depot
	distributor0 distributor1 - Distributor
	truck0 - Truck
	pallet0 pallet1 pallet2 pallet3 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 - Crate
	hoist0 hoist1 hoist2 hoist3 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate24)
	(at pallet1 depot1)
	(clear crate23)
	(at pallet2 distributor0)
	(clear crate20)
	(at pallet3 distributor1)
	(clear crate21)
	(at truck0 depot0)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 distributor0)
	(available hoist2)
	(at hoist3 distributor1)
	(available hoist3)
	(at crate0 distributor0)
	(on crate0 pallet2)
	(at crate1 depot0)
	(on crate1 pallet0)
	(at crate2 distributor1)
	(on crate2 pallet3)
	(at crate3 distributor1)
	(on crate3 crate2)
	(at crate4 depot1)
	(on crate4 pallet1)
	(at crate5 distributor0)
	(on crate5 crate0)
	(at crate6 depot1)
	(on crate6 crate4)
	(at crate7 distributor1)
	(on crate7 crate3)
	(at crate8 distributor0)
	(on crate8 crate5)
	(at crate9 depot0)
	(on crate9 crate1)
	(at crate10 depot1)
	(on crate10 crate6)
	(at crate11 depot1)
	(on crate11 crate10)
	(at crate12 depot1)
	(on crate12 crate11)
	(at crate13 distributor1)
	(on crate13 crate7)
	(at crate14 depot1)
	(on crate14 crate12)
	(at crate15 distributor0)
	(on crate15 crate8)
	(at crate16 depot0)
	(on crate16 crate9)
	(at crate17 depot1)
	(on crate17 crate14)
	(at crate18 depot0)
	(on crate18 crate16)
	(at crate19 distributor1)
	(on crate19 crate13)
	(at crate20 distributor0)
	(on crate20 crate15)
	(at crate21 distributor1)
	(on crate21 crate19)
	(at crate22 depot0)
	(on crate22 crate18)
	(at crate23 depot1)
	(on crate23 crate17)
	(at crate24 depot0)
	(on crate24 crate22)
)

(:goal (and
		(on crate0 crate7)
		(on crate1 crate24)
		(on crate2 pallet0)
		(on crate3 crate12)
		(on crate4 crate21)
		(on crate5 crate20)
		(on crate6 crate1)
		(on crate7 pallet1)
		(on crate8 pallet3)
		(on crate9 crate4)
		(on crate10 crate0)
		(on crate11 pallet2)
		(on crate12 crate17)
		(on crate14 crate5)
		(on crate15 crate8)
		(on crate17 crate10)
		(on crate18 crate11)
		(on crate19 crate3)
		(on crate20 crate6)
		(on crate21 crate19)
		(on crate22 crate15)
		(on crate23 crate18)
		(on crate24 crate2)
	)
))
