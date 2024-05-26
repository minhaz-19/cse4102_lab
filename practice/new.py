def decode_secret(filename):

    with open(filename, 'r') as file:
        lines = file.readlines()
    

    data = []
    for line in lines:
        parts = line.split()
        number = int(parts[0])
        word = parts[1]
        data.append((number, word))
    

    data.sort()
    

    secret_message_words = []
    row_start = 0
    row_length = 1
    while row_start + row_length <= len(data):
        row_end = row_start + row_length
        last_number, last_word = data[row_end - 1]
        secret_message_words.append(last_word)
        row_start = row_end
        row_length += 1
    

    secret_message = ' '.join(secret_message_words)
    
    return secret_message
