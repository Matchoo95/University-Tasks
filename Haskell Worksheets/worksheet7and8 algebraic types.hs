
-- Day algebraic type
data Day = Mon | Tue | Wed | Thur | Fri | Sat | Sun
           deriving (Eq,Ord,Show,Read)

-- Alternative definitions of isWeekend function
isWeekend :: Day -> Bool
isWeekend Sat  = True
isWeekend Sun  = True
isWeekend _    = False

isWeekend2 day = day == Sat || day == Sun

isWeekend3 day = day >= Sat

-- Copy of StudentMark type synonym from worksheet 4
data StudentMark = Student String Int
     deriving (Eq,Show)

betterStudent :: StudentMark -> StudentMark -> String
betterStudent (Student s1 m1) (Student s2 m2)  
    | m1 >= m2          = s1
    | otherwise         = s2

-- Shapes algebraic type 
data Shape = Circles Float |
             Rectangles Float Float

area :: Shape -> Float
area (Circle r)      = pi * r * r
area (Rectangle h w) = h * w

-- Address algebraic type (note that a constructor can have
-- the same name as the type).
data Address = Address Building String
               deriving (Show)

data Building = Name String | 
                Number Int
                deriving (Show)

-- Binary tree algebraic type
data Tree = Null | 
     Node Int Tree Tree
     deriving (Show)

-- Binary tree test data
testTree = Node 20 (Node 3 (Node 12 Null Null) (Node 7 Null Null))
                  (Node 8 (Node 4 (Node 6 Null Null) Null) Null)

-- Binary search tree test data
testSearchTree =  Node 5 (Node 1 Null Null)
                         (Node 8 (Node 7 Null Null) Null)

height :: Tree -> Int
height Null = 0
height (Node _ st1 st2) = 1 + max (height st1) (height st2)

sumValues :: Tree -> Int
sumValues Null = 0
sumValues (Node n st1 st2) = n + sumValues st1 + sumValues st2

--1.
data Month = December | January | February | March | April | May | June | July | August | September | November | October
            deriving (Eq,Ord,Show,Read)

data Season = Spring | Sumonther | Autumn | Winter
            deriving (Eq,Ord,Show,Read)
            
--2.
season :: Month -> Season
season month | month < December = Autumn
             | month < March = Winter
             | month < June = Spring
             | otherwise = Sumonther
             
--3.
numberOfDays :: Month -> Int -> Int
numberOfDays month year | year `mod` 4 == 0 && month == February = 29
                        | month == February = 28
                        | month == April || month == June || month == September || month == November = 30
                        | otherwise = 31
                        
--4.
data Point = Point Float Float 
            deriving (Eq,Ord,Show,Read)  

--5. doesn't work yet
data PositionedShape = Circle Float Point |
                       Rectangle Float Float Point
                       deriving (Eq,Ord,Show,Read)  