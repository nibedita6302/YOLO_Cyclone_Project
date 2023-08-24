import React from 'react'
import { AgChartsReact } from "ag-charts-react"
import { useRef, useState } from "react";


const Chart = ({data}) => {
    const [options, setOptions] = useState({
        autoSize: true,
        title: {
          text: 'Estimate T Value of Given Cyclone',
        },
        subtitle: {
          text: 'Value in percentage',
        },
        data: [
          {
            T_Value: data[0][0],
            Prediction: data[0][1],
          },
          {
            T_Value: data[1][0],
            Prediction: data[1][1],
          },
          {
            T_Value: data[2][0],
            Prediction: data[2][1],
          },
          {
            T_Value: data[3][0],
            Prediction: data[3][1],
          },
          {
            T_Value: data[4][0],
            Prediction: data[4][1],
          },
          {
            T_Value: data[5][0],
            Prediction: data[5][1],
          },
          {
            T_Value: data[6][0],
            Prediction: data[6][1],
          },
          {
            T_Value: data[7][0],
            Prediction: data[7][1],
          }
        ],
        series: [
            {
              xKey: 'T_Value',
              yKey: 'Prediction',
              label: {
                fontWeight: 'bold',
              },
            },
          ],
        });
  return (
    <AgChartsReact options={options} />
  )
}

export default Chart