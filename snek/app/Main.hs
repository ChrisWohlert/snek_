module Main where
    
import Graphics.UI.GLUT
import Lib

main :: IO ()
main = do
    (_progName, _args) <- getArgsAndInitialize
    _window <- createWindow "Hello World"
    displayCallback $= display
    mainLoop

display :: DisplayCallback
display = do
    clear [ ColorBuffer ]
    flush