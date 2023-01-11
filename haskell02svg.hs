import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String
svgCircle x y r style =
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll =
  svgBegin 500 500
    ++ (svgCircle 60 60 50 "rgb(18, 160, 42, 0.7)")
    ++ (svgCircle 90 90 50 "rgb(0, 174, 75, 0.1)")
    ++ (svgCircle 120 120 50 "rgb(74, 522, 5 0.1)")
    ++ (svgCircle 150 150 50 "rgb(525,555, 10, 0.2)")
    ++ (svgCircle 120 180 50 "rgb(80, 109, 2, 0.4)")
    ++ (svgCircle 90 210 50 "rgb(0, 0, 225 0.4)")
    ++ (svgCircle 60 240 50 "rgb(14, 18, 250 , 0.1)")
    ++ svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll