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

-- Strings encurtadas
local borda = "--------------------------------------"

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

-- Eventos
local krakenDamage = 4
local boatAccident = 3
local newClothing = 2

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


-- Cartão inicial
print(borda)
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
print("| ")
print(borda)

-- Resutado dos Eventos apois Jornada
lifeAttribute = lifeAttribute - krakenDamage
luckAttribute = luckAttribute - boatAccident
defenseAttribute = defenseAttribute + newClothing

-- Historia
print(borda)
print("| O " .. monsterName .. " iniciou uma Grande Jornada: ")
print("| ")
print("| ")
print("| Em seu decimo sexto dia no mar nosso " .. monsterName)
print("| encontrou uma terrivel Fera marinha o Kraken ao qual teviveram uma luta fervorosa que o " .. monsterName .. "\n| Saiu Vitorioso.")
print("| ")
print("| ")
print("| Em seu septuagésimo segundo dia no mar nosso " .. monsterName)
print("| estava em uma tempestade que foi tão forte que fez o barco se acidentar no em rochas proximas " .. "\n| levando oito dias para o barco ser reparado.")
print("| ")
print("| ")
print("| Em seu ducentésimo quadragésimo nono dia nosso " .. monsterName .. " avistou uma ilha")
print("| ao atracar na ilha e explorala descobriu um Baú contendo um uniforme intocado feito de malha de açó muito melhor que o seu atual de seda.")
print("| ")
print("| ")
print("| Então em seu tricentésimo vigésimo quinto dia nosso " .. monsterName .." Retorna a sua casa tendo perdido e ganhado atributos. ")
print("| ")
print("| ")
print("| Atributos Apois Eventos:")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligencia: " .. getProgressBar(inteligeneAttribute))
print("|    Sorte:        " .. getProgressBar(luckAttribute))
print("| ")
print("| ")
print("| Fim Da Grande Jornada do nosso grande " .. monsterName)
print(borda)
