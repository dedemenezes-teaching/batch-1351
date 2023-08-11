// RECAP
// // SELECT ONE ELEMENT
// document.querySelector('.active')

// // SELECT MULTIPLE ELEMENTS
// document.querySelectorAll('.active')

// // SELECT ELEMENT BY THE ID
// document.getElementById('first_name')


const students = ['hermione', 'neville', 'ron', 'draco']

let liContent = ''

students.forEach((student) => {
  const listItem = `<li>${student}</li>`
  liContent += listItem
})

const ulTag = `<ul>${liContent}</ul>`
console.log(ulTag)

const container = document.querySelector('.container')

container.insertAdjacentHTML('beforeend', ulTag)



const ul = document.querySelector('ul')
ul.style.listStyleType = 'upper-roman'
// ul.style.display = 'none'


const listItems = document.querySelectorAll('li');

listItems.forEach((listItem) => {
  listItem.innerHTML += ' 🧙';
});



const link = document.querySelector('#link')
console.log(link.dataset.house)

const bandMembers = document.querySelectorAll('.abba')

bandMembers.forEach((member) => {
  // 1.retrieve played instruments
  const instrument = member.dataset.instrument
  // member.dataset.house = 'Slytherin'
  console.log(member)
  console.log(instrument)
  // 2. add the instrument to the list item text
  member.innerHTML += ` (${instrument})`
})


// // 1. SELECT THE ELEMENT
// const image = document.getElementById('romain');
// // 2. ATTACH THE EVENT LISTENER
// image.addEventListener('click', (event) => {
  // console.log(event);
//   console.log(event.target);
//   // image.classList.toggle('img-circle'); // SAME AS BELOW
//   event.currentTarget.classList.toggle('img-circle');
// })


const images = document.querySelectorAll('img.brothers')

images.forEach((image) => {
  image.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('img-circle')
  })
})



const btn = document.querySelector('.btn.btn-light')
console.log(btn)
const checkboxes = document.querySelectorAll('.form-check-input')
console.log(checkboxes)

btn.addEventListener('click', (event) => {
  checkboxes.forEach((checkbox) => {
    // console.log(checkbox.checked);
    // if (checkbox.checked) {
    //   checkbox.checked = false
    // } else {
    //   checkbox.checked = true
    // }
    checkbox.checked = !checkbox.checked
  })
})
