module Network.ActivityPub.Object where

import           Network.URI                    (URI)

import           Network.ActivityPub.Core
import           Network.ActivityPub.Properties

-- Object Types
type Article = Object
type Event = Object
type Note = Object
type Audio = Document
type Page = Document
type Video = Document

data Tombstone = Tombstone
            { tid               :: URI
            , tObjectProperties :: ObjectProperties
            , formerType        :: FormerType
            , deleted           :: Deleted
            } deriving (Show, Eq)

data Profile = Profile
            { prid               :: URI
            , prObjectProperties :: ObjectProperties
            , describes          :: Describes
            } deriving (Show, Eq)

data Place = Place
            { pid               :: URI
            , pObjectProperties :: ObjectProperties
            , accuracy          :: Accuracy
            , altitude          :: Altitude
            , latitude          :: Latitude
            , longitude         :: Longitude
            , radius            :: Radius
            , units             :: Units
            } deriving (Show, Eq)

data Relationship = Relationship
            { rid               :: URI
            , rObjectProperties :: ObjectProperties
            , subject           :: Subject
            , object            :: ObjectRef
            , relationship      :: Maybe Relationship
            } deriving (Show, Eq)

-- Link Types
type Mention = Link
