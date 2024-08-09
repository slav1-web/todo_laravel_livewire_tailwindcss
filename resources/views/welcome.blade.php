<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo List</title>

    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body>
    <div id="head" class="flex border-blue-800 border-t-2">
        <div class="w-full">
            <header class="flex bg-white h-20 border-b border-b-gray-200 items-center px-6">
                <h1>Todo List</h1>
            </header>
        </div>
    </div>
    <div id="content" class="mx-auto" style="max-width:700px;">
        @livewire('todo-list')
    </div>

</body>

</html>