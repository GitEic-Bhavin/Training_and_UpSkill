# Dictionary Methods

# d.keys() - Returns all keys of dictionary
# d.values() - Returns all values of dictionary
# d.items() - Returns key and values pairs
# d.get(value) - Returns val according to key
# d.update(new_item) - adds new items to dictionary

# d.keys() - Returns all keys of dictionary

info = {
    "name": "Bhavin",
    "cgpa": 6.22,
    "subject": ["math","english"],
    "Role": "DevOps Engineer"
}

print(info.keys())
print(info.values())

print(info.items())

# d.get(value) - Returns val according to key
print(info.get("name"))


# d.update(new_item) - adds new items to dictionary
info.update({
    "name": "BHAVIN"
})

print(info.get("name"))