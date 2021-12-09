peripheral.find("modem", rednet.open)

write("Enter a path of file: ")
path = read()

print("Waiting for sender...")
a, sod, b = rednet.receive()

file = fs.open(path, "w")
file.write(sod)
file.close()

peripheral.find("modem", rednet.close)
