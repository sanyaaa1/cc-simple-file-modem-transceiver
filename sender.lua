peripheral.find("modem", rednet.open)

write("Enter a path of file: ")
path = read()

file = fs.open(path, "r")
a = file.readAll()
rednet.broadcast(a)
file.close()

peripheral.find("modem", rednet.close)
