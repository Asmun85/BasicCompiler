#ASM is the file containing the ASM generated
lines=open("asm","r").readline().split("\n")
prog=[x.split(" ") for x in lines] 
mem=[0]*1024
ip = 0
while(ip<lines(prog)):
    if prog[ip][0]== "AFC":
        mem[int(prog[ip][0])]=int(prog[ip][2])
