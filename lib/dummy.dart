List<String> dummyTitleToEquation = [
    'Vertex + Point',
    '2 Root + Point',
];

List<String> dummyTextToEquation = [
    """V(2, 6), P(5, -3)

Step 1: Write in vertex form.
f(x) = a(x-2)² + 6

Step 2: Plug in the point.
-3 = a(5-2)² + 6

Step 3: The rest is algebra.
-3 = a(3)² + 6
-3 = 9a + 6
-9 = 9a
a = -1

Step 4: Write out.
f(x) = -(x-2)² + 6
""",
    """X(6, 0), X(-2, 0), P(4, 1)

Step 1: Write in intercept form.
f(x) = a(x-6)(x+2)

Step 2: Plug in the point.
1 = a(4-6)(4+2)

Step 3: The rest is algebra.
1 = a(-2)(6)
1 = -12a
a = -1/12

Step 4: Write out.
f(x) = (-1/12)(x-6)(x+2)
""",
];

List<String> dummyTitleFromEquation = [
    'Vertex of equation',
    'Intersction of parabola and line',
];

List<String> dummyTextFromEquation = [
    """f(x) = 2x² - 8x + 3

Step 1: Find axis of symmetry.
x = -b/2a
x = -(-8)/2(2)
x = 8/4
x = 2

Step 2: Plug in to find f(x).
f(2) = 2(2)² - 8(2) + 3

Step 3: The rest is algebra.
f(2) = 8 - 16 + 3
f(2) = -5

Step 4: Write out.
V(2, -5)
""",
    """f(x) = -x² - 3x - 2, g(x) = 3x + 3

Step 1: Find the difference of equations.
f(x) - g(x) =  (-x² - 3x - 2) - (3x + 3)
f(x) - g(x) =  -x² - 3x - 2 - 3x - 3
f(x) - g(x) =  -x² - 6x - 5
f(x) - g(x) = -(x² + 6x + 5)

Step 2: Factor out the equation.
f(x) - g(x) = -(x + 5)(x + 1)
x = -5, x = -1

Step 3: Plug in to find y values.
g(-5) = 3(-5) + 3
g(-5) = -15 + 3
g(-5) = -12
g(-1) = 3(-1) + 3
g(-1) = -3 + 3
g(-1) = 0

Step 4: Write out.
I(-5, -12), I(-1, 0)
""",
];