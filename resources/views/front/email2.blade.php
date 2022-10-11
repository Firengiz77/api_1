

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <form action="{{ route('sendmail') }}" method="post">
        @csrf
<input type="text" name="name" id="name">ad
<input type="text" name="email" id="email"> email
<input type="text" name="phone" id="phone"> tel

<select class="select2"  name="courses_id3"  >
    <option value="0">Select Course</option> 
    @foreach ($courses as $s)
    <option value="{{$s->name}}">{{$s->name}}</option>
    @endforeach
</select>
   
<button type="submit">Submit</button>
    </form>


 <script>
// document.querySelector('form').addEventListener('submit',function(e){
// e.preventDefault();
// let url = this.getAttribute('action');
// console.log(url);


// fetch(url,{
//     method: 'POST',
//     headers: {
//       'Accept': 'application/json',
//       'Content-Type': 'application/json'
//     },
//     body: JSON.stringify({courses_id2: document.querySelector('.select2').value,name: document.getElementById('name').value,email: document.getElementById('email').value, phone:  document.getElementById('phone').value})

// }).then(res=>res.json())
// .then(data=>{

// console.log(data)
// })
// });
// </script>


</body>
</html>