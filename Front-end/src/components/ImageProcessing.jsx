import loader from "./../assets/rolling_loading.svg";
import spinner from "./../assets/spinner_loader.svg";
import complete from "./../assets/complete.svg";

import "./ImageProcessing.css";

const ImageProcessing = ({ inputImage, outputImage, needTranslate }) => {
  return (
    <div className="container">
      {inputImage ? (
        <div className="data_image_container">
          <img
            className={`data_image ${needTranslate ? "translate" : ""}`}
            src={URL.createObjectURL(inputImage)}
            alt="Input Image"
          />
        </div>
      ) : (
        <img className="image_spinner" src={loader} />
      )}
      <div className={`lines ${needTranslate ? "yes" : ""}`}></div>
      {!outputImage ? (
        <img className={`loader ${needTranslate ? "yes" : ""}`} src={loader} />
      ) : (
        <img className="loader" src={complete} />
      )}
      <div className={`lines ${needTranslate ? "yes" : ""}`}></div>
      {outputImage ? (
        <div className="data_image_container">
          <img className={`data_image`} src={outputImage} alt="Output Image" />
        </div>
      ) : (
        <img className={`image_spinner`} src={spinner} />
      )}
    </div>
  );
};

export default ImageProcessing;
