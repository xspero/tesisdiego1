import QtQuick 2.7
import QtGraphicalEffects 1.0
import QtQuick.Dialogs 1.2
import QtQml 2.2

Page2Form {
    width: 800
    height: 480

    switchDelegate1.onClicked:  {

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
