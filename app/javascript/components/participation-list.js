const initRefresh = () => {
  const infoPartie = document.querySelector(".info-partie");
  if (infoPartie.length !== null){
    setInterval('window.location.reload()', 12000);
  }
};

export { initRefresh }
