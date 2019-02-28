import flatpickr from "flatpickr"
import $ from 'jquery'
import "flatpickr/dist/themes/material_orange.css"
import minMaxTimePlugin from 'flatpickr/dist/plugins/minMaxTimePlugin'
$('.dater').flatpickr({
  enableTime: true,
  minDate: "2019",
  plugins: [
    new minMaxTimePlugin({
      table: {
        "2019-03-01": {
          minTime: "06:00",
          maxTime: "18:00"
      }
    }
  })
    ]
});
