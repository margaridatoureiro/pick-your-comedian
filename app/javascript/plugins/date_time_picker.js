const fancyDateTimePicker = () => {
 $('#datetimepicker1').datetimepicker({
   locale: 'en-us',
   sideBySide: true,
   format: "DD-MM-YYYY h:mm A"
  });
 console.log("whatsap it works");
};


export { fancyDateTimePicker }
