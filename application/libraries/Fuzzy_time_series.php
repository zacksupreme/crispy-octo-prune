<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
 
class Fuzzy_time_series
{
      private $ci;
      private $data_interval = array();
      private $fuzzyfikasi = array();
      private $array_linguistik = array();
      private $array_relation = array();
      private $array_total_value_row = array();

      public function __construct(){
         $this->ci = & get_instance();
      }

      public function initialize(){
         $this->set_data_interval();
         $this->set_fuzzyfikasi();
         $this->set_array_linguistik();
         $this->set_array_relation();
         $this->set_array_total_value_row();
      }

      public function set_data_interval(){
         $this->data_interval = $this->ci->db->query("select * from data_interval order by data_interval_id asc")->result();
      }

      public function set_fuzzyfikasi(){
         $this->fuzzyfikasi = $this->ci->db->query("select * from fuzzyfikasi order by fuzzyfikasi_id asc")->result();
      }

      public function set_array_linguistik(){
         foreach($this->fuzzyfikasi as $f){
            array_push($this->array_linguistik,$f->fuzzyfikasi_linguistik_value);
         }
      }

      public function set_array_relation(){
         foreach($this->array_linguistik as $key=>$val){
            if(isset($this->array_linguistik[$key+1])){
               if(isset($this->array_relation[$this->array_linguistik[$key+1].'-'.$this->array_linguistik[$key]])){
                  $this->array_relation[$this->array_linguistik[$key+1].'-'.$this->array_linguistik[$key]] +=1;
               }else{
                  $this->array_relation[$this->array_linguistik[$key+1].'-'.$this->array_linguistik[$key]] = 1;
               }
            }
         }
      }

      public function set_array_total_value_row(){
         $total_linguistik = count($this->data_interval);
         for ($i=1;$i<=$total_linguistik;$i++) {
            $this->array_total_value_row[$i] = 0;
            for($j=1;$j<=$total_linguistik;$j++){
               $count_1 = 0;
               $count_2 = 0;
               if(isset($this->array_relation['A'.$i.'-'.'A'.$j])){
                  $count_1 = $this->array_relation['A'.$i.'-'.'A'.$j];
               }else if(isset($this->array_relation['A'.$j.'-'.'A'.$i])){
                  $count_2 = $this->array_relation['A'.$j.'-'.'A'.$i];
               }
               $this->array_total_value_row[$i]+= $count_1+$count_2;
            }
         }
      }

      public function calculate($value){
         $index = 0;
         foreach($this->data_interval as $key=>$val){
            if($key==0){
               if($value>=$val->data_interval_min && $value<=$val->data_interval_max){
                  $index = $key;
               }
            }else{
               if($value>$val->data_interval_min && $value<=$val->data_interval_max){
                  $index = $key;
               }
            }
         }
         $index +=1;
         $forecasting_value = 0;
         $total_linguistik = count($this->data_interval);
         for($i=1;$i<=$total_linguistik;$i++){
            $count_1 = 0;
            $count_2 = 0;
            if(isset($this->array_relation['A'.$index.'-'.'A'.$i])){
               $count_1 = $this->array_relation['A'.$index.'-'.'A'.$i];
            }else if(isset($this->array_relation['A'.$i.'-'.'A'.$index])){
               $count_2 = $this->array_relation['A'.$i.'-'.'A'.$index];
            }
            $count = $count_1+$count_2;
            $median = ($this->data_interval[$index-1]->data_interval_min + $this->data_interval[$index-1]->data_interval_max)/2;
            $forecasting_value += $median*($count/$this->array_total_value_row[$index]);
         }
         return $forecasting_value;
      }

      private function find_linguistik_val($search_val){
         foreach($this->data_interval as $key=>$val){
            if($key==0){
               if($search_val>=$val->data_interval_min && $search_val<=$val->data_interval_max){
                  return $val->data_interval_linguistik_value;
               }
            }else{
               if($search_val>$val->data_interval_min && $search_val<=$val->data_interval_max){
                  return $val->data_interval_linguistik_value;
               }
            }
         }
      } 
}