os.execute("chcp 65001")

--Criatura
local monsterName = 'Creeper'
local description = 'Um corno que explode'
local emoji = '💥'
local favoriteTime = 'Noturno'
local dropItem = "Pólvora"

--Attributes
local attackAttribute  = 10
local defenseAttribute  = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

--função que recebe um atributo e nos retorna uma barra de progresso em string / texto

local function getProgressBar(attribute)
        local fullChar = '⚪'
        local emptyChar = '⚫'


        local result = ''
        for i = 1, 10, 1 do
           if i <= attribute then
            result = result .. fullChar
            --quadradinho cheio
                       else
            result = result .. emptyChar
            --quadradinho vazio
           end 
        end

        return result
end    


--Cartão RG Creeper
print('==============================================')
print('| Nome do Monstro: ' .. monsterName)
print('| Descrição do Mostro: ' .. description)
print('|')
print('| Horario Favorito: ' .. favoriteTime)
print('| O que dropa? ' .. dropItem)
print('| Emoji Favorito: ' .. emoji)
print('|')
print('| Atributos:')
print('|    Ataque:      ' .. getProgressBar(attackAttribute) )
print('|    Defesa:      ' .. getProgressBar(defenseAttribute ))
print('|    Vida:        ' .. getProgressBar(lifeAttribute)) 
print('|    Velocidade:  ' .. getProgressBar(speedAttribute))
print('|    Inteligencia:' .. getProgressBar(inteligenceAttribute))
print('==============================================')
