import { useState, useRef, useEffect, useCallback, useMemo } from "react";
import "./App.css";
import axios from "axios";
import ImageProcessing from "./components/ImageProcessing";
import upload_image from "./assets/upload_image.svg";
import EstimationDisplay from "./components/EstimationDisplay";

function App() {
  const [image, setImage] = useState(null);
  const [outputImage, setOutputImage] = useState(null);
  const [estimateVal, setEstimateVal] = useState([]);
  const [isUploaded, setIsUploaded] = useState(false);
  const [needCall, setNeedCall] = useState(false);
  const [text, setText] = useState(1);
  const needTranslate = useRef(false);

  const getImage = (e) => {
    const file = e.target.files[0];
    setImage(file);
  };

  const secondCall = useCallback(async () => {
    const data = [
      [1, 0.02],
      [2, 0.01],
      [3, 0.8],
      [4, 0.1],
      [5, 0.02],
      [6, 0.01],
      [7, 0.01],
      [8, 0.02],
    ];
    const formData = new FormData();
    formData.append("image", outputImage);
    setNeedCall(false);
    setEstimateVal(data);
  }, [outputImage]);

  const uploadImage = () => {
    if (!image) {
      alert("Please upload an image");
      return;
    }
    const formData = new FormData();
    formData.append("image", image);
    setIsUploaded(true);
    setText(2);
    axios
      .post("http://127.0.0.1:8000/", formData, { responseType: "blob" })
      .then((res) => res.data)
      .then((blob) => {
        setOutputImage(URL.createObjectURL(blob));
        setNeedCall(true);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  useEffect(() => {
    if (outputImage && needCall) {
      setTimeout(() => {
        needTranslate.current = true;
        setText(3);
        secondCall();
      }, 1000);
    }
  }, [outputImage, needCall, secondCall]);

  return (
    <div className="App">
      {text === 1 && <h1>Upload Image</h1>}
      {text === 2 && <h1>Extracting Area Of Interest</h1>}
      {text === 3 && <h1>Estimated Intensity</h1>}
      {!isUploaded ? (
        <div className="file_input_container">
          {!image ? (
            <div className="input_container">
              <img src={upload_image} alt="" />
              <p>Drag-n-Drop image here or click to upload</p>
              <input type="file" accept="image/*" onChange={getImage} />
            </div>
          ) : (
            <div className="data_image_container">
              <img className="data_image" src={URL.createObjectURL(image)} />
            </div>
          )}

          <button onClick={uploadImage}>Upload</button>
        </div>
      ) : estimateVal.length <= 0 ? (
        <ImageProcessing
          className=""
          inputImage={image}
          outputImage={outputImage}
          needTranslate={needTranslate.current}
        />
      ) : (
        <EstimationDisplay data={estimateVal} outputImage={outputImage} />
      )}
    </div>
  );
}

export default App;
