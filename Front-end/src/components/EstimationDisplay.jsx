import Chart from "./Chart";

const EstimationDisplay = ({ data, outputImage }) => {
  return (
    <div className="estimaation_container">
      <div className="data_image_container">
        <img className="data_image" src={outputImage} />
      </div>
      <div>
        <Chart data={data} />
      </div>
    </div>
  );
};

export default EstimationDisplay;
