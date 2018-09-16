module Network.ActivityPub.Vocabulary.Core where

import           Data.Maybe                                (Maybe)
import           Data.Text                                 (Text)
import           Data.Time                                 (UTCTime)
import           Network.URI                               (URI)

import           Network.ActivityPub.Vocabulary.Properties

data Object =
    Object
    { oid               :: URI
    , oObjectProperties :: ObjectProperties
    } deriving (Show, Eq)

type Document = Object
type Image = Document

data Link =
    Link
    { lid             :: URI
    , lLinkProperties :: LinkProperties
    } deriving (Show, Eq)

data Activity =
    Activity
    { aid                 :: URI
    , aObjectProperties   :: ObjectProperties
    , aActivityProperties :: ActivityProperties
    } deriving (Show, Eq)

data Collection =
    Collection
    { cid                   :: URI
    , cObjectProperties     :: ObjectProperties
    , cCollectionProperties :: CollectionProperties
    } deriving (Show, Eq)

type OrderedCollection = Collection

data CollectionPage =
    CollectionPage
    { cpid                       :: URI
    , cpObjectProperties         :: ObjectProperties
    , cpCollectionProperties     :: CollectionProperties
    , cpCollectionPageProperties :: CollectionPageProperties
    } deriving (Show, Eq)

data OrderedCollectionPage =
    OrderedCollectionPage
    { ocpid                       :: URI
    , ocpObjectProperties         :: ObjectProperties
    , ocpCollectionProperties     :: CollectionProperties
    , ocpCollectionPageProperties :: CollectionPageProperties
    , startIndex                  :: Maybe StartIndex
    } deriving (Show, Eq)


-- Property Data Types
data CollectionPageProperties =
    CollectionPageProperties
    { partOf :: Maybe PartOf
    , next   :: Maybe Next
    , prev   :: Maybe Prev
    } deriving (Show, Eq)

data CollectionProperties =
    CollectionProperties
    { totalItems :: Maybe TotalItems
    , current    :: Maybe Current
    , first      :: Maybe First
    , last       :: Maybe Last
    , items      :: Maybe Items
    } deriving (Show, Eq)

data LinkProperties =
    LinkProperties
    { href      :: Maybe Href
    , rel       :: Maybe Rel
    , mediaType :: Maybe MediaType
    , name      :: Maybe Name
    , hreflang  :: Maybe HrefLang
    , height    :: Maybe Height
    , width     :: Maybe Width
    , preview   :: Maybe Preview
    } deriving (Show, Eq)

data ActivityProperties =
    ActivityProperties
    { actor      :: Maybe Actor
    , object     :: Maybe ObjectRef
    , target     :: Maybe Target
    , result     :: Maybe Result
    , origin     :: Maybe Origin
    , instrument :: Maybe Instrument
    } deriving (Show, Eq)

data ObjectProperties =
    ObjectProperties
    { attachment   :: Maybe Attachment
    , attributedTo :: Maybe AttributedTo
    , audience     :: Maybe Audience
    , content      :: Maybe Content
    , context      :: Maybe Context
    , objName      :: Maybe Name
    , endTime      :: Maybe EndTime
    , generator    :: Maybe Generator
    , icon         :: Maybe Icon
    , image        :: Maybe ImageRef
    , inReplyTo    :: Maybe InReplyTo
    , location     :: Maybe Location
    , objPreview   :: Maybe Preview
    , published    :: Maybe Published
    , replies      :: Maybe Replies
    , startTime    :: Maybe StartTime
    , summary      :: Maybe Summary
    , tag          :: Maybe Tag
    , updated      :: Maybe Updated
    , url          :: Maybe URL
    , to           :: Maybe To
    , bto          :: Maybe Bto
    , cc           :: Maybe Cc
    , bcc          :: Maybe Bcc
    , objMediaType :: Maybe MediaType
    , duration     :: Maybe Duration
    } deriving (Show, Eq)

data Items = Item Object | ItemRef Link | Items [Either Object Link] deriving (Show, Eq)
data Closed = ClosedObject Object | ClosedLink Link | ClosedTime UTCTime | ClosedState Bool deriving (Show, Eq)

type Actor = Either Object Link
type Attachment = Either Object Link
type AttributedTo = Either Object Link
type Audience = Either Object Link
type Bcc = Either Object Link
type Bto = Either Object Link
type Cc = Either Object Link
type Context = Either Object Link
type Current = Either CollectionPage Link
type First = Either CollectionPage Link
type Generator = Either Object Link
type Icon = Either Image Link
type ImageRef = Either Image Link
type InReplyTo = Either Object Link
type Instrument = Either Object Link
type Last = Either CollectionPage Link
type Location = Either Object Link
type OneOf = Either Object Link
type AnyOf = Either Object Link
type Origin = Either Object Link
type Next = Either CollectionPage Link
type ObjectRef = Either Object Link
type Prev = Either CollectionPage Link
type Preview = Either Object Link
type Result = Either Object Link
type Replies = Collection
type Tag = Either Object Link
type Target = Either Object Link
type To = Either Object Link
type URL = Either URI Link
type PartOf = Either Link Collection
type Units = Either Unit URI
type Subject = Either Object Link
type Describes = Object
type FormerType = Object
