-- |
-- Module:       $HEADER$
-- Description:  All test cases aggregated and exported as tests :: [Test].
-- Copyright:    (c) 2013, 2014 Peter Trsko
-- License:      BSD3
--
-- Maintainer:   peter.trsko@gmail.com
-- Stability:    stable
-- Portability:  non-portable (depends on non-portable module)
--
-- All test cases aggregated and exported as @tests :: ['Test']@.
module TestCase (tests)
    where

import Test.Framework (Test, testGroup)

import qualified TestCase.Data.Functor.FlipT as FlipT (tests)
import qualified TestCase.Data.Functor.Utils as FunctorUtils (tests)
import qualified TestCase.Data.Monoid.FirstNonEmpty as FirstNonEmpty (tests)
import qualified TestCase.Data.Monoid.LastNonEmpty as LastNonEmpty (tests)


tests :: [Test]
tests =
    [ testGroup "TestCase.Data.Functor.FlipT" FlipT.tests
    , testGroup "TestCase.Data.Functor.Utils" FunctorUtils.tests
    , testGroup "Data.Monoid.FirstNonEmpty" FirstNonEmpty.tests
    , testGroup "Data.Monoid.LastNonEmpty" LastNonEmpty.tests
    ]
