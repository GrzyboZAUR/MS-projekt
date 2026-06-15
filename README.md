# 🎲 Board Game Database

A Flask + MySQL application for browsing and randomly selecting board games from a personal collection. Built as a coursework project — my first GitHub project.

> ⚠️ This project is no longer hosted live (the database instance has been taken down). The code remains as a reference for early work with Flask, SQL, and parameterized queries.

---

## What it does

The app helps a group of friends pick a board game to play based on different criteria:

- **New game** — randomly suggests a game that hasn't been rated yet
- **Old game** — filter games by type, difficulty, player count, and minimum rating
- **Search** — find a game by name
- **Solo game** — suggest games playable alone
- **Random pick** — completely random suggestion, optionally filtered by owner

---

## Tech Stack

| Layer | Technology |
|-------|------------|
| Backend | Python, Flask |
| Database | MySQL (hosted on Railway) |
| Frontend | HTML templates (Jinja2) |

---

## Database Structure

```sql
gry            -- games: name, type, difficulty, player count
osoby          -- people: owners/raters
oceny_1        -- ratings: links games to people with a score
gry_z_ocenami  -- view combining games with ratings
```

The database contains 124 games. Full schema and data dump available in `gry_projekt.sql`.

---

## Project Structure

```
.
├── app.py              # Flask routes and database queries
├── gry_projekt.sql     # Database schema and data dump
├── requirements.txt
└── templates/
    ├── base.html
    ├── index.html
    ├── nowa_gra_form.html
    ├── stara_gra_form.html
    ├── szukaj.html
    ├── zagraj_solo_form.html
    ├── zagraj_solo.html
    ├── losuj_gre_form.html
    └── wyniki.html
```

---

## Running Locally

```bash
git clone https://github.com/GrzyboZAUR/[repo-name]
cd [repo-name]
pip install -r requirements.txt
```

Create a `.env` file:

```
DB_HOST=your_host
DB_USER=your_user
DB_PASSWORD=your_password
DB_NAME=gry_projekt
```

Import `gry_projekt.sql` into your MySQL instance, then run:

```bash
python app.py
```

---

## Notes

This was an early project, written before learning about secure coding practices. The original version built SQL queries using f-strings, which is vulnerable to SQL injection. The current version uses parameterized queries throughout.

---

## Author

Coursework project for DSW (Dolnośląska Szkoła Wyższa) — kept as a record of early progress in Python and SQL.
