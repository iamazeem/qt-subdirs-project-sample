#include <QCoreApplication>
#include <QDebug>

#include "test.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qDebug() << "Hello World!";
    test();
    return a.exec();
}
