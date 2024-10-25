#include <iostream>
#include <ncurses.h>
#include <vector>
#include <math.h>
using namespace std;
enum High {
    UP,
    DOWN
};
enum Rotation {
    CLOCKWISE = 1,
    ANTICLOCKWISE
};

enum Velocity {
    MORE = 1,
    LESS
};

class Point {
private:
    int m_x;
    int m_y;
public:
    Point()=default;
    Point(int x,  int y){
        m_x = x;
        m_y = y;
    }
    int getX(){
        return m_x;
    }
    int getY(){
        return m_y;
    }
    void setX(int x){
        m_x = x;
    }
    void setY(int y){
        m_y = y;
    }
    Point& getPoint(){
        return *this;
    }
};

class Traektorie {
private:
    const int g = 10;
    double velocity = 0;
    double angel = 0;
    double m_high = 0;
    High m_h;
    Rotation m_rot;
    Velocity m_vel;
public:
    Traektorie()=default;
    void show(){
        double s = ((velocity*velocity) * sin(2*angel))/g;
        double h_max = m_high + ((velocity*velocity)*sin(angel)*sin(angel))/(2*g);
        vector<Point>graf = {};
        for(int i = 0; i <= 200; ++i){
            double y = m_high + i*tan(angel) - (g*i*i)/(2*velocity*velocity*cos(angel)*cos(angel));
            if(y > 60 || y < 0){
                break;
            }
            Point newPoint(static_cast<int>(60 - y), i + 20);
            graf.emplace_back(newPoint);
            move(4,0);
            printw("%d:%lf", i, y);
        }
        for(auto& it : graf){
            move(it.getX(), it.getY());
            printw(".");
        }
        move(0,0);
        printw("(h=%lf,h_max=%lf)\nangel=%lf\nvelocity=%lf\ns=%lf", m_high, h_max,angel, velocity, s);
    }

    void changeAngel(Rotation rot){
        m_rot = rot;
        if(rot ==  CLOCKWISE){
            angel = angel - M_PI / 180;
        } else {
            angel = angel + M_PI / 180;
        }
    }
    void changeHigh(High high){
        m_h = high;
        if(high ==  UP){
            m_high = m_high + 0.2;
        } else {
            m_high = m_high - 0.2;
        }
    }
    void changeVelocity(Velocity vel){
        m_vel = vel;
        if(m_vel ==  MORE){
            velocity = velocity + 0.2;
        } else {
            velocity = velocity - 0.2;
        }
    }
};
class Jadro {
private:

public:
    Jadro(Traektorie& tr){
        move(tr);
    }
    void move(Traektorie& tr){

    }
};
class Game;
class Player {
private:
    Traektorie* m_tr;
    Game* m_game;
public:
    Player(Traektorie*& tr, Game& game){
        m_tr = tr;

    }

    void move();
};

class Land {
private:

public:
    Land()=default;
    void show() {
        for(int i = 10; i < 190; ++i){
            move(60, i);
            printw("_");
        }
    }
};

class Game {
private:
    Land* m_land;
    Traektorie* m_tr;
    Player* m_player1;
    bool isActive = true;
public:
    Game(){

    }
    void start(){
        m_land = new Land();
        m_tr = new Traektorie();
        m_player1 = new Player(m_tr, *this);
    }
    void setActive(bool active);
    bool getActive(){
        return isActive;
    }
    void update(){
        m_player1->move();
    }
    void show(){
        clear();
        m_land->show();
        m_tr->show();
    }
};
void Game::setActive(bool active){
    isActive = active;
}
void Player::move(){
    char in;
    in = getch();
    if(in == 's'){
        m_tr->changeAngel(CLOCKWISE);
    } else if(in == 'w'){
        m_tr->changeAngel(ANTICLOCKWISE);
    } else if(in == 'a'){
        m_tr->changeVelocity(LESS);
    } else if(in == 'd'){
        m_tr->changeVelocity(MORE);
    } else if(in == 'r'){
        m_tr->changeHigh(UP);
    } else if(in == 'f'){
        m_tr->changeHigh(DOWN);
    } else if(in == 'q'){
        m_game->setActive(false);
    }
}
int main() {
    initscr();
    curs_set(0);
    start_color();
    noecho();
    Game newGame;
    newGame.start();
    newGame.show();
    while(newGame.getActive()){
        newGame.update();
        newGame.show();
    }
    endwin();
    return 0;
}
