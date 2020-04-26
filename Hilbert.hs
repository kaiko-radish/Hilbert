import           Data.Map
import           Data.String

data PropLang = Atom String
    | Not PropLang
    | PropLang :* PropLang
    | PropLang :+ PropLang
    | PropLang :-> PropLang
    deriving (Show, Read, Eq)

infixl 3 :*
infixl 2 :+
infixr 1 :->

instance IsString PropLang where
  fromString = Atom

type Asmt = Map String PropLang


