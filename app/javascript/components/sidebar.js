const openSidebar = () => {
  document.querySelector('#sidebarCollapse').addEventListener('click',(event)=> {
    document.querySelector('#sidebar').classList.toggle('active');
  });
};

export { openSidebar };
