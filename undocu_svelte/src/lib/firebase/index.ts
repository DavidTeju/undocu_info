// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getFirestore } from "firebase/firestore";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyDcXqgLmn1PWDgHXVogRx4ip5oYLZlE9K0",
  authDomain: "undocu-info.firebaseapp.com",
  projectId: "undocu-info",
  storageBucket: "undocu-info.appspot.com",
  messagingSenderId: "1095426920100",
  appId: "1:1095426920100:web:d63e3b6fd99a89d1c0a031",
  measurementId: "G-12BZM64HQP",
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);

//initialize data with existing json
const db = getFirestore(app);

export { db };
