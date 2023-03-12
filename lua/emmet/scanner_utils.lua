local M = {}

function M.is_number(ch)
    -- check if the input character is number
    return type(ch) == "number"
end

function M.is_alpha(ch)
    --check either the given code is an alphabet
    return 'a' <= ch <= 'z' or 'A' <= ch <= 'Z'
end

function M.is_alpha_numeric(ch)
    --check either the ginvve code is alpha numeric
    return M.is_number(ch) or M.is_alpha(ch)
end

function M.is_alpha_word(ch)
    return ch == '_' or M.is_alpha(ch)
end

function M.is_alpha_numeric_word(ch)
    return M.is_number(ch) or M.is_alpha_word(ch)
end

function M.is_white_space(ch)
    -- check either given character code is a white-space character
    return ch == ' ' or ch == '\t'
end

function M.is_space(ch)
    -- check if given character code is a quote character
    return M.is_white_space(ch) or ch == '\n' or ch == '\r'
end

function M.is_quote(ch)
    -- check if given character code is a quote character
    return ch == "'" or ch == '"'
end

function M.eat_quoted(scanner, options)
    -- consumes 'single' or "doubel", quoted string from given string, if
    -- possible returns 'true' if quoted string was consumed. the contents of
    -- quoted string will be avaible a 'scanner.current()'
    local options = M.create_options(options)
    local start = scanner.pos
    local quote = scanner.peek()

    if scanner.eat(M.is_quote) then
        while not scanner.eof() do
            if scanner.eat(quote) then
                scanner.start = start
                return true
            end
            scanner.eat(options['escape'])
            scanner.pos = scanner.pos + 1
        end
        scanner.pos = start

        if options['throws'] then
            scanner.error("Unable to consume quoted string")
        end
    end
    return false
end

function M.create_options(opt)
    local options = {
        ["escape"] = '\\',
        ["throws"] = false
    }

    for k, v in ipairs(opt) do
        options[k] = v
    end

    return options
end
return M;
