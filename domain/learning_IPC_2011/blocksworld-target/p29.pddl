

(define (problem BW-rand-100)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 b86 b87 b88 b89 b90 b91 b92 b93 b94 b95 b96 b97 b98 b99 b100  - block)
(:init
(handempty)
(on b1 b30)
(on b2 b26)
(on b3 b93)
(on b4 b56)
(on b5 b16)
(on b6 b39)
(on b7 b8)
(on b8 b4)
(on b9 b10)
(on b10 b12)
(on b11 b57)
(ontable b12)
(on b13 b86)
(on b14 b15)
(on b15 b38)
(on b16 b90)
(on b17 b87)
(on b18 b58)
(on b19 b98)
(on b20 b84)
(on b21 b61)
(on b22 b29)
(on b23 b18)
(on b24 b55)
(ontable b25)
(on b26 b94)
(on b27 b62)
(on b28 b9)
(on b29 b50)
(on b30 b40)
(on b31 b51)
(on b32 b11)
(ontable b33)
(on b34 b63)
(on b35 b25)
(on b36 b79)
(on b37 b17)
(on b38 b70)
(on b39 b68)
(on b40 b35)
(on b41 b81)
(on b42 b95)
(on b43 b73)
(on b44 b67)
(on b45 b21)
(on b46 b69)
(on b47 b28)
(on b48 b54)
(on b49 b32)
(on b50 b45)
(on b51 b41)
(on b52 b71)
(on b53 b42)
(on b54 b66)
(on b55 b59)
(on b56 b14)
(on b57 b20)
(on b58 b96)
(on b59 b22)
(on b60 b2)
(on b61 b74)
(on b62 b23)
(on b63 b24)
(on b64 b52)
(on b65 b36)
(on b66 b100)
(ontable b67)
(on b68 b89)
(on b69 b64)
(on b70 b49)
(on b71 b43)
(on b72 b76)
(on b73 b80)
(on b74 b78)
(on b75 b48)
(on b76 b5)
(on b77 b13)
(ontable b78)
(on b79 b99)
(ontable b80)
(on b81 b82)
(on b82 b19)
(on b83 b65)
(on b84 b37)
(ontable b85)
(on b86 b60)
(on b87 b85)
(on b88 b6)
(ontable b89)
(on b90 b92)
(on b91 b34)
(on b92 b88)
(on b93 b97)
(on b94 b1)
(on b95 b83)
(on b96 b75)
(on b97 b46)
(on b98 b53)
(on b99 b47)
(on b100 b44)
(clear b3)
(clear b7)
(clear b27)
(clear b31)
(clear b33)
(clear b72)
(clear b77)
(clear b91)
)
(:goal
(and
(on b1 b51)
(on b2 b40)
(on b3 b59)
(on b4 b86)
(on b5 b60)
(on b6 b94)
(on b7 b64)
(on b8 b83)
(on b10 b88)
(on b11 b48)
(on b12 b25)
(on b13 b29)
(on b14 b13)
(on b15 b97)
(on b16 b3)
(on b17 b14)
(on b18 b37)
(on b19 b45)
(on b21 b4)
(on b22 b20)
(on b23 b10)
(on b24 b93)
(on b25 b7)
(on b26 b57)
(on b27 b65)
(on b28 b74)
(on b30 b35)
(on b31 b75)
(on b32 b28)
(on b33 b49)
(on b34 b66)
(on b35 b95)
(on b36 b21)
(on b37 b23)
(on b38 b99)
(on b39 b9)
(on b40 b12)
(on b41 b71)
(on b42 b90)
(on b43 b41)
(on b44 b5)
(on b45 b85)
(on b46 b52)
(on b47 b32)
(on b49 b17)
(on b50 b27)
(on b51 b89)
(on b52 b100)
(on b53 b78)
(on b55 b16)
(on b56 b91)
(on b57 b2)
(on b58 b8)
(on b59 b34)
(on b60 b81)
(on b61 b70)
(on b62 b33)
(on b63 b18)
(on b64 b44)
(on b65 b39)
(on b66 b54)
(on b67 b26)
(on b68 b62)
(on b69 b15)
(on b70 b79)
(on b71 b55)
(on b72 b87)
(on b73 b56)
(on b74 b46)
(on b75 b11)
(on b76 b50)
(on b77 b92)
(on b78 b6)
(on b79 b76)
(on b80 b24)
(on b81 b61)
(on b82 b73)
(on b83 b47)
(on b84 b98)
(on b85 b53)
(on b86 b42)
(on b87 b69)
(on b88 b84)
(on b89 b68)
(on b91 b77)
(on b92 b22)
(on b93 b96)
(on b95 b38)
(on b96 b67)
(on b97 b58)
(on b98 b36)
(on b99 b63)
(on b100 b30))
)
)


