

(define (problem BW-rand-100)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 b86 b87 b88 b89 b90 b91 b92 b93 b94 b95 b96 b97 b98 b99 b100  - block)
(:init
(handempty)
(on b1 b87)
(ontable b2)
(on b3 b1)
(on b4 b29)
(on b5 b39)
(on b6 b40)
(on b7 b98)
(on b8 b45)
(on b9 b55)
(on b10 b46)
(on b11 b52)
(on b12 b100)
(on b13 b25)
(ontable b14)
(on b15 b88)
(on b16 b62)
(ontable b17)
(on b18 b50)
(on b19 b33)
(on b20 b94)
(on b21 b90)
(on b22 b42)
(on b23 b89)
(on b24 b77)
(on b25 b66)
(on b26 b51)
(on b27 b37)
(on b28 b23)
(on b29 b79)
(on b30 b16)
(on b31 b7)
(on b32 b3)
(on b33 b48)
(on b34 b49)
(on b35 b95)
(ontable b36)
(on b37 b72)
(on b38 b64)
(on b39 b31)
(on b40 b43)
(ontable b41)
(ontable b42)
(on b43 b67)
(ontable b44)
(on b45 b71)
(on b46 b99)
(on b47 b13)
(ontable b48)
(on b49 b68)
(on b50 b21)
(on b51 b84)
(on b52 b57)
(on b53 b69)
(on b54 b91)
(on b55 b38)
(on b56 b22)
(on b57 b80)
(on b58 b36)
(on b59 b5)
(on b60 b59)
(on b61 b70)
(on b62 b63)
(on b63 b65)
(on b64 b17)
(on b65 b92)
(on b66 b28)
(on b67 b19)
(on b68 b18)
(on b69 b14)
(on b70 b27)
(on b71 b58)
(ontable b72)
(on b73 b41)
(on b74 b83)
(on b75 b47)
(ontable b76)
(on b77 b82)
(on b78 b85)
(on b79 b44)
(on b80 b97)
(on b81 b75)
(ontable b82)
(on b83 b6)
(on b84 b78)
(on b85 b30)
(on b86 b60)
(on b87 b20)
(on b88 b93)
(on b89 b53)
(ontable b90)
(ontable b91)
(ontable b92)
(on b93 b61)
(on b94 b2)
(ontable b95)
(on b96 b32)
(on b97 b81)
(on b98 b9)
(on b99 b24)
(on b100 b15)
(clear b4)
(clear b8)
(clear b10)
(clear b11)
(clear b12)
(clear b26)
(clear b34)
(clear b35)
(clear b54)
(clear b56)
(clear b73)
(clear b74)
(clear b76)
(clear b86)
(clear b96)
)
(:goal
(and
(on b1 b69)
(on b3 b74)
(on b4 b26)
(on b5 b4)
(on b6 b60)
(on b7 b35)
(on b8 b21)
(on b11 b10)
(on b12 b75)
(on b13 b71)
(on b14 b78)
(on b15 b48)
(on b16 b55)
(on b17 b7)
(on b18 b3)
(on b19 b67)
(on b20 b80)
(on b21 b18)
(on b22 b76)
(on b24 b98)
(on b25 b97)
(on b26 b72)
(on b27 b90)
(on b28 b53)
(on b30 b32)
(on b31 b82)
(on b32 b31)
(on b34 b2)
(on b35 b85)
(on b36 b25)
(on b38 b20)
(on b39 b89)
(on b40 b12)
(on b41 b24)
(on b42 b99)
(on b44 b68)
(on b45 b19)
(on b46 b58)
(on b47 b50)
(on b48 b9)
(on b49 b94)
(on b50 b34)
(on b51 b29)
(on b52 b57)
(on b53 b22)
(on b54 b100)
(on b55 b79)
(on b56 b51)
(on b57 b42)
(on b58 b1)
(on b59 b88)
(on b60 b13)
(on b61 b46)
(on b62 b39)
(on b63 b33)
(on b65 b93)
(on b66 b65)
(on b67 b38)
(on b69 b77)
(on b70 b59)
(on b71 b23)
(on b72 b14)
(on b73 b28)
(on b74 b45)
(on b75 b73)
(on b76 b81)
(on b77 b56)
(on b78 b96)
(on b79 b70)
(on b80 b5)
(on b82 b61)
(on b83 b30)
(on b84 b54)
(on b85 b84)
(on b86 b92)
(on b87 b62)
(on b88 b17)
(on b89 b37)
(on b90 b11)
(on b91 b87)
(on b92 b49)
(on b93 b15)
(on b95 b52)
(on b96 b83)
(on b97 b66)
(on b98 b8)
(on b99 b41))
)
)


