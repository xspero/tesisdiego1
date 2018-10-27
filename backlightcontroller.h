#ifndef BACKLIGHTCONTROLLER_H
#define BACKLIGHTCONTROLLER_H

#include <QObject>
#include <QString>
#include <QDebug>

class BacklightController : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int value READ value WRITE setValue NOTIFY valueChanged)

public:
    int m_variable;
    explicit BacklightController(QObject *parent = 0);

    void setVariable(int newVal) {    // <--- do your stuff to update the value
            if (newVal != m_value) {
                m_variable = newVal;
                emit variableChanged();     // <--- emit signal to notify QML!
                qDebug() << "emite la señal variableChanged"<<m_value;
            }
        }
    void setValue(int newVal) {    // <--- do your stuff to update the value
            if (newVal != m_value) {
                m_value = newVal;
                emit valueChanged();     // <--- emit signal to notify QML!
                qDebug() << "emite la señal valueChanged"<<m_value;
            }
        }

    int value() const {
            return m_value;
        }

public slots:
    void backlightOn();
    void backlightCountdown();


signals:
    void valueChanged();
    void variableChanged();

private:

    int m_value;                   // <--- member value which stores the actual value
    Q_INVOKABLE bool          m_on {false};
    Q_INVOKABLE int           m_countdown {0};

};

#endif // BACKLIGHTCONTROLLER_H
