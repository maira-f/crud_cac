<jsp:include page="WEB-INF/pages/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="TAREA" />
</jsp:include>

<jsp:include page="WEB-INF/pages/comunes/navbar.jsp" />

<section class="container ">
    <div class="row py-3 align-items-center justify-content-center">
        <div class="col-md-10 col-sm-12" >
            <!--            <h1 class="display-1">Tarea</h1>
                        <p class="lead">
                            Diseñar una vista de detalle para la persona que acabas de elegir, que permita ver TODOS sus datos guardados en la BD (mail, fecha de nacimiento, edad, etc). Además, debe tener los botones para editar o borrar también desde esta vista.
                        </p>-->


            <!--            <div class="row">
                            <div class="col">
                                <img class=" img-thumbnail" src="${alumnoALeer.foto}"  />
                            </div>
                            <div class="col px-5 my-5">
                                <h1>Nombre Completo</h1>
                                <h1> ${alumnoALeer.nombreCompleto} </h1> <br>
                                <h2>Fecha de Nacimiento</h2>    
                                <h2> ${alumnoALeer.fechaNacimiento} </h2> <br>
                                <h2>Mail</h2>
                                <h2> ${alumnoALeer.mail} </h2>
                            </div>
                        </div>-->


            <!--<div class="container-fluid align-items-center justify-content-center">-->
            <div class="container card">
<!--                <div class="row">
                    <div class="col-sm-5 col-md-6">.col-sm-5 .col-md-6</div>
                    <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">.col-sm-5 .offset-sm-2 .col-md-6 .offset-md-0</div>
                </div>-->
                <div class="row">
                    <div class="col-sm-12 col-md-6 col-lg-6"><img class=" img-thumbnail" style="width: 600px  " src="${alumnoALeer.foto}"  /></div>
                    <div class="col-sm-12 col-md-4 col-lg-6 offset-lg-0">
                        <p class="fs-6 fw-light align-botton mt-3 mb-0">Nombre Completo </p>
                        <h4 class="card-title">${alumnoALeer.nombreCompleto} </h4>
                        <p class="fs-6 fw-light align-botton mt-3 mb-0">Fecha de Nacimiento </p>
                        <h5 class="card-text">${alumnoALeer.fechaNacimiento}</h5>
                        <p class="fs-6 fw-light align-botton mt-3 mb-0">Mail</p>
                        <h5 class="card-text">${alumnoALeer.mail}</h5>
                        
                        <div class="row justify-content-end mt-2">
                            <div class="col-12">
                                <div class="float-end sticky-bottom">
                                    
                     <a class="btn btn-warning" href="${pageContext.request.contextPath}/app">Volver</a>
                                </div>
                            </div>
  
</div>
                    </div>
                </div>
            </div>
                    
                    <!-- comment 
            <div class="card mb-3" >
                <div class="col-sm-5 col-md-6">
                    <img class=" img-thumbnail" style="max-width: 100px" src="${alumnoALeer.foto}"  />
                </div>
                <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">

                    <div class="card-body">

                        <p class="fs-6 fw-light align-botton mt-3">Nombre Completo </p>
                        <h4 class="card-title">${alumnoALeer.nombreCompleto} </h4>
                        <p class="fs-6 fw-light align-botton mt-3">Fecha de Nacimiento </p>
                        <h5 class="card-text">${alumnoALeer.fechaNacimiento}</h5>
                        <p class="fs-6 fw-light align-botton mt-3">Mail</p>
                        <h5 class="card-text">${alumnoALeer.mail}</h5>

                    </div>
                </div>
                    -->            
                <!--                <div class="row ">
                                    <div class="col col-md-3">
                                        <img class=" img-thumbnail" style="max-width: 300px" src="${alumnoALeer.foto}"  />
                                    </div>
                                    <div class="col card-body col-md-3 align-self-center">
                                        <div class="card-body mx-5 text-justify">
                                        <p class="fs-6 fw-light align-botton mt-3">Nombre Completo </p>
                                        <h4 class="card-title">${alumnoALeer.nombreCompleto} </h4>
                                        <p class="fs-6 fw-light align-botton mt-3">Fecha de Nacimiento </p>
                                        <h5 class="card-text">${alumnoALeer.fechaNacimiento}</h5>
                                        <p class="fs-6 fw-light align-botton mt-3">Mail</p>
                                        <h5 class="card-text">${alumnoALeer.mail}</h5>
                                        </div>
                                    </div>
                                </div>-->
                <!-- comment 
        </div>
        </div> */
                -->
        <!--            <div class="container-fluid row position-relative">
        
                        <div class="col-6">
        
                            
        
                        </div>
        
                        <div class="col-6">
        
                            <div class="row-sm-6 mb-3">                        
                                <h1> ${alumnoALeer.nombreCompleto} </h1>
                            </div>
        
                            <div class="row-sm-6 mb-3">                        
                                <h2> ${alumnoALeer.fechaNacimiento} </h2>
                            </div>
        
                            <div class="row-sm-6 mb-3">                        
                                <h2> ${alumnoALeer.mail} </h2>
                            </div>
        
                        </div>
                    </div>    -->






        <!-- comment  <a class="btn btn-warning" href="${pageContext.request.contextPath}/app">Volver</a>--> 
    </div>
</div>
</section>


<jsp:include page="WEB-INF/pages/comunes/footer.jsp"/>
<jsp:include page="WEB-INF/pages/comunes/finHTML.jsp"/>


<!--
<div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
 
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <form id="formAgregarAlumno" action="${pageContext.request.contextPath}/app?accion=update&id=${alumnoAEditar.id}"
                  method="post" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-6 mb-3">
            
                        <<h1 type="text" id="apellido" name="apellido" value="${alumnoALeer.apellido}" required></h1>
                        
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${alumnoAEditar.apellido}" required>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="mail" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="mail" name="mail" value="${alumnoAEditar.mail}" required>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="fechaNac" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="fechaNac" name="fechaNac" value="${alumnoAEditar.fechaNacimiento}" required>
                    </div>

                    <div class="col-12 mb-3">
                        <label for="foto" class="form-label">
                            <c:choose>
                                <c:when test="${yaTieneFoto}">Modificar</c:when>
                                <c:otherwise>Agregar</c:otherwise>
                            </c:choose>
                            foto
                        </label>
                        <input type="file" class="form-control" id="inputFoto" name="foto">
                        <input type="hidden" id="fotoBase64" name="fotoBase64" value="${alumnoAEditar.foto}}">
                    </div>
                </div>
                <div class="row justify-content-end mt-2">
                    <div class="col-12">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Volver atrás</a>
                            <button type="submit" class="btn btn-warning">Confirmar cambios</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>-->