"Use STRING data type instead of CHAR.. As STRING operation maybe faster depending on the lenght of the field

  DATA: lv_str      TYPE string,
        lv_s1       TYPE string,
        lv_s2       TYPE string.

  DATA: lv_char(10) TYPE c,
        lv_c1(5)    TYPE c,
        lv_c2(5)    TYPE c.
        
      lv_c1 = 'MySAP'.
      lv_c2 = '.com'.
      CONCATENATE lv_c1 lv_c2 INTO lv_char.
      WRITE: lv_char.
      
      lv_s1 = 'MySAP'.
      lv_s2 = '.com'.
      CONCATENATE lv_s1 lv_s2 INTO lv_str.
      WRITE: lv_str.
