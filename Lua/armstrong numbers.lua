--- клас - він же таблиця, він же масив для Луа
--- Ітератор - це змінна, яка постійно збільшує на 1 і таким чином проходиться по масиву. У випадку я використувала замість ітератора ф-цію для додавання нового одного елемента у кінець таблиці  - table.insert
local ArmstrongNumbers = {}
function ArmstrongNumbers.is_armstrong_number(number)
        local delres = number 
        local numbers = {} 
        while delres>9 do --- while позволяє не використовувати ітератор. Коли не знаю, скільки буде виконуватися цикл тому, що на цьому етапі я ще не знаю скільки цифр в числі
            table.insert(numbers, delres%10) --- додаємо у кінець таблиці залишок від ділення на десять
            delres = delres//10 --- оновлюю результат ділення на десять з укругленням у меншу сторону 
        end
    table.insert(numbers, delres)
        local Armstrong = 0
        for i = 1, #numbers, 1 do --- перше - це створення змінної ітератора (ітератор - numbers[i]), друге - це значення, на якому треба зупинитися (довжина масиву), третє - на яку величину збільшую ітератор на кожному кроці - на один
            Armstrong = Armstrong + numbers[i]^#numbers --- змінна Армстронг збільшується на число у степені кількості цифр. # - дловжина, або кількість елементів у таблиці (кол-во цифр у таблиці)
        end
    return Armstrong == number --- перевіряємо, чи справді число є числом Армстронга
end

return ArmstrongNumbers
--- Не використовую ітератор у початку тому, що це створення зайвих змінних, а містер Оккам говорить не плодити сутності - мудрість, яку через РДУГ я зараз забуду .... 