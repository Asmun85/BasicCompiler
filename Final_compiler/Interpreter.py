# #ASM is the file containing the ASM generated
# lines=open("ASM","r").readline().split("\n")
# prog=[x.split(" ") for x in lines] 
# mem=[0]*1024
# ip = 0
# while(ip<lines(prog)):
#     print(prog[ip])
#     # if prog[ip][0]== "AFC":
#     #     mem[int(prog[ip][0])]=int(prog[ip][2])
def parse_input_file(file_path):
    data = []
    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()  # Remove leading/trailing whitespace and newline characters
            if line:
                columns = line.split(',')  # Split the line into columns based on comma separation
                if len(columns) == 4:
                    data.append(columns)
                else:
                    print(f"Invalid line: {line}")
    return data

# Usage example
input_file_path = "ASM_final"  # Replace with the actual input file name
parsed_data = parse_input_file(input_file_path)

# Transform "ADD" operation into load, addition, and store instructions
output_data = []
for row in parsed_data:
    if row[1] == "ADD":
        load_instruction_1 = [row[0], "LOAD", row[2]]  # First load instruction
        load_instruction_2 = [str(int(row[0])+1), "LOAD", row[3]]  # Second load instruction
        add_instruction = [str(int(row[0])+2), "ADD", load_instruction_1[2], load_instruction_2[2]]  # Addition instruction
        store_instruction = [str(int(row[0])+3), "STORE", add_instruction[0]]  # Store instruction
        output_data.extend([load_instruction_1, load_instruction_2, add_instruction, store_instruction])
    else:
        output_data.append(row)

# Write the transformed instructions to another file
output_file_path = "cross"  # Replace with the desired output file name
with open(output_file_path, 'w') as output_file:
    for row in output_data:
        output_file.write(','.join(row) + '\n')
    print("Transformed instructions written to output file.")

