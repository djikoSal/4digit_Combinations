import Data.List
import Data.Char

--mkString will make all our combinaions of a 4 digit number
--while saveString will print it all in a textfile named test.txt


mkString = unlines $ tmp1 ++ tmp2 ++ tmp3 ++ tmp4
        where
        tmp1 = map ("000"++) (map show [0..9])
        tmp2 = map ("00"++)(map show [10..99])
        tmp3 = map ("0"++) (map show [100..999])
        tmp4 = map show [1000..9999]

saveString :: String -> IO ()
saveString filePath = do
    let t = mkString
    writeFile filePath t
    return ()
