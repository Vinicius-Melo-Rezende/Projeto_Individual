const btnControlCadastro = document.getElementById('ControlCadastro');
const btnControlLogin = document.getElementById('ControlLogin');
const formLogin = document.getElementById('formLogin');
const formCadastro = document.getElementById('formCadastro');



btnControlCadastro.addEventListener('click', function(){
    btnControlCadastro.style.backgroundColor = '#ff0000';
    btnControlLogin.style.backgroundColor = '#2E2F2F';
    formLogin.classList.add('d-none');
    formCadastro.classList.remove('d-none');
})
btnControlLogin.addEventListener('click', function(){
    btnControlLogin.style.backgroundColor = '#ff0000';
    btnControlCadastro.style.backgroundColor = '#2E2F2F';
    formLogin.classList.remove('d-none');
    formCadastro.classList.add('d-none')
})
var tentativas  = 3;
function entrar(){
    tentativas--;
   for (var index = 0; index <= tentativas; index++) {
       EsqSenha.innerHTML = 'Esqueceu a senha?'
    break    
   }  
}