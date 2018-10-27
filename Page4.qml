import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.2
import QtQml 2.2

Page4Form {
    width: 800
    height: 480
    mouseArea1.onPressed: {
        if(switch4.checked==1)
        {
            switch4.checked=0;

        }
        else
        {
           switch4.checked=1;
        }

}
    mouseArea.onPressed: {
        if(switch3.checked==1)
        {
            switch3.checked=0;

        }
        else
        {
           switch3.checked=1;
        }
}
    switch4.onCheckedChanged: {


            if(switch4.checked==1)
            {
                serialito.enviarmodulo(2,255);

            }
            if(switch4.checked==0)
            {
               serialito.enviarmodulo(2,0);
            }

}
    switch3.onCheckedChanged: {//primer switch
        serialito.test();




        if(switch3.checked==1)
            {
                serialito.enviarmodulo(1,255);

            }
            if(switch3.checked==0)
            {
               serialito.enviarmodulo(1,0);
            }

}
    radioButton1.onCheckedChanged: {

            if(radioButton1.checked){  serialito.enviarcortina(1,255);console.log("Cortina 1");}
            else{serialito.enviarcortina(1,0);console.log("Cortina 0");    }

}

    switchDelegate1.onClicked:  {
        //serialito.test();

        //console.log("onClicked");
        //console.log("And of course you could only agree.")

        if(switchDelegate1.checked==1)
        {console.log("sw1 position 1");
            serialito.enviarmodulo(1,255);

        }
        if(switchDelegate1.checked==0)
        {console.log("sw1 position 0");
           serialito.enviarmodulo(1,0);
        }
    }

    switchDelegate2.onClicked:  {

        //console.log("onClicked");
        //console.log("And of course you could only agree.")

        if(switchDelegate2.checked==1)
        {console.log("sw2 position 1");
            serialito.enviarmodulo(2,255);

        }
        if(switchDelegate2.checked==0)
        {console.log("sw2 position 0");
           serialito.enviarmodulo(2,0);
        }
    }







    button.onClicked: {

        Qt.quit()
    }
}
