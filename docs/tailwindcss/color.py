import json
import sys

def distance_3d(point1, point2):

    x1, y1, z1 = point1

    x2, y2, z2 = point2
    return ((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2) ** 0.5
bm = float("inf")
class Node:
    def __init__(self):
        self.name = None
        self.dist=bm
class Tree:
    def __init__(self):
        self.a=Node()
        self.b=Node()
        self.c=Node()
tree = Tree()

def main(target):
    with open("./color.json") as color:
        data = json.load(color)
    for name,point in data.items():
        diff = distance_3d(target,point)
        if diff < tree.a.dist:
            tree.c.dist = tree.b.dist
            tree.c.name = tree.b.name
            tree.b.dist = tree.a.dist
            tree.b.name = tree.a.name
            tree.a.dist=diff
            tree.a.name=name
        elif diff < tree.b.dist:
            tree.c.dist = tree.b.dist
            tree.c.name = tree.b.name
            tree.b.name = name
            tree.b.dist = diff
        elif diff < tree.c.dist:
            tree.c.dist = diff
            tree.c.name = name
    print(tree.a.name)
    print(data[tree.a.name])
    print(tree.b.name)
    print(data[tree.b.name])
    print(tree.c.name)
    print(data[tree.c.name])
            


if __name__ == "__main__":
    last = sys.argv[-1]
    if "," in last:
        arr = last.split(",")
        arr = [x.strip() for x in arr]
        arr = [int(x) for x in arr]
    else:
        arr = [sys.argv[-3],sys.argv[-2],sys.argv[-1]]
        arr = [int(x) for x in arr]
    main(arr)
