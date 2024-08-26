import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/js/app.js',
            ],
            refresh: true,
        }),
    ],
    server: {
        host: true,
        hmr: {
            host: '192.168.22.90',
            // host: '192.168.1.29',
            // host: '192.168.158.108',
        },
    },
    build: {
        outDir: 'dist',  // Make sure the build output goes to the 'dist' directory
    }, //tst
});
