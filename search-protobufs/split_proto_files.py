import os

input_file = 'out.txt'
output_dir = 'proto_files'
prefix = 'proto_'

with open(input_file, 'r') as f:
    file_content = f.read().split('---\n')

for i, content in enumerate(file_content):
    output_file = os.path.join(output_dir, f"{prefix}{i:03d}.proto")
    with open(output_file, 'w') as f:
        f.write(content)