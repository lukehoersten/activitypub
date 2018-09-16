module Network.ActivityPub.Vocabulary.Properties where

import           Data.Either (Either)
import           Data.Text   (Text)
import           Data.Time   (NominalDiffTime, UTCTime)
import           Data.Word   (Word)
import           Network.URI (URI)

data Unit = Cm | Feed | Inches | Km | M | Miles deriving (Show, Eq)

type Accuracy = Float
type Altitude = Float
type Content = Text
type Name = Text
type Duration = NominalDiffTime
type Height = Word
type Href = URI
type HrefLang = Text -- [BCP47] Language Tag
type Latitude = Float
type Longitude = Float
type MediaType = Text -- MIME Media Type
type EndTime = UTCTime
type Published = UTCTime
type StartTime = UTCTime
type Radius = Float
type Rel = [Text] -- [RFC5988] or [HTML5] Link Relation
type StartIndex = Word
type Summary = Text
type TotalItems = Word
type Updated = UTCTime
type Width = Word
type Deleted = UTCTime
