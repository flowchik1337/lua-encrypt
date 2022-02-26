local Key = 12345

function Encrypt(data)
res = ""
for i, byte in utf8.codes(data)
res = res..utf8.char(byte + Key)
end
return res
end

function Decrypt(data)
res = ""
for i, byte in utf8.codes(data)
res = res..utf8.char(byte - Key)
end
return res
end

--Using
print(Encrypt("Hello!"))
print(Decrypt(Encrypt("Hello again!")))