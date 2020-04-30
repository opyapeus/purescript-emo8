module Emo8.Util.List
  ( zipWithMaybe
  , zipWithMaybeA
  ) where

import Prelude
import Data.List (List(..), reverse, (:))
import Data.Maybe (Maybe(..))
import Data.Traversable (sequence)

zipWithMaybe :: forall a b c. (Maybe a -> Maybe b -> c) -> List a -> List b -> List c
zipWithMaybe f xs ys = reverse $ go xs ys Nil
  where
  go Nil Nil acc = acc

  go Nil (b : bs) acc = go Nil bs $ f Nothing (Just b) : acc

  go (a : as) Nil acc = go as Nil $ f (Just a) Nothing : acc

  go (a : as) (b : bs) acc = go as bs $ f (Just a) (Just b) : acc

zipWithMaybeA :: forall m a b c. Applicative m => (Maybe a -> Maybe b -> m c) -> List a -> List b -> m (List c)
zipWithMaybeA f xs ys = sequence (zipWithMaybe f xs ys)
