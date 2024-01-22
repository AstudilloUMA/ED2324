-------------------------------------------------------------------------------
-- Topological Sorting of a Graph
--
-- Data Structures. Grado en Informática. UMA.
-- Pepe Gallardo, 2012
-------------------------------------------------------------------------------

module DataStructures.Graph.TopologicalSortingDic
  ( topSorting
  , topSortings
  ) where

import DataStructures.Graph.DiGraph
import DataStructures.Dictionary.AVLDictionary as D
import Data.List((\\))

-- Decrement 1 the value associated to key v
decrementValue :: (Num b, Ord a) => a -> Dictionary a b -> Dictionary a b
decrementValue v dic = D.insert v (u-1) dic
    where
    Just u = D.valueOf v dic

-- Remove all keys from the dic
removeKeys :: (Ord a) => [a] -> Dictionary a b -> Dictionary a b
removeKeys keys dic = foldr D.delete dic keys


topSorting :: (Ord a) => DiGraph a -> [a]
topSorting g  = aux initPenPred
 where
  initPenPred = undefined
  aux pendingPred
    | D.isEmpty pendingPred = []
    | null srcs    = error "DiGraph is cyclic"
    | otherwise  = undefined
    where
      srcs = undefined -- list of vertices with inDegree 0

-- Include information of parallel tasks
topSortings :: (Ord a) => DiGraph a -> [[a]]
topSortings g  = aux initPenPred
  where
    initPenPred = undefined
    aux pendingPred
      | D.isEmpty pendingPred = []
      | null srcs  = error "DiGraph is cyclic"
      | otherwise  = undefined
      where
        srcs = undefined -- list of vertices with inDegree 0
       
