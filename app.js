var balance, myPick, faces = 6, guess, wager, range;

balance = 25;

document.querySelector('.guess-the-number').addEventListener('click', function() {
    guess = document.querySelector('.guess').value;
    range = document.querySelector('.range').value;
    
    if (guess && range) {
        dice_roll = Math.floor(Math.random() * range) + 1; 
        document.getElementById('diceValue').textContent = dice_roll;
    } else  alert('Please enter a guess'); 
    wager = 0;
});