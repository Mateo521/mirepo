
-- Retornar la longitud de una lista sin usar la función primitiva length. --

longitud :: [a] -> Int
longitud [] = 0  -- Caso base: la lista vacía tiene longitud 0
longitud (_:xs) = 1 + longitud xs  -- Caso recursivo: cuenta 1 y llama a longitud con el resto de la lista


contarOcurrencias :: Eq a => a -> [a] -> Int
contarOcurrencias _ [] = 0  -- Caso base: si la lista está vacía, hay 0 ocurrencias
contarOcurrencias elemento (x:xs)
    | elemento == x = 1 + contarOcurrencias elemento xs  -- Si el elemento coincide, cuenta 1 y llama recursivamente
    | otherwise     = contarOcurrencias elemento xs      -- Si no coincide, llama recursivamente sin contar


pertenece :: Eq a => a -> [a] -> Bool
pertenece _ [] = False  -- Caso base: si la lista está vacía, el elemento no está presente
pertenece elemento (x:xs)
    | elemento == x = True  -- Si el elemento coincide con el primero, devuelve True
    | otherwise     = pertenece elemento xs  -- Si no coincide, llama recursivamente con el resto de la lista


duplicar :: [a] -> [a]
duplicar [] = []  -- Caso base: si la lista está vacía, devuelve una lista vacía
duplicar (x:xs) = x : x : duplicar xs  -- Duplicar el primer elemento y continuar recursivamente


compararLongitud :: [a] -> [b] -> Int
compararLongitud [] [] = 0  -- Ambas listas están vacías
compararLongitud [] _  = 2   -- La primera lista está vacía, la segunda tiene elementos
compararLongitud _  []  = 1   -- La primera lista tiene elementos, la segunda está vacía
compararLongitud (_:xs) (_:ys) = compararLongitud xs ys  -- Comparar el resto de las listas



producto :: Num a => [a] -> a
producto [] = 0  -- Caso base: si la lista está vacía, retorna 0
producto [x] = x  -- Caso base: si la lista tiene un solo elemento, retorna ese elemento
producto (x:xs) = x * producto xs  -- Caso recursivo: multiplica el primer elemento por el producto del resto


productoPorSumasSucesivas :: (Num a) => [a] -> a
productoPorSumasSucesivas [a, b] = producto a b  -- Llama a la función de producto
  where
    producto 0 _ = 0  -- Si uno de los números es 0, el producto es 0
    producto _ 0 = 0
    producto x y = x + producto x (y - 1)  -- Suma `x` a sí mismo `y` veces



reverso :: [a] -> [a]
reverso [] = []  -- Caso base: si la lista está vacía, el reverso es una lista vacía
reverso (x:xs) = reverso xs ++ [x]  -- Llama recursivamente y agrega el primer elemento al final


invertirListas :: [[a]] -> [[a]]
invertirListas [] = []  -- Caso base: si la lista exterior está vacía, devuelve una lista vacía
invertirListas (xs:xss) = reverso xs : invertirListas xss  -- Invertir la primera lista y continuar con el resto
  where
    reverso [] = []  -- Caso base para la inversión: lista vacía
    reverso (y:ys) = reverso ys ++ [y]  -- Invertir la lista recursivamente




pares :: Int -> [Int]
pares 0 = []  -- Caso base: si n es 0, devuelve una lista vacía
pares n = (2 * (n - 1)) : pares (n - 1)  -- Calcula el par correspondiente y llama recursivamente



multiplo :: Int -> Int -> [Int]
multiplo _ 0 = []  -- Caso base: si n es 0, devuelve una lista vacía
multiplo x n = (x * n) : multiplo x (n - 1)  -- Agrega el múltiplo y llama recursivamente


-- Función principal
main :: IO ()
main = do
    -- Ejemplos de uso --
   

