--[[

Nome da Criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligencia
    Mobilidade
    Furtividade
    Explosão

--------------------------------------
/
/   Creeper
/   Um Monstro muito sagas que explode na sua cara.
/
/   Som: issssss
/
/   Atributos:
/       Ataque:1110000
/       Defesa:0000000
/   ...
/
---------------------------------------


]]

--  Modificar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Capitão Pirata"
local description = "Um Homem experiente que viajou os 7 Mares e comanda um grande Navio"
local emoji = "🦜 "
local sound = "Arrrrrrg"
local favoriteTime = "Noturno"
local item = "Baú Esquecido"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 7
local lifeAttribute = 8
local speedAttribute = 4
local inteligeneAttribute = 7
local luckAttribute = 5
local charisAttribute = 2

-- função que recebe um atributo e nos retorna uma borra de progresso em strin / texto
local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result    
end

-- Cartão
print("--------------------------------------")
print("| ")
print("| Nome: " .. monsterName)
print("| Descrição: " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji Favorito: " .. emoji)
print("| Horário Favorito: " .. favoriteTime)
print("| ")
print("| Atributos:")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligencia: " .. getProgressBar(inteligeneAttribute))
print("|    Sorte:        " .. getProgressBar(luckAttribute))
print("|    Carisma:      " .. getProgressBar(charisAttribute))
print("| ")
print("--------------------------------------")
