local tokens = {}

tokens.Chars = {
    Hash = "#",
    Dollar = "$",
    Dash = "-",
    Dot = ".",
    Colon = ":",
    Comma = ",",
    Exclamation = "!",
    At = "@",
    Percent = "%",
    Underscore = "_",
    RoundBracketOpen = "(",
    RoundBracketClose = ")",
    CurlyBracketOpen = "{",
    CurlyBracketClose = "}",
    Sibling = "+",
    SingleQuote = "'",
    DoubleQuote = '"',
    Transparent = "t",
    Slash = "/",
}

tokens.OperatorType = {
    Sibling = "+",
    Important = "!",
    ArgumentDelimiter = ",",
    ValueDelimiter = "-",
    PropertyDelimiter = ":",
}

return tokens
