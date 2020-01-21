local Hamming = {}

function Hamming.compute(a, b)
    if #a ~= #b then
        return -1
    end

    local res = 0
    for i = 1, #b do
        if a:sub(i,i) ~= b:sub(i,i) then
            res = res + 1
        end
    end

    return res
end

return Hamming
