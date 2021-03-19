const initRefresh = () => {
  setInterval(function() {
    if (typeof(document.querySelector(".info-partie")) != 'undefined' && document.querySelector(".info-partie") != null) {
      window.location.reload();
    }
  }, 12000);
};
export { initRefresh }
