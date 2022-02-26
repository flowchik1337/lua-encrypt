function Encrypt(data)
bytes = {}
for i, byte in utf8.codes(data) do
table.insert(bytes, byte)
end
return "utf8.char("..table.concat(bytes, ", ")..")"
end


--Using
a = Encrypt("Hello again!")
b = load("return "..a)()
print(b)