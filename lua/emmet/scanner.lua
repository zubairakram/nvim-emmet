Scanner = {
    source = "";
    start = 0;
    pos = 0;
    End = nil;
};

function Scanner:eof()
    return self.pos >= self.End;
end

-- function Scanner:limit(start, End)
-- end

function Scanner:peek()
    if self.pos < self.End then
        return self.source[self.pos];
    else
        return '';
    end
end

function Scanner:next()
    if self.pos < self.End then
        local ch = self.source[self.pos];
        self.pos = self.pos + 1;
        return ch;
    end
end
