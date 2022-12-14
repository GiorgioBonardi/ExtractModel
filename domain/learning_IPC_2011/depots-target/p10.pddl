(define (problem depotprob134536825) (:domain depots)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate23)
	(at pallet1 depot1)
	(clear crate19)
	(at pallet2 depot2)
	(clear crate15)
	(at pallet3 distributor0)
	(clear crate22)
	(at pallet4 distributor1)
	(clear crate24)
	(at pallet5 distributor2)
	(clear crate21)
	(at truck0 depot0)
	(at truck1 depot1)
	(at hoist0 depot0)
	(available hoist0)
	(at hoist1 depot1)
	(available hoist1)
	(at hoist2 depot2)
	(available hoist2)
	(at hoist3 distributor0)
	(available hoist3)
	(at hoist4 distributor1)
	(available hoist4)
	(at hoist5 distributor2)
	(available hoist5)
	(at crate0 distributor0)
	(on crate0 pallet3)
	(at crate1 distributor2)
	(on crate1 pallet5)
	(at crate2 distributor0)
	(on crate2 crate0)
	(at crate3 depot0)
	(on crate3 pallet0)
	(at crate4 depot0)
	(on crate4 crate3)
	(at crate5 distributor1)
	(on crate5 pallet4)
	(at crate6 distributor2)
	(on crate6 crate1)
	(at crate7 distributor1)
	(on crate7 crate5)
	(at crate8 depot1)
	(on crate8 pallet1)
	(at crate9 distributor1)
	(on crate9 crate7)
	(at crate10 depot0)
	(on crate10 crate4)
	(at crate11 depot0)
	(on crate11 crate10)
	(at crate12 distributor2)
	(on crate12 crate6)
	(at crate13 depot0)
	(on crate13 crate11)
	(at crate14 depot1)
	(on crate14 crate8)
	(at crate15 depot2)
	(on crate15 pallet2)
	(at crate16 distributor0)
	(on crate16 crate2)
	(at crate17 distributor0)
	(on crate17 crate16)
	(at crate18 depot0)
	(on crate18 crate13)
	(at crate19 depot1)
	(on crate19 crate14)
	(at crate20 distributor2)
	(on crate20 crate12)
	(at crate21 distributor2)
	(on crate21 crate20)
	(at crate22 distributor0)
	(on crate22 crate17)
	(at crate23 depot0)
	(on crate23 crate18)
	(at crate24 distributor1)
	(on crate24 crate9)
)

(:goal (and
		(on crate0 crate14)
		(on crate1 crate8)
		(on crate2 crate23)
		(on crate3 crate6)
		(on crate4 crate5)
		(on crate5 crate22)
		(on crate6 crate10)
		(on crate7 pallet2)
		(on crate8 crate16)
		(on crate9 crate11)
		(on crate10 pallet5)
		(on crate11 pallet1)
		(on crate12 crate9)
		(on crate13 crate20)
		(on crate14 pallet0)
		(on crate16 pallet4)
		(on crate17 crate24)
		(on crate18 crate12)
		(on crate19 pallet3)
		(on crate20 crate1)
		(on crate22 crate19)
		(on crate23 crate7)
		(on crate24 crate0)
	)
))
