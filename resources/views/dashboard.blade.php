<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    {{ __("You're logged in!") }}
                </div>
            </div>
        </div>
    </div>
    <script>
document.addEventListener('contextmenu', function(event) {
    event.preventDefault();
});

document.addEventListener('keydown', function(event) {
    // Disable F12, Ctrl+Shift+I, Ctrl+U, Ctrl+Shift+J
    if (event.key === 'F12' || 
        (event.ctrlKey && event.shiftKey && event.key === 'I') || 
        (event.ctrlKey && event.key === 'U') || 
        (event.ctrlKey && event.shiftKey && event.key === 'J')) {
        event.preventDefault();
    }
});

    </script>
</x-app-layout>
