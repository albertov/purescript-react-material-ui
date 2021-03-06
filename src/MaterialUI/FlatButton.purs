module MaterialUI.FlatButton where
import Prelude (Unit, unit, (<<<))
import React (EventHandler, ReactClass, ReactElement, createElement)
import Data.Options (Option, Options, opt, options)
import Data.Foreign (Foreign)
import MaterialUI (EventHandlerOpt, UnknownType, Node)
foreign import flatButtonClass :: ReactClass FlatButtonProps
foreign import data FlatButtonOption :: *
newtype FlatButtonProps = FlatButtonProps Foreign
flatButtonProps :: Options FlatButtonOption -> FlatButtonProps
flatButtonProps = FlatButtonProps <<< options
flatButton :: Options FlatButtonOption -> Array ReactElement -> ReactElement
flatButton opts = createElement flatButtonClass (flatButtonProps opts)
backgroundColor :: Option FlatButtonOption (String)
backgroundColor = opt "backgroundColor"
children :: Option FlatButtonOption (Node)
children = opt "children"
disabled :: Option FlatButtonOption (Boolean)
disabled = opt "disabled"
hoverColor :: Option FlatButtonOption (String)
hoverColor = opt "hoverColor"
icon :: Option FlatButtonOption (ReactElement)
icon = opt "icon"
label :: Option FlatButtonOption (String)
label = opt "label" -- custom
labelPosition :: Option FlatButtonOption (UnknownType)
labelPosition = opt "labelPosition" -- enum
labelStyle :: Option FlatButtonOption (UnknownType)
labelStyle = opt "labelStyle" -- object
onKeyboardFocus :: Option FlatButtonOption (EventHandlerOpt)
onKeyboardFocus = opt "onKeyboardFocus"
onMouseEnter :: Option FlatButtonOption (EventHandlerOpt)
onMouseEnter = opt "onMouseEnter"
onMouseLeave :: Option FlatButtonOption (EventHandlerOpt)
onMouseLeave = opt "onMouseLeave"
onTouchStart :: Option FlatButtonOption (EventHandlerOpt)
onTouchStart = opt "onTouchStart"
onTouchTap :: Option FlatButtonOption (EventHandlerOpt)
onTouchTap = opt "onTouchTap"
primary :: Option FlatButtonOption (Boolean)
primary = opt "primary"
rippleColor :: Option FlatButtonOption (String)
rippleColor = opt "rippleColor"
secondary :: Option FlatButtonOption (Boolean)
secondary = opt "secondary"
style :: Option FlatButtonOption (UnknownType)
style = opt "style" -- object
