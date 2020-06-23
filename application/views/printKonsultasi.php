<!DOCTYPE html> 
<html><head> 
 <title>Pemeriksaan</title> 
 <style> 
  table{ 
   border-collapse: collapse; 
   width: 70%; 
   margin: 0 auto; 
  } 
  table th{ 
   border:1px solid #000; 
   padding: 3px; 
   font-weight: bold; 
   text-align: center; 
  } 
  table td{ 
   border: 1px solid #000; 
   padding: 3px; 
   vertical-align: top; 
  } 
 </style> 
</head><body> 
<h1><p style="text-align: center"><b>Data Pemeriksaan</b></p> </h1>
<table> 
 <tr> 
      <th>Nama Gejala</th>
 </tr> 
 <?php $id=0; foreach ($gejala as $key) { 
 $id++; 
 ?> 
  <tr>
  <td><?php echo $key->nm_gejala;?></td>

  
  </tr> 
 <?php }?> 
</table> 

<table> 
 <tr> 
      <th>Nama Gejala</th>
      <th>Nama Gejala</th>
      <th>Nama Gejala</th>
 </tr> 
 <?php $id=0; foreach ($pemeriksaan as $key) { 
 $id++; 
 ?> 
  <tr>
  <td><?php echo $key->tgl_pemeriksaan;?></td>
  <td><?php echo $key->nm_penyakit;?></td>
  <td><?php echo $key->hasil;?></td>

  
  </tr> 
 <?php }?> 
</table> 
 
</body></html>