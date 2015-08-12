<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
/*
 * added by Rinaldi Guarsa
 * Oct 31, 2011
 */
class Meta_tag{
     
	var $title			= ''; // The page we are linking to
	var $description  	= ''; // Total number of items (database results)
	var $keywords	 	= ''; // Max number of items you want shown per page
	var $canonical	 	= ''; // Canonical Page
	var $robots	 		= 'noindex, nofollow'; // Robots
	var $og_sitename	= ''; // Canonical Page
	var $og_title	 	= ''; // Canonical Page
	var $og_url	 		= ''; // Canonical Page
	var $og_description	= ''; // Canonical Page
	var $og_image	= ''; // Canonical Page
	var $og_type	= ''; // Canonical Page
	var $fb_admin	= ''; // Canonical Page
	
	
	
	function __construct() {
        $this->ci = & get_instance();
    }
	 
    function initialize($params = array())
	{
		if (count($params) > 0)
		{
			foreach ($params as $key => $val)
			{
				if (isset($this->$key))
				{
					$this->$key = $val;
				}
			}		
		}
	}
	
	function get_meta_tag(){
		$m = '<title>'.$this->title.'</title>';
		if($this->description!=""){ 
			$m .= '<meta name="description" content="'.$this->description.'" />';
		}
		// if($this->keywords!=""){ 
			// $m .= '<meta name="keywords" content="'.$this->keywords.'" />';
		// }
		if($this->robots!=""){
			$m .= '<meta name="robots" content="'.$this->robots.'" />';
		}
			//$m .= '<meta http-equiv="content-language" content="en" />';
		if($this->canonical!=""){ 
			$m .= '<link rel="canonical" href="'.$this->canonical.'" />';
		}
		if($this->og_sitename!=""){
			$m .= '<meta property="og:site_name" content="'.$this->og_sitename.'" />';
		}
		if($this->og_title!=""){
			$m .= '<meta property="og:title" content="'.$this->og_title.'" />';
		}
		if($this->og_url!=""){
			$m .= '<meta property="og:url" content="'.$this->og_url.'" />';
		}
		if($this->og_description!=""){
			$m .= '<meta property="og:description" content="'.$this->og_description.'" />';
		}
		if($this->og_image!=""){
			$m .= '<meta property="og:image" content="'.$this->og_image.'" />';
		}
		if($this->og_type!=""){
			$m .= '<meta property="og:type" content="'.$this->og_type.'" />';
		}
		if($this->fb_admin!=""){
			$m .= '<meta property="fb:admin" content="'.$this->fb_admin.'" />';
		}
		echo $m;
		
	}
	
	
}