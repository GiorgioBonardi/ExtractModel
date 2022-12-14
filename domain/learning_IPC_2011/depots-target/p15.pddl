(define (problem depotprob134536825) (:domain depots)
(:objects
	depot0 depot1 depot2 - Depot
	distributor0 distributor1 distributor2 - Distributor
	truck0 truck1 - Truck
	pallet0 pallet1 pallet2 pallet3 pallet4 pallet5 - Pallet
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 crate10 crate11 crate12 crate13 crate14 crate15 crate16 crate17 crate18 crate19 crate20 crate21 crate22 crate23 crate24 crate25 crate26 crate27 crate28 crate29 - Crate
	hoist0 hoist1 hoist2 hoist3 hoist4 hoist5 - Hoist)
(:init
	(at pallet0 depot0)
	(clear crate21)
	(at pallet1 depot1)
	(clear crate26)
	(at pallet2 depot2)
	(clear crate29)
	(at pallet3 distributor0)
	(clear crate23)
	(at pallet4 distributor1)
	(clear crate27)
	(at pallet5 distributor2)
	(clear crate19)
	(at truck0 depot1)
	(at truck1 depot0)
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
	(at crate0 depot0)
	(on crate0 pallet0)
	(at crate1 distributor1)
	(on crate1 pallet4)
	(at crate2 depot2)
	(on crate2 pallet2)
	(at crate3 depot2)
	(on crate3 crate2)
	(at crate4 depot2)
	(on crate4 crate3)
	(at crate5 depot1)
	(on crate5 pallet1)
	(at crate6 distributor0)
	(on crate6 pallet3)
	(at crate7 distributor2)
	(on crate7 pallet5)
	(at crate8 distributor1)
	(on crate8 crate1)
	(at crate9 depot0)
	(on crate9 crate0)
	(at crate10 distributor0)
	(on crate10 crate6)
	(at crate11 distributor2)
	(on crate11 crate7)
	(at crate12 distributor2)
	(on crate12 crate11)
	(at crate13 depot1)
	(on crate13 crate5)
	(at crate14 distributor0)
	(on crate14 crate10)
	(at crate15 distributor1)
	(on crate15 crate8)
	(at crate16 distributor2)
	(on crate16 crate12)
	(at crate17 distributor2)
	(on crate17 crate16)
	(at crate18 distributor1)
	(on crate18 crate15)
	(at crate19 distributor2)
	(on crate19 crate17)
	(at crate20 distributor1)
	(on crate20 crate18)
	(at crate21 depot0)
	(on crate21 crate9)
	(at crate22 depot1)
	(on crate22 crate13)
	(at crate23 distributor0)
	(on crate23 crate14)
	(at crate24 depot2)
	(on crate24 crate4)
	(at crate25 distributor1)
	(on crate25 crate20)
	(at crate26 depot1)
	(on crate26 crate22)
	(at crate27 distributor1)
	(on crate27 crate25)
	(at crate28 depot2)
	(on crate28 crate24)
	(at crate29 depot2)
	(on crate29 crate28)
)

(:goal (and
		(on crate1 crate11)
		(on crate2 crate21)
		(on crate3 pallet4)
		(on crate4 crate28)
		(on crate5 crate13)
		(on crate6 pallet3)
		(on crate7 crate3)
		(on crate8 pallet0)
		(on crate9 crate2)
		(on crate10 crate9)
		(on crate11 crate29)
		(on crate12 pallet2)
		(on crate13 crate7)
		(on crate14 crate16)
		(on crate16 crate6)
		(on crate18 crate5)
		(on crate19 crate24)
		(on crate21 crate18)
		(on crate22 crate23)
		(on crate23 crate14)
		(on crate24 crate12)
		(on crate25 crate1)
		(on crate27 crate4)
		(on crate28 pallet1)
		(on crate29 pallet5)
	)
))
