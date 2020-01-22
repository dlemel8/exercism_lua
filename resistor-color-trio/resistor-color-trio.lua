local color_to_digit = {}
color_to_digit["black"] = 0
color_to_digit["brown"] = 1
color_to_digit["red"] = 2
color_to_digit["orange"] = 3
color_to_digit["yellow"] = 4
color_to_digit["green"] = 5
color_to_digit["blue"] = 6
color_to_digit["violet"] = 7
color_to_digit["grey"] = 8
color_to_digit["white"] = 9

return {
    decode = function(c1, c2, c3)
        local value = (color_to_digit[c1] * 10 + color_to_digit[c2]) * 10 ^ color_to_digit[c3]

        if value > 1000 then
            return value / 1000, "kiloohms"
        end

        return value, 'ohms'
    end
}
