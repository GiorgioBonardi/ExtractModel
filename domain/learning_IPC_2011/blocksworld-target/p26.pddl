

(define (problem BW-rand-100)
(:domain blocksworld)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20 b21 b22 b23 b24 b25 b26 b27 b28 b29 b30 b31 b32 b33 b34 b35 b36 b37 b38 b39 b40 b41 b42 b43 b44 b45 b46 b47 b48 b49 b50 b51 b52 b53 b54 b55 b56 b57 b58 b59 b60 b61 b62 b63 b64 b65 b66 b67 b68 b69 b70 b71 b72 b73 b74 b75 b76 b77 b78 b79 b80 b81 b82 b83 b84 b85 b86 b87 b88 b89 b90 b91 b92 b93 b94 b95 b96 b97 b98 b99 b100  - block)
(:init
(handempty)
(ontable b1)
(on b2 b30)
(on b3 b78)
(on b4 b46)
(on b5 b71)
(ontable b6)
(on b7 b54)
(on b8 b40)
(on b9 b99)
(on b10 b5)
(on b11 b33)
(ontable b12)
(on b13 b87)
(on b14 b28)
(on b15 b88)
(on b16 b100)
(on b17 b19)
(on b18 b29)
(on b19 b3)
(on b20 b23)
(on b21 b83)
(on b22 b21)
(ontable b23)
(on b24 b27)
(on b25 b13)
(on b26 b60)
(on b27 b34)
(on b28 b37)
(on b29 b16)
(ontable b30)
(on b31 b84)
(on b32 b65)
(on b33 b47)
(on b34 b63)
(on b35 b56)
(on b36 b72)
(on b37 b8)
(on b38 b52)
(on b39 b62)
(on b40 b24)
(on b41 b94)
(on b42 b96)
(on b43 b57)
(ontable b44)
(on b45 b58)
(on b46 b36)
(on b47 b80)
(on b48 b15)
(ontable b49)
(on b50 b70)
(on b51 b41)
(ontable b52)
(on b53 b22)
(on b54 b74)
(on b55 b76)
(on b56 b11)
(on b57 b53)
(on b58 b7)
(on b59 b92)
(on b60 b48)
(ontable b61)
(on b62 b2)
(on b63 b38)
(on b64 b75)
(on b65 b45)
(on b66 b86)
(on b67 b85)
(on b68 b35)
(on b69 b82)
(on b70 b91)
(on b71 b32)
(on b72 b50)
(on b73 b93)
(on b74 b61)
(on b75 b51)
(on b76 b81)
(on b77 b90)
(on b78 b49)
(on b79 b98)
(on b80 b69)
(on b81 b4)
(on b82 b18)
(on b83 b42)
(on b84 b67)
(on b85 b20)
(on b86 b1)
(on b87 b64)
(on b88 b6)
(ontable b89)
(on b90 b10)
(on b91 b17)
(on b92 b66)
(on b93 b26)
(on b94 b79)
(ontable b95)
(on b96 b39)
(on b97 b89)
(on b98 b95)
(on b99 b73)
(on b100 b55)
(clear b9)
(clear b12)
(clear b14)
(clear b25)
(clear b31)
(clear b43)
(clear b44)
(clear b59)
(clear b68)
(clear b77)
(clear b97)
)
(:goal
(and
(on b1 b66)
(on b2 b31)
(on b3 b83)
(on b4 b18)
(on b5 b59)
(on b6 b41)
(on b8 b29)
(on b9 b74)
(on b10 b79)
(on b11 b72)
(on b12 b98)
(on b13 b12)
(on b14 b45)
(on b15 b11)
(on b16 b52)
(on b17 b36)
(on b18 b20)
(on b20 b70)
(on b21 b4)
(on b23 b61)
(on b24 b9)
(on b25 b68)
(on b26 b57)
(on b27 b35)
(on b28 b39)
(on b29 b3)
(on b30 b43)
(on b31 b50)
(on b32 b91)
(on b33 b47)
(on b34 b90)
(on b36 b80)
(on b37 b30)
(on b38 b28)
(on b39 b78)
(on b40 b23)
(on b41 b85)
(on b42 b44)
(on b43 b65)
(on b44 b82)
(on b45 b58)
(on b46 b67)
(on b48 b8)
(on b49 b88)
(on b50 b95)
(on b51 b96)
(on b52 b38)
(on b53 b69)
(on b54 b26)
(on b55 b63)
(on b56 b73)
(on b57 b42)
(on b58 b1)
(on b59 b51)
(on b60 b22)
(on b61 b37)
(on b62 b64)
(on b64 b81)
(on b65 b86)
(on b66 b56)
(on b67 b60)
(on b68 b93)
(on b69 b89)
(on b71 b32)
(on b72 b100)
(on b73 b76)
(on b74 b48)
(on b75 b54)
(on b76 b24)
(on b77 b15)
(on b78 b94)
(on b79 b97)
(on b80 b7)
(on b81 b87)
(on b82 b40)
(on b84 b21)
(on b85 b34)
(on b86 b10)
(on b87 b25)
(on b88 b99)
(on b89 b62)
(on b90 b55)
(on b91 b84)
(on b93 b46)
(on b94 b75)
(on b95 b53)
(on b96 b27)
(on b97 b92)
(on b98 b17)
(on b99 b33)
(on b100 b19))
)
)


