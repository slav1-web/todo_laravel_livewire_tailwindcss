<?php

namespace App\Livewire;

use App\Models\Todo;
use Livewire\Attributes\Rule;
use Livewire\Component;
use Livewire\WithPagination;

class TodoList extends Component
{
    use WithPagination;
    #[Rule('required|min:3|max:50')]
    public $name;
    public $search;

    public $editID;
    #[Rule('required|min:3|max:50')]
    public $editName;
    public function create(){
        $validated = $this->validateOnly('name');

        Todo::create($validated);

        $this->reset('name');

        session()->flash('success', 'Thêm thành công');

        $this->resetPage();
    }

    public function delete(Todo $todo){
        $todo->delete();
    }
    public function toggle(Todo $todo){
        $todo->completed = !$todo->completed;
        $todo->save();
    }
    public function edit(Todo $todo){
        $this->editID = $todo->id;
        $this->editName = $todo->name;
    }
    public function cancelEdit(){
        $this->reset('editID','editName');
    }
    public function update(){
        $this->validateOnly('editName');

        Todo::find($this->editID)->update(
            [
                'name' => $this->editName
            ]
        );
        $this->cancelEdit();
    }
    public function render()
    {

        return view('livewire.todo-list', [
            'todos' => Todo::latest()
            ->where('name', 'like', "%{$this->search}%")
            ->paginate(5)
        ]);
    }
}
