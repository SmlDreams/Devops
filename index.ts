import express, { Request, Response } from 'express';

const app = express();
const PORT = process.env.PORT || 4000;

app.get('/ping', (req: Request, res: Response) => {
    res.json({
        message: 'Pong!',
        headers: req.headers
    });
});

// Middleware pour gérer toutes les autres routes inconnues (404)
app.use((req: Request, res: Response) => {
    res.status(404).send(); // Retourne une 404 vide pour toute autre requête non définie
});

app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});
