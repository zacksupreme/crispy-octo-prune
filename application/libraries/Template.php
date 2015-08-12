<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

 
class Template
{
      var $template_data = array();
       
      function set($name, $value)
      {
         $this->template_data[$name] = $value;
      }
       
      function load($template = '', $view = '' , $view_data = array(), $return = FALSE)
      {               
         $this->set('contents', get_instance()->load->view($view, $view_data, TRUE));       
         return get_instance()->load->view('layout/'.$template, $this->template_data, $return);
      }
}