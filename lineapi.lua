function line.plotLine(x0, y0, x1, y1)
    local dx = math.abs(x1 - x0)
    local sx = x0 < x1 and 1 or -1
    local dy = -math.abs(y1 - y0)
    local sy = y0 < y1 and 1 or -1
    local error = dx + dy
    local lineTable = {}
    while true do
        lineTable.insert({x0,y0})
        if x0 == x1 and y0 == y1 then break end
        local e2 = 2 * error
        if e2 >= dy then
            if x0 == x1 then break end
            error = error + dy
            x0 = x0 + sx
        end
        if e2 <= dx then
            if y0 == y1 then break end
            error = error + dx
            y0 = y0 + sy
        end
    end
    return lineTable
end

return line
