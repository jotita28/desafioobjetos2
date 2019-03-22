def initialize name
    @name = name
    @sleep = false
    @satisfied = 10 # Esta lleno
    @fullIntestine = 0 # No necesita ir
    puts @name + ' nace '
end

def walk
    puts 'Haces caminar a ' + @name + '.'
    @satisfied -= 2
    @fullIntestine = 2
    timeLapse
end

def timeLapse
    if @satisfied > 0
    # Mueve el alimento del estomago al intestino.
    @satisfied = @satisfied - 1
    @fullIntestine = @fullIntestine + 1
    else # Nuestro mascota esta hambrienta!
    if @sleep
    @sleep = false
    puts '¡Se despierta de repente!'
    end
    puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
    exit # Sale del programa.
    end
    if @fullIntestine >= 10
    @fullIntestine = 0
    puts '¡Uy! ' + @name + ' tuvo un accidente...'
    end
    if hungry?
    if @sleep
    @sleep = false
    puts '¡Se despierta de repente!'
    end
    puts 'El estomago de ' + @name + 'retumba...'
    end
    if needToGo?
    if @sleep
    @sleep = false
    puts 'Se despierta de repente!'
    end
    puts @name + ' hace la danza del baño...'
    end
end

def eat 
    @satisfied += 4
    @fullIntestine +=1
    timeLapse
end

def sleep 
    @satisfied -= 1
    @sleep = true
    Timelapse
end