import Data.Tuple 
import Data.String
main :: IO ()
main = do
    let numeros = [1,2,3,4,5,6,7,8,9,10]
    putStrLn $ "Lista sumada: " ++ show (foldr (+) 5 numeros)
    
