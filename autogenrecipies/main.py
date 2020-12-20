import sys
import json
# f = open("testrecipe.json", 'r')
# txt = f.read().replace('\n', '')
# uhcrecipies/data/uhcrecipies/recipes/pytestautogen.json
# accept command line arguments of file name

namespace = "testnamespace"
recipeName = "testrecipe"
recipeFile = open(recipeName + ".json", 'r')
functionTemplate = open("function_template.mcfunction", 'r')
adv_template = open("adv_template.json", 'r')

txt = recipeFile.read().replace('\n', '').replace(' ', '')

def ingredientCount(stringstart):
    keys = [('1', 0)]

    pattern = txt[stringstart:stringstart+3] + txt[stringstart+6:stringstart+9] + txt[stringstart+12:stringstart+15]
    pattern = pattern.replace('#', '')

    for i in range(len(pattern)):
        keys[-1] = (keys[-1][0], pattern.count(keys[-1][0]))
        pattern = pattern.replace(keys[-1][0], '')

        if pattern == '\n' or pattern == '':
            break
        else:
            keys.append((pattern[0], 0))

        # If the char is not in keys already, and to key and set 1
        # If the char is in keys, add to chr
    return keys


def makeFunctionFile(file):
    ingredientBuffer = len("\"1\":{\"item\":\"")
    maxcraftStart = txt.find("maxcrafts:") + len("maxcrafts:")
    maxcraftEnd = txt[maxcraftStart:-1].find(",") + maxcraftStart
    maxcraft = int(txt[maxcraftStart:maxcraftEnd])

    itemReward = txt[maxcraftEnd + 1:txt.find("<end>")].replace('.', ' ')

    # file = open("crafted_" + recipeName + ".mcfunction", 'w+')
    for i in functionTemplate:
        file.write(i.replace("<namespace>", namespace)
        .replace("<recipe>", recipeName)
        .replace("<max_craft - 1>", str(maxcraft - 1))
        .replace("<max_craft + 1>", str(maxcraft + 1))
        .replace("<reward_item>", itemReward))

    ingredients = []
    for i in ingredientCount(txt.find("pattern") + 11):
        ingredientStart = txt.find("\"" + i[0] + "\":{") + len("\"#\":{\"item\":\"")
        ingredientEnd = txt[ingredientStart:-1].find("\"") + ingredientStart
        ingredients.append(txt[ingredientStart:ingredientEnd])

        file.write("execute if score @s " + recipeName +
            "_ct matches " + str(maxcraft + 1) + ".. run give @s " + ingredients[-1] + " "
            + str(i[1]) + "\n")
    return


def makeAdvancementFile(file):



def main():
    functionFile = makeFunctionFile(open("crafted" + recipeName + ".mcfunction", 'w+'))

if __name__ == "__main__":
    main()
