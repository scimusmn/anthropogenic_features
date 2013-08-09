Map {
  /*
  Default blue
  background-color: #b8dee6;
  */
  
  /*
  Deep map blue
  */
  background-color: #76B5EA;
  
  /*
  When doing exports, we generally don't export any background color
  so that the data can have a transparent background.
  */
}

/* Style for country boundaries when enabled */
#countries {
  /*::outline {*/
    /*line-color: #85c5d3;*/
    /*line-width: 2;*/
    /*line-join: round;*/
  /*}*/
  polygon-fill: #E8E0D8;
}

/* Railroads are black lines */
.rail {
  line-join: round;
  line-cap: round;
  ::case {
    line-width: 2;
    line-color:#CCC;
  }
  ::fill {
    line-width: 1;
    line-color:#000;
  }

  /* Rail hatch example
   * This doesn't look very good at the macro scale, but I want to keep it
   * here for future reference
   */
  /*::line, ::hatch { line-color: #777; }*/
  /*::line { line-width:1; }*/
  /*::hatch {*/
    /*line-width: 4;*/
    /*line-dasharray: 1, 24;*/
  /*}*/

}

.road {
  /*[ACC_DESCRI='Accurate'] {*/
  /*[RTT_DESCRI='Primary Route'] {*/
  [EXS>50] {
    ::case {
      line-width: 1.5;
      line-color:#666;
    }
    ::fill {
      line-width: 1;
      line-color:#FFF;
    }
  }
  /*::case {*/
    /*line-width: 1;*/
    /*line-color:#443f00;*/
  /*}*/
  /*::fill {*/
    /*line-width: .5;*/
    /*line-color:#fe3;*/
  /*}*/
}


#dams {
  /*[YEAR >=1750][YEAR <= 1800] {*/
  /*[YEAR >= 1900][YEAR <=1910] {*/
    /*
     * Export style
     * marker-width:16;*/
  [AREA_SKM <=100] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.017)";
  }
  [AREA_SKM >100][AREA_SKM <=500] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.002)";
  }
  [AREA_SKM >500][AREA_SKM <=1000] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.0015)";
  }
  [AREA_SKM >1000][AREA_SKM <=5000] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.0003)";
  }
  [AREA_SKM >5000][AREA_SKM <=10000] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.00025)";
  }
  [AREA_SKM >10000][AREA_SKM <=50000] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.00005)";
  }
  [AREA_SKM >50000][AREA_SKM <=100000] {
    point-file:url(icons/dam_black.svg);
    point-allow-overlap:true;
    point-transform:"rotate([DAM_HGT_M]), scale([AREA_SKM] * 0.00004)";
  }
}


#popbuiltupareap {
  marker-width:6;
  marker-fill:#f45;
  marker-line-color:#813;
  marker-allow-overlap:true;
}
