module Network.ActivityPub.Vocabulary.Object where

import           Data.Maybe                                (Maybe)
import           Network.URI                               (URI)

import           Network.ActivityPub.Vocabulary.Core
import           Network.ActivityPub.Vocabulary.Properties

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
            , formerType        :: Maybe FormerType
            , deleted           :: Maybe Deleted
            } deriving (Show, Eq)

data Profile = Profile
            { prid               :: URI
            , prObjectProperties :: ObjectProperties
            , describes          :: Maybe Describes
            } deriving (Show, Eq)

data Place = Place
            { pid               :: URI
            , pObjectProperties :: ObjectProperties
            , accuracy          :: Maybe Accuracy
            , altitude          :: Maybe Altitude
            , latitude          :: Maybe Latitude
            , longitude         :: Maybe Longitude
            , radius            :: Maybe Radius
            , units             :: Maybe Units
            } deriving (Show, Eq)

data Relationship = Relationship
            { rid               :: URI
            , rObjectProperties :: ObjectProperties
            , subject           :: Maybe Subject
            , object            :: Maybe ObjectRef
            , relationship      :: Maybe Relationship
            } deriving (Show, Eq)

-- Link Types
type Mention = Link
