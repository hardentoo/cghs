{-# LANGUAGE Rank2Types #-}

-- | Circles in two dimensions.
module Cghs.Types.Circle2
where

import Cghs.Types.PointVector2

-- | A circle is made with an origin and a radius.
type Circle2 a = (Floating r) => (Point2 a, r)

-- | Is a point inside a circle?
isInCircle2 :: (Floating a, Ord a) => Circle2 a -> Point2 a -> Bool
isInCircle2 (o, r) p = squaredNorm op <= square r
    where square n = n * n
          op = o .-. p

