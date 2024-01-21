local tokens = {}

tokens.Chars = {
    CurlyBracketOpen = "{",
    CurlyBracketClose = "}",
    Escape = "\\",
    Equals = "=",
    SquareBracketOpen = "[",
    SquareBracketClose = "]",
    Asterisk = "*",
    Hash = "#",
    Dollar = "$",
    Dash = "-",
    Dot = ".",
    Slash = "/",
    Colon = ":",
    Exclamation = "!",
    At = "@",
    Underscore = "_",
    RoundBracketOpen = "(",
    RoundBracketClose = ")",
    Sibling = "+",
    Child = ">",
    Climb = "^",
    SingleQuote = "'",
    DoubleQuote = '"',
}

return tokens
