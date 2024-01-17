<?php


use CodeIgniter\Router\RouteCollection;


/**
 * @var RouteCollection $routes
 */


$routes->get('/', 'Halaman::getIndex');
$routes->get('/pages/about', 'Halaman::getAbout');
$routes->get('/pages/contact', 'Halaman::getContact');
$routes->get('/Komik', 'Komik::getIndex');
$routes->get('/komik/create', 'Komik::create');
$routes->get('/komik/save', 'Komik::save');
$routes->post('/komik/save', 'Komik::save');
$routes->delete('/komik/(:num)', 'Komik::delete/1');

$routes->get('/komik/(:segment)', 'Komik::detail/$1');
$routes->get('/komik/delete/(:segment)', 'Komik::delete/$1');




$routes->get('home/coba', 'Home::Coba');
$routes->get('admin/siswa', 'Admin\Siswa::getMurid');

