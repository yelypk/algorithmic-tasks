local PopCount = {} --- створили клас Попкант, {} - це означає, що то не змінна, а клас 
--- прописала функцію класу, що рохує одиниці в бінарному представлені числа 
function PopCount.egg_count(number)
        local delres = number --- змінна, результат від ділення, початкове значення дорівнює вхадному числу
        local result = 0 --- змінна, кулькість одиниць на початку - 0
        while delres>1 do  --- цикл поки результат від ділення ще можна ділити на два
            result = result + delres%2 --- залишок від ділення (delres) він і дає шукані одиниці. Попередне знаення збільшуємо на залишок від ділення 
            delres = delres//2 --- оновлюємо результат ділення на наступний разряд
        end
    result = result + delres --- в кінці, додаємо те, шо залишилося. Останній залишок. 
    return result
end
return PopCount