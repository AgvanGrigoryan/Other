//create popup
const popup = document.createElement("span");
popup.classList.add("popup");

//popup message
const popupMessage = document.createElement("span");
popupMessage.classList.add("popup__message");
popupMessage.textContent = "Ups...";
popup.appendChild(popupMessage);

//popup score indicator;
const popupScore = document.createElement("h1");
popupScore.classList.add("popup__score");
popup.appendChild(popupScore);

//popup again play button
const againButton = document.createElement("button");
againButton.classList.add("again");
againButton.type = "reset";
againButton.textContent = "Play Again";
popup.appendChild(againButton);

//append popup
document.body.appendChild(popup);


function dead() {
	for (let i = 0; i < snake.length; i++) {
		ctx.fillStyle = i == 0 ? "red": "pink";
		ctx.fillRect(snake[i].x, snake[i].y, box, box);
	}
}

//show popup
function showPopup(total) {
	popupScore.textContent = `Total score: ${total}`;
	popup.style.transform = `translate(${0}px, ${500}px)`;
}

//play again
const again = document.querySelector(".again");
again.addEventListener("click",()=>{
	window.location.reload();
})

const canvas = document.getElementById('game');
const ctx = canvas.getContext("2d");

const ground = new Image();
ground.src = "img/ground.png";

const foodImg = new Image();
foodImg.src = "img/food.png";

let box = 32;

let score = 0;


let food = {
	x: Math.floor((Math.random() * 17 + 1)) * box,
	y: Math.floor((Math.random() * 15 + 3)) * box
}

let snake = [];
snake[0] = {
	x: 9 * box,
	y: 10 * box,
}


//отслеживаем нажатия
document.addEventListener("keydown", direction);

//направление змеи
let dir;

function direction(event) {
	if (event.keyCode == 37 && dir != "right") {
		dir = "left";
	} else if (event.keyCode == 38 && dir != "down") {
		dir = "up";
	} else if (event.keyCode == 39 && dir != "left") {
		dir = "right";
	} else if (event.keyCode == 40 && dir != "up") {
		dir = "down";
	}
}

function eatTail(head, arr) {
	for (let i = 0; i < arr.length; i++) {
		if(head.x == arr[i].x && head.y == arr[i].y){
			
			dead();
			clearInterval(game);
			showPopup(score);
		}
	}
}

function drawGame() {
	//рисуем фон-поле
	ctx.drawImage(ground, 0, 0);

	//рисуем еду
	ctx.drawImage(foodImg, food.x, food.y);

	//рисуем змею
	for (let i = 0; i < snake.length; i++) {
		ctx.fillStyle = i == 0 ? "green": "gray";
		ctx.fillRect(snake[i].x, snake[i].y, box, box);
	}
	//рисуем счетчик очков
	ctx.fillStyle = "white";
	ctx.font = "26px Arial";
	ctx.fillText(score, box * 2.5, box * 1.5);

	//позиция головы змеи
	let snakeX = snake[0].x;
	let snakeY = snake[0].y;

	// проверка на поедание фрукта
	if(snakeX == food.x && snakeY == food.y){
		score++;
		food = {
			x: Math.floor((Math.random() * 17 + 1)) * box,
			y: Math.floor((Math.random() * 15 + 3)) * box
		}
	}else{
		//удаляет хвост при движении
		snake.pop();
	}

	//выход за рамки поля
	if(snakeX < box || snakeX > box * 17
		|| snakeY < 3 * box || snakeY > box * 17){
			dead();
		clearInterval(game);
		showPopup(score);
	}



	// меняет координаты головы
	if(dir == "left") snakeX -= box;
	if(dir == "right") snakeX += box;
	if(dir == "up") snakeY -= box;
	if(dir == "down") snakeY += box;

	// записывает новые координаты головы
	let newHead = {
		x:snakeX,
		y:snakeY,
	}
	eatTail(newHead, snake);
	

	//добавляем голову
	snake.unshift(newHead);
}

let game = setInterval(drawGame, 100);


let tagP = document.querySelector(".but");
tagP.addEventListener('change',()=>{
	document.body.style.backgroundColor = `${tagP.value}`;
	// document.body.classList.toggle("active");
})
