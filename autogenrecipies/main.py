import sys
import json
# x = load.json(f)
#  uhcrecipies/data/uhcrecipies/recipes/pytestautogen.json
# accept command line arguments of file name


def main():
    f = open("../uhcrecipies/data/uhcrecipies/recipes/pytestautogen.json")
    print(json.load(f))


if __name__ == "__main__":
    main()
