from flask import Flask, render_template, request
import mysql.connector

app = Flask(__name__)

# Połączenie z bazą danych
def get_db_connection():
    return mysql.connector.connect(
        host="mysql32.mydevil.net",
        user="m11674_vegas",
        password="9C13IF64eNptTaa1,oXy}gRE[ysU5r",
        database="m11674_vegas"
    )

# --- Strona główna (menu trybów) ---
@app.route('/')
def index():
    return render_template('index.html')

@app.route('/nowa_gra_form')
def nowa_gra_form():
    return render_template('nowa_gra_form.html')

# --- Formularz: Nowa gra ---
@app.route('/nowa_gra', methods=['POST'])
def nowa_gra():
    try:
        owner = request.form['owner']

        limit = request.form.get('limit', '3')

        where_clause = "oc.ocena = 0"
        if owner != "ALL":
            where_clause += f" AND o.imie = '{owner}'"

        sql = f"""
            SELECT g.nazwa, g.typ, g.trudnosc, g.min_graczy, g.max_graczy, o.imie, oc.ocena
            FROM gry g
            JOIN oceny_1 oc ON g.id_gry = oc.id_gry
            JOIN osoby o ON oc.id_osoby = o.id_osoby
            WHERE {where_clause}
            ORDER BY RAND()
        """

        if limit != "ALL":
            sql += f"\nLIMIT {int(limit)}"

        conn = get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute(sql)
        wyniki = cursor.fetchall()
        cursor.close()
        conn.close()

        return render_template('wyniki.html', wyniki=wyniki, powrot_form='nowa_gra_form')

    except Exception as e:
        print("❌ Błąd w nowa_gra:", e)
        return f"<h2>❌ Błąd: {str(e)}</h2>", 500


# --- Formularz: Stara gra (filtrowanie) ---
@app.route('/stara_gra_form')
def stara_gra_form():
    return render_template('stara_gra_form.html')

# --- Obsługa: Stara gra ---
@app.route('/stara_gra', methods=['POST'])
def stara_gra():
    typ = request.form.get('typ')
    trudnosc = request.form.get('trudnosc')
    graczy = request.form.get('graczy')
    ocena_min = request.form.get('ocena_min') or 0
    wlasciciel = request.form.get('wlasciciel')

    where_clauses = [f"oc.ocena >= {int(ocena_min)}"]

    if typ:
        where_clauses.append(f"g.typ = '{typ}'")
    if trudnosc:
        where_clauses.append(f"g.trudnosc = '{trudnosc}'")
    if graczy:
        try:
            g = int(graczy)
            where_clauses.append(f"{g} BETWEEN g.min_graczy AND g.max_graczy")
        except ValueError:
            pass  # ignoruj jeśli wpisano coś nie  pasującego
    if wlasciciel != "ALL":
        where_clauses.append(f"o.imie = '{wlasciciel}'")

    limit = request.form.get('limit', '3')

    where_clause = " AND ".join(where_clauses)

    sql = f"""
        SELECT g.nazwa, g.typ, g.trudnosc, g.min_graczy, g.max_graczy, o.imie, oc.ocena
        FROM gry g
        JOIN oceny_1 oc ON g.id_gry = oc.id_gry
        JOIN osoby o ON oc.id_osoby = o.id_osoby
        WHERE {where_clause}
        ORDER BY RAND()
    """
    if limit != "ALL":
        sql += f"\nLIMIT {int(limit)}"

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(sql)
    wyniki = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('wyniki.html', wyniki=wyniki, powrot_form='stara_gra_form')


# --- Formularz: Szukaj gry po nazwie ---
@app.route('/szukaj_form')
def szukaj_form():
    return render_template('szukaj.html')

# --- Obsługa: Szukaj gry po nazwie ---
@app.route('/szukaj', methods=['POST'])
def szukaj():
    fragment = request.form['nazwa'].strip().lower()

    sql = """
        SELECT g.nazwa, g.typ, g.trudnosc, g.min_graczy, g.max_graczy, o.imie, oc.ocena
        FROM gry g
        JOIN oceny_1 oc ON g.id_gry = oc.id_gry
        JOIN osoby o ON oc.id_osoby = o.id_osoby
        WHERE LOWER(g.nazwa) LIKE %s
        ORDER BY g.nazwa;
    """

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(sql, (f"%{fragment}%",))
    wyniki = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('wyniki.html', wyniki=wyniki, powrot_form='szukaj_form')

# --- Formularz: gra solo ---
@app.route('/zagraj_solo_form')
def zagraj_solo_form():
    return render_template('zagraj_solo_form.html')

# --- Obsługa: gra solo ---
@app.route('/zagraj_solo', methods=['POST'])
def zagraj_solo():
    owner = request.form['owner']
    limit = int(request.form['limit'])

    where_clause = "g.min_graczy = 1"
    if owner != "ALL":
        where_clause += f" AND o.imie = '{owner}'"

    sql = f"""
        SELECT g.nazwa, g.typ, g.trudnosc, g.min_graczy, g.max_graczy, o.imie, oc.ocena
        FROM gry g
        JOIN oceny_1 oc ON g.id_gry = oc.id_gry
        JOIN osoby o ON oc.id_osoby = o.id_osoby
        WHERE {where_clause}
        ORDER BY RAND()
        LIMIT {limit};
    """

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(sql)
    wyniki = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('wyniki.html', wyniki=wyniki, powrot_form='zagraj_solo_form')

# Formularz losowania gry
@app.route('/losuj_gre_form')
def losuj_gre_form():
    return render_template('losuj_gre_form.html')

# Obsługa losowania
@app.route('/losuj_gre', methods=['POST'])
def losuj_gre():
    owner = request.form['owner']
    limit = int(request.form['limit'])

    where_clause = "1=1"
    if owner != "ALL":
        where_clause += f" AND o.imie = '{owner}'"

    sql = f"""
        SELECT g.nazwa, g.typ, g.trudnosc, g.min_graczy, g.max_graczy, o.imie, oc.ocena
        FROM gry g
        JOIN oceny_1 oc ON g.id_gry = oc.id_gry
        JOIN osoby o ON oc.id_osoby = o.id_osoby
        WHERE {where_clause}
        ORDER BY RAND()
        LIMIT {limit};
    """

    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute(sql)
    wyniki = cursor.fetchall()
    cursor.close()
    conn.close()

    return render_template('wyniki.html', wyniki=wyniki, powrot_form='losuj_gre_form')