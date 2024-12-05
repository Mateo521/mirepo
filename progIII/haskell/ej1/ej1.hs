import Data.List (nub, sort)
import Data.Tuple 
import Data.String
main :: IO ()
main = do
    let lista = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
    putStrLn $ "Lista original: " ++ show lista
    putStrLn $ "Primer elemento: " ++ show (head lista)
    putStrLn $ "Último elemento: " ++ show (last lista)
    putStrLn $ "Sin el primer elemento: " ++ show (tail lista)
    putStrLn $ "Sin el último elemento: " ++ show (init lista)
    putStrLn $ "¿La lista está vacía? " ++ show (null lista)
    putStrLn $ "Longitud de la lista: " ++ show (length lista)
    putStrLn $ "Lista revertida: " ++ show (reverse lista)
    putStrLn $ "Los primeros 5 elementos: " ++ show (take 5 lista)
    putStrLn $ "Los últimos 5 elementos: " ++ show (drop 6 lista)
    putStrLn $ "Máximo: " ++ show (maximum lista)
    putStrLn $ "Mínimo: " ++ show (minimum lista)
    putStrLn $ "Suma de elementos: " ++ show (sum lista)
    putStrLn $ "Producto de elementos: " ++ show (product lista)
    putStrLn $ "Elementos únicos: " ++ show (nub lista)
    putStrLn $ "Lista ordenada: " ++ show (sort lista)


    let tupla2 = (1, "Hola")

    putStrLn $ "Primer elemento: " ++ show (fst tupla2)

    let texto = "Hola\n mundo\n\nhola" 

    putStrLn $ "string line: " ++ show (lines texto)
    {-words breaks a string up into a list of words, which were delimited by white space.
    >>> words "Lorem ipsum\ndolor"
["Lorem","ipsum","dolor"]

unlines is an inverse operation to lines. It joins lines, after appending a terminating newline to each.

>>> unlines ["Hello", "World", "!"]
"Hello\nWorld\n!\n"

-}