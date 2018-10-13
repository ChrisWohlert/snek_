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
    let color3f r g b = color $ Color3 r g (b :: GLfloat)
        vertex3f x y z = vertex $ Vertex3 x y (z :: GLfloat)
    clear [ ColorBuffer ]
    renderPrimitive Lines $ do
      color3f 1 1 1
      vertex3f (-1) (-1) 0
      vertex3f 0.5 0.5 0
      vertex3f 0.5 0.5 0
      vertex3f (-0.5) 0.5 0
    flush