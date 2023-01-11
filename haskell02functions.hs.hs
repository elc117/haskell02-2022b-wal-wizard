-- #1 --
hasFever :: [Float] -> [Float]
hasFever fever = [22.5, 25.8, 30.5, 37.8, 37.9, 39.5, 40.5]
fever = if fever > 37.8 then fever else error "Nenhuma temperatura encontrada"

-- #2 --
hasFeverLB :: [Float] -> [Float]
hasFeverLB feverLB = [22.5, 25.8, 30.5, 37.8, 37.9, 39.5, 40.5]
feverLB = filter (> 37.8) feverLB

-- #3 --
itemize :: [String] -> [String]
itemize itens = ["Casa", "Sair", "Comer", "Jogar"]
itens = map (\itens -> "<li>" ++ itens ++ "</li>") itens

-- #4 --
bigCircles :: Float -> [Float] -> [Float]
bigCircles f fl = filter (\fx -> fx > f) fl

-- #5 --
quarentine :: [(String, Float)] -> [(String, Float)]
quarentine f = [("Felipe", 37.8), ("Kaio", 20.5)]
f = if f > [37.5] then f else error "todos estão saudáveis"

-- #6 --
agesIn:: [Int] -> Int -> [Int]
agesIn a i = filter (\x -> x > i) a

-- #7 --
superNames :: [String] -> [String]
superNames names = ["Alucard", "Alvin", "João", "Lukas", "Miguel", "Flávio"]

names =
  if head names == 'A'
    then names ++ "Super"
    else error "Nenum nome encontrado"

-- #8 --
onlyShorts :: [String] -> [String]
onlyShorts palavras = ["Casa", "Fazenda", "Lago", "Cozinha", "Faculdade", "Parque", "JavaScript", "Haskell", "Python"]
palavras = filter (\x -> length palavras  < 5) palavras
    