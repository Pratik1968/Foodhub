import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";

const firebaseConfig = {
  apiKey: "AIzaSyDHS3P90cDDJ_qI3Mo3hriyIz3_sQECGzA",
  authDomain: "foodhub-94375.firebaseapp.com",
  projectId: "foodhub-94375",
  storageBucket: "foodhub-94375.appspot.com",
  messagingSenderId: "104994313627",
  appId: "1:104994313627:web:525937750fdb485473bd3e",
  measurementId: "G-HYRBCE66ED"
};

const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
const db = getFirestore(app)
function save ( ){

    let name = document.getElementById("name").value;
    let price = document.getElementById("price").value;
    const citiesRef = collection(db, "");
    console.log(citiesRef);
    }