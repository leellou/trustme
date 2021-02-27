const initRefresh = () => {
   const refresh = document.querySelector('#refresh');
  refresh.addEventListener('click', (event) => {
    document.location.reload();
  });
};

export { initRefresh }
