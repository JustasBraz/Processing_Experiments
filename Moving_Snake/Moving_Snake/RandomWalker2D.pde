//Created By Justas Brazauskas
//2017
int counter;
IntList inventory;
int i = 0;
int j = 0;
int limit = 30;
int listSIZE = 1000000;

void setup() {

    println(dist(10, 10, 60, 10));
    // fullScreen(P2D);
    size(800, 800, P2D);
    inventory = new IntList();
    inventory.append(width / 2);
    inventory.append(height / 2);

    for (int x = 0; x < listSIZE; x++) {
        float x1 = random(width);
        float y1 = random(height);

        if (dist(inventory.get(j), inventory.get(j + 1), x1, y1) < limit

        ) {
            inventory.append((int) x1);
            inventory.append((int) y1);

            j = j + 2;

        } else
            continue;
    }




    background(0);
    println("list size is " + inventory.size());


}

void draw() {
    line(10, 10, 60, 10);

    stroke(random(255), random(255), random(255));

    int a1 = inventory.get(i);
    int b1 = inventory.get(i + 1);

    strokeWeight(random(1, 10));
    point(a1, b1);

    int c2 = inventory.get(i + 2);
    int d2 = inventory.get(i + 3);
    strokeWeight(random(1, 10));
    point(c2, d2);

    stroke(random(255), random(255), random(255));
    strokeWeight(1);
    line(a1, b1, c2, d2);

    i = i + 2;

    if (i == inventory.size() - 4) {
        stop();
    }
}