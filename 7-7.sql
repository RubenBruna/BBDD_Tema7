SET SERVEROUTPUT ON

-- Ejecutar primero 7.6
DECLARE
    DOLORES OBJ_PROFESOR;
    LUIS OBJ_ALUMNO;
    
    -- Profesora Dolores
    NOMBRE_PROF OBJ_NOMBRE := OBJ_NOMBRE('Dolores','SANCHEZ','GOMEZ');
    DOM_PROF OBJ_DOMICILIO := OBJ_DOMICILIO('Plaza','España',103,'1ºA');
    CP_PROF OBJ_COD_POSTAL := OBJ_COD_POSTAL(003,28);
    -- Alumno Luis
    NOMBRE_ALUM OBJ_NOMBRE := OBJ_NOMBRE('Luis','MARIN','SOL');
    DOM_ALUM OBJ_DOMICILIO := OBJ_DOMICILIO('Calle','Laguna',12,NULL);
    CP_ALUM OBJ_COD_POSTAL := OBJ_COD_POSTAL(660,28);
BEGIN
    DOLORES := NEW OBJ_PROFESOR('111', NOMBRE_PROF, DOM_PROF, CP_PROF, NULL, '01/09/2021');
    LUIS := NEW OBJ_ALUMNO('222', NOMBRE_ALUM, DOM_ALUM, CP_ALUM, NULL, 4, 4, 5, 7);
    
    -- Mostrar nombres
    DBMS_OUTPUT.PUT_LINE(DOLORES.NOMBRE_COMPLETO.NOMBRE);
    DBMS_OUTPUT.PUT_LINE(LUIS.NOMBRE_COMPLETO.NOMBRE);
END;
/