<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Admin Dashboard</title>
    <meta
      content="width=device-width, initial-scale=1.0, shrink-to-fit=no"
      name="viewport"
    />
    <link
      rel="icon"
      href="${pageContext.request.contextPath}/assets/img/logo.png"
      type="image/x-icon"
    />

    <!-- Fonts and icons -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/webfont/webfont.min.js"></script>
    <script>
      WebFont.load({
        google: { families: ["Public Sans:300,400,500,600,700"] },
        custom: {
          families: [
            "Font Awesome 5 Solid",
            "Font Awesome 5 Regular",
            "Font Awesome 5 Brands",
            "simple-line-icons",
          ],
          urls: ["${pageContext.request.contextPath}/assets/css/fonts.min.css"],
        },
        active: function () {
          sessionStorage.fonts = true;
        },
      });
    </script>

    <!-- CSS Files -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/plugins.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/kaiadmin.min.css" />

    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demo.css" />
  </head>
<body>
    <div class="wrapper">
      <!-- Sidebar -->
      <div class="sidebar" data-background-color="dark">
        <div class="sidebar-logo">
          <!-- Logo Header -->
          <div class="logo-header" data-background-color="dark">
            <a href="index" class="logo">
              <img
                src="${pageContext.request.contextPath}/assets/img/logo.png"
                alt="navbar brand"
                class="navbar-brand"
                height="20"
              />
            </a>
            <div class="nav-toggle">
              <button class="btn btn-toggle toggle-sidebar">
                <i class="gg-menu-right"></i>
              </button>
              <button class="btn btn-toggle sidenav-toggler">
                <i class="gg-menu-left"></i>
              </button>
            </div>
            <button class="topbar-toggler more">
              <i class="gg-more-vertical-alt"></i>
            </button>
          </div>
          <!-- End Logo Header -->
        </div>
        <div class="sidebar-wrapper scrollbar scrollbar-inner">
          <div class="sidebar-content">
            <ul class="nav nav-secondary">
              <li class="nav-item">
                <a
                  data-bs-toggle="collapse"
                  href="#dashboard"
                  class="collapsed"
                  aria-expanded="false"
                >
                  <i class="fas fa-home"></i>
                  <p>Dashboard</p>                
                </a>               
              </li>
             
              <li class="nav-item">
                <a data-bs-toggle="collapse" href="#tables">
                  <i class="fas fa-table"></i>
                  <p>Employee</p>
                  <span class="caret"></span>
                </a>
                <div class="collapse" id="tables">
                  <ul class="nav nav-collapse">
                   
                    <li>
                      <a href="viewemp">
                        <span class="sub-item">Employee List</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <!-- End Sidebar -->

      <div class="main-panel">
        <div class="main-header">
          <div class="main-header-logo">
            <!-- Logo Header -->
            <div class="logo-header" data-background-color="dark">
              <a href="index" class="logo">
                <img
                  src="${pageContext.request.contextPath}/assets/img/kaiadmin/logo_light.svg"
                  alt="navbar brand"
                  class="navbar-brand"
                />
              </a>
              <div class="nav-toggle">
                <button class="btn btn-toggle toggle-sidebar">
                  <i class="gg-menu-right"></i>
                </button>
                <button class="btn btn-toggle sidenav-toggler">
                  <i class="gg-menu-left"></i>
                </button>
              </div>
              <button class="topbar-toggler more">
                <i class="gg-more-vertical-alt"></i>
              </button>
            </div>
            <!-- End Logo Header -->
          </div>
          <!-- Navbar Header -->
          <nav
            class="navbar navbar-header navbar-header-transparent navbar-expand-lg border-bottom"
          >
            <div class="container-fluid">
              <nav
                class="navbar navbar-header-left navbar-expand-lg navbar-form nav-search p-0 d-none d-lg-flex"
              >
                <div class="input-group">
                  <div class="input-group-prepend">
                    <button type="submit" class="btn btn-search pe-1">
                      <i class="fa fa-search search-icon"></i>
                    </button>
                  </div>
                  <input
                    type="text"
                    placeholder="Search ..."
                    class="form-control"
                  />
                </div>
              </nav>

              <ul class="navbar-nav topbar-nav ms-md-auto align-items-center">
                <li
                  class="nav-item topbar-icon dropdown hidden-caret d-flex d-lg-none"
                >
                  <a
                    class="nav-link dropdown-toggle"
                    data-bs-toggle="dropdown"
                    href="#"
                    role="button"
                    aria-expanded="false"
                    aria-haspopup="true"
                  >
                    <i class="fa fa-search"></i>
                  </a>
                  <ul class="dropdown-menu dropdown-search animated fadeIn">
                    <form class="navbar-left navbar-form nav-search">
                      <div class="input-group">
                        <input
                          type="text"
                          placeholder="Search ..."
                          class="form-control"
                        />
                      </div>
                    </form>
                  </ul>
                </li>
                
                <li class="nav-item topbar-user dropdown hidden-caret">
                  <a
                    class="dropdown-toggle profile-pic"
                    data-bs-toggle="dropdown"
                    href="#"
                    aria-expanded="false"
                  >
                    <div class="avatar-sm">
                      <img
                        src="${pageContext.request.contextPath}/assets/img/developer-f.png"
                        alt="..."
                        class="avatar-img rounded-circle"
                      />
                    </div>
                    <span class="profile-username">
                      
                      <span class="fw-bold">KKH</span>
                    </span>
                  </a>
                  <ul class="dropdown-menu dropdown-user animated fadeIn">
                    <div class="dropdown-user-scroll scrollbar-outer">
                      <li>
                        <div class="user-box">
                          <div class="avatar-lg">
                            <img
                              src="${pageContext.request.contextPath}/assets/img/developer-f.png"
                              alt="image profile"
                              class="avatar-img rounded"
                            />
                          </div>
                          <div class="u-text">
                            <h4>KKH</h4>
                            <p class="text-muted">kk@gmail.com</p>
                            <a
                              href="profile.html"
                              class="btn btn-xs btn-secondary btn-sm"
                              >View Profile</a
                            >
                          </div>
                        </div>
                      </li>
                      <li>
                        
                        <a class="dropdown-item" href="#">Logout</a>
                      </li>
                    </div>
                  </ul>
                </li>
              </ul>
            </div>
          </nav>
          <!-- End Navbar -->
        </div>

        <div class="container">
          <div class="page-inner">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <div class="card-title">Add New Employee Form</div>
                  </div>
                  <form:form method="POST" action="save">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-6 col-lg-4">
                        <div class="form-group">
                          <label for="name">Name</label>
                          <input
                            type="text" name="name"
                            class="form-control"
                            id="name" 
                            placeholder="Enter name"/>
                          
                        </div>
                        <div class="form-group">
                          <label for="salary">Salary</label>
                          <input
                            type="number" step="0.00" name="salary"
                            class="form-control"
                            id="salary"
                            placeholder="Salary"
                          />
                        </div>
                        
                        <div class="form-group">
                          <label for="designation">Position</label>
                          <input
                            type="text" name="designation"
                            class="form-control"
                            id="designation"
                            placeholder="Choose Position"/>                      
                        </div>                     
                      </div>
                     <div class="card-action">
                    <button type="submit" class="btn btn-success">Add New</button>
                    <button class="btn btn-danger">Cancel</button>
                  </div>
                      </div>
                    </div>
                    </form:form>
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>

		
        <footer class="footer">
          <div class="container-fluid d-flex justify-content-between">
            <nav class="pull-left">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="http://www.themekita.com">
                    ThemeKita
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Help </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#"> Licenses </a>
                </li>
              </ul>
            </nav>
            <div class="copyright">
              2024, made with <i class="fa fa-heart heart text-danger"></i> by
              <a href="http://www.themekita.com">ThemeKita</a>
            </div>
            <div>
              Distributed by
              <a target="_blank" href="https://themewagon.com/">ThemeWagon</a>.
            </div>
          </div>
        </footer>
      </div>
    </div>
    <!--   Core JS Files   -->
    <script src="${pageContext.request.contextPath}/assets/js/core/jquery-3.7.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/core/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/core/bootstrap.min.js"></script>

    <!-- jQuery Scrollbar -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>

    <!-- Chart JS -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/chart.js/chart.min.js"></script>

    <!-- jQuery Sparkline -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/jquery.sparkline/jquery.sparkline.min.js"></script>

    <!-- Chart Circle -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/chart-circle/circles.min.js"></script>

    <!-- Datatables -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/datatables/datatables.min.js"></script>

    <!-- Bootstrap Notify -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>

    <!-- jQuery Vector Maps -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/jsvectormap/jsvectormap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/plugin/jsvectormap/world.js"></script>

    <!-- Google Maps Plugin -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/gmaps/gmaps.js"></script>

    <!-- Sweet Alert -->
    <script src="${pageContext.request.contextPath}/assets/js/plugin/sweetalert/sweetalert.min.js"></script>

    <!-- Kaiadmin JS -->
    <script src="${pageContext.request.contextPath}/assets/js/kaiadmin.min.js"></script>

    <!-- Kaiadmin DEMO methods, don't include it in your project! -->
    <script src="${pageContext.request.contextPath}/assets/js/setting-demo2.js"></script>
  </body>
</html>