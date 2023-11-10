
function carregarLanches () {

    fetch('http://localhost:3000/lanches')

        .then(response => response.json())
        .then(data => {

            const lanches = document.getElementById("lanches"); // recebe do HTML
            // lanches.innerHTML = data[0].lancheNome;

            data.forEach(lanche => {
                const item = document.createElement('li');
                lanches.innerText = lanche.lancheNome
                lanches.appendChild(item);
            });
            
        });
}

carregarLanches();
