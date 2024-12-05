-- Definir funciones recursivas con acumuladores en Haskell que resuelvan los enunciados de los
ejercicios 4 y 5.  --

longitud :: [a] -> Int
longitud lista = longitudRec lista 0  -- Llama a la función auxiliar con acumulador inicial en 0
  where
    longitudRec [] acc = acc  -- Caso base: si la lista está vacía, devuelve el acumulador
    longitudRec (_:xs) acc = longitudRec xs (acc + 1)  -- Llama recursivamente, incrementando el acumulador


producto :: (Num a) => [a] -> a
producto [a, b] = productoRec a b 0  -- Llama a la función auxiliar con un acumulador inicial en 0
  where
    productoRec _ 0 acc = acc  -- Si b es 0, devuelve el acumulador
    productoRec a b acc = productoRec a (b - 1) (acc + a)  -- Llama recursivamente, sumando a al acumulador


pares :: Int -> [Int]
pares n = paresRec n 0  -- Llama a la función auxiliar con el contador inicial en 0
  where
    paresRec 0 _ = []  -- Caso base: si n es 0, devuelve una lista vacía
    paresRec k acc = (2 * acc) : paresRec (k - 1) (acc + 1)  -- Genera el par y llama recursivamente


multiples :: Int -> Int -> [Int]
multiples x n = multiplesRec x n 1  -- Llama a la función auxiliar con un acumulador inicial en 1
  where
    multiplesRec _ 0 _ = []  -- Caso base: si n es 0, devuelve una lista vacía
    multiplesRec x n acc = (x * acc) : multiplesRec x (n - 1) (acc + 1)  -- Genera el múltiplo y llama recursivamente



-- Función principal
main :: IO ()
main = do
    -- Ejemplos de uso



