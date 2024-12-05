-- Definir la función para calcular la longitud 
longitud :: [a] -> Int
longitud xs = sum (map (\x -> 1) xs)

contarelemento :: Eq a => [a] -> a -> Int
contarelemento xs elemento = longitud (filter (== elemento) xs)


encontarelemento :: Eq a => [a] -> a -> Bool
encontarelemento xs elemento = not (null (filter (== elemento) xs))

duplicarElementos :: [a] -> [a]
duplicarElementos xs = [x | x <- xs, _ <- [1..2]]


determinarmayor :: [a] -> [b] -> Int
determinarmayor  xs ys = comparar (longitud xs) (longitud ys)
    where
        comparar a b
            | a > b = 1
            | a < b = 2
            | otherwise = 0


producto :: Num a => [a] -> a
producto xs = product xs


sumassucesivas :: [Int] -> Int
sumassucesivas = [a,b] = sumasucesiva a b
    where
        sumasucesiva 0 _ = 0
        sumasucesiva n m = m + sumasucesiva (n-1) m


productoPorSumasSucesivas :: [Int] -> Int
productoPorSumasSucesivas [a, b] = foldl (\acc _ -> acc + a) 0 [1..b]


reversa :: [a] -> [a]
reversa lista = foldl (\acc x -> x : acc) [] lista

-- x : acc crea una nueva lista donde x es el primer elemento, seguido por los elementos que ya están en acc --

invertirListas :: [[a]] -> [[a]]
invertirListas listaDeListas = map reverse listaDeListas


-- Función principal
main :: IO ()
main = do
    -- Ejemplos de uso
    print (contarelemento [1, 2, 3, 4, 5]2)       
    print (encontarelemento [1, 2, 3, 4, 5]6)   
    print (duplicarElementos [1, 2, 3, 4, 5])   


