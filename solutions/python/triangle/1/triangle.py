def triangle_inequality(sides):
    if (sides[0] + sides[1] >= sides[2]) and (sides[1] + sides[2] >= sides[0]) and (sides[0] + sides[2] >= sides[1]):
        return True
    return False
    
def equilateral(sides):
    if triangle_inequality(sides):
        if sum(sides) != 0:
            return (sides[0] == sides[1]) and (sides [1] == sides[2])
    return False


def isosceles(sides):
    if triangle_inequality(sides):
        if equilateral(sides):
            return True
        if (sides[0] == sides[1]) or (sides[0] == sides[2]) or (sides[2] == sides[1]):
            return True
    return False



def scalene(sides):
    if triangle_inequality(sides):
        if equilateral(sides) or isosceles(sides):
            return False
        return True
    return False
