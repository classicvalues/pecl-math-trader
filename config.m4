dnl $Id$
dnl config.m4 for extension trader

PHP_ARG_ENABLE(trader, whether to enable trader support,
[  --enable-trader           Enable trader support])

if test "$PHP_TA" != "no"; then
  TRADER_LIB_SOURCES="ta-lib/src/ta_common/ta_global.c \
    ta-lib/src/ta_common/ta_retcode.c \
    ta-lib/src/ta_common/ta_version.c \
	ta-lib/src/ta_func/ta_utility.c \
	ta-lib/src/ta_func/ta_ACOS.c \
	ta-lib/src/ta_func/ta_AD.c \
	ta-lib/src/ta_func/ta_ADD.c \
	ta-lib/src/ta_func/ta_ADOSC.c \
	ta-lib/src/ta_func/ta_ADX.c \
	ta-lib/src/ta_func/ta_ADXR.c \
	ta-lib/src/ta_func/ta_APO.c \
	ta-lib/src/ta_func/ta_AROON.c \
	ta-lib/src/ta_func/ta_AROONOSC.c \
	ta-lib/src/ta_func/ta_ASIN.c \
	ta-lib/src/ta_func/ta_ATAN.c \
	ta-lib/src/ta_func/ta_ATR.c \
	ta-lib/src/ta_func/ta_AVGPRICE.c \
	ta-lib/src/ta_func/ta_BBANDS.c \
	ta-lib/src/ta_func/ta_BETA.c \
	ta-lib/src/ta_func/ta_BOP.c \
	ta-lib/src/ta_func/ta_CCI.c \
	ta-lib/src/ta_func/ta_CDL2CROWS.c \
	ta-lib/src/ta_func/ta_CDL3BLACKCROWS.c \
	ta-lib/src/ta_func/ta_CDL3INSIDE.c \
	ta-lib/src/ta_func/ta_CDL3LINESTRIKE.c \
	ta-lib/src/ta_func/ta_CDL3OUTSIDE.c \
	ta-lib/src/ta_func/ta_CDL3STARSINSOUTH.c \
	ta-lib/src/ta_func/ta_CDL3WHITESOLDIERS.c \
	ta-lib/src/ta_func/ta_CDLABANDONEDBABY.c \
	ta-lib/src/ta_func/ta_CDLADVANCEBLOCK.c \
	ta-lib/src/ta_func/ta_CDLBELTHOLD.c \
	ta-lib/src/ta_func/ta_CDLBREAKAWAY.c \
	ta-lib/src/ta_func/ta_CDLCLOSINGMARUBOZU.c \
	ta-lib/src/ta_func/ta_CDLCONCEALBABYSWALL.c \
	ta-lib/src/ta_func/ta_CDLCOUNTERATTACK.c \
	ta-lib/src/ta_func/ta_CDLDARKCLOUDCOVER.c \
	ta-lib/src/ta_func/ta_CDLDOJI.c \
	ta-lib/src/ta_func/ta_CDLDOJISTAR.c \
	ta-lib/src/ta_func/ta_CDLDRAGONFLYDOJI.c \
	ta-lib/src/ta_func/ta_CDLENGULFING.c \
	ta-lib/src/ta_func/ta_CDLEVENINGDOJISTAR.c \
	ta-lib/src/ta_func/ta_CDLEVENINGSTAR.c \
	ta-lib/src/ta_func/ta_CDLGAPSIDESIDEWHITE.c \
	ta-lib/src/ta_func/ta_CDLGRAVESTONEDOJI.c \
	ta-lib/src/ta_func/ta_CDLHAMMER.c \
	ta-lib/src/ta_func/ta_CDLHANGINGMAN.c \
	ta-lib/src/ta_func/ta_CDLHARAMI.c \
	ta-lib/src/ta_func/ta_CDLHARAMICROSS.c \
	ta-lib/src/ta_func/ta_CDLHIGHWAVE.c \
	ta-lib/src/ta_func/ta_CDLHIKKAKE.c \
	ta-lib/src/ta_func/ta_CDLHIKKAKEMOD.c \
	ta-lib/src/ta_func/ta_CDLHOMINGPIGEON.c \
	ta-lib/src/ta_func/ta_CDLIDENTICAL3CROWS.c \
	ta-lib/src/ta_func/ta_CDLINNECK.c \
	ta-lib/src/ta_func/ta_CDLINVERTEDHAMMER.c \
	ta-lib/src/ta_func/ta_CDLKICKING.c \
	ta-lib/src/ta_func/ta_CDLKICKINGBYLENGTH.c \
	ta-lib/src/ta_func/ta_CDLLADDERBOTTOM.c \
	ta-lib/src/ta_func/ta_CDLLONGLEGGEDDOJI.c \
	ta-lib/src/ta_func/ta_CDLLONGLINE.c \
	ta-lib/src/ta_func/ta_CDLMARUBOZU.c \
	ta-lib/src/ta_func/ta_CDLMATCHINGLOW.c \
	ta-lib/src/ta_func/ta_CDLMATHOLD.c \
	ta-lib/src/ta_func/ta_CDLMORNINGDOJISTAR.c \
	ta-lib/src/ta_func/ta_CDLMORNINGSTAR.c \
	ta-lib/src/ta_func/ta_CDLONNECK.c \
	ta-lib/src/ta_func/ta_CDLPIERCING.c \
	ta-lib/src/ta_func/ta_CDLRICKSHAWMAN.c \
	ta-lib/src/ta_func/ta_CDLRISEFALL3METHODS.c \
	ta-lib/src/ta_func/ta_CDLSEPARATINGLINES.c \
	ta-lib/src/ta_func/ta_CDLSHOOTINGSTAR.c \
	ta-lib/src/ta_func/ta_CDLSHORTLINE.c \
	ta-lib/src/ta_func/ta_CDLSPINNINGTOP.c \
	ta-lib/src/ta_func/ta_CDLSTALLEDPATTERN.c \
	ta-lib/src/ta_func/ta_CDLSTICKSANDWICH.c \
	ta-lib/src/ta_func/ta_CDLTAKURI.c \
	ta-lib/src/ta_func/ta_CDLTASUKIGAP.c \
	ta-lib/src/ta_func/ta_CDLTHRUSTING.c \
	ta-lib/src/ta_func/ta_CDLTRISTAR.c \
	ta-lib/src/ta_func/ta_CDLUNIQUE3RIVER.c \
	ta-lib/src/ta_func/ta_CDLUPSIDEGAP2CROWS.c \
	ta-lib/src/ta_func/ta_CDLXSIDEGAP3METHODS.c \
	ta-lib/src/ta_func/ta_CEIL.c \
	ta-lib/src/ta_func/ta_CMO.c \
	ta-lib/src/ta_func/ta_CORREL.c \
	ta-lib/src/ta_func/ta_COS.c \
	ta-lib/src/ta_func/ta_COSH.c \
	ta-lib/src/ta_func/ta_DEMA.c \
	ta-lib/src/ta_func/ta_DIV.c \
	ta-lib/src/ta_func/ta_DX.c \
	ta-lib/src/ta_func/ta_EMA.c \
	ta-lib/src/ta_func/ta_EXP.c \
	ta-lib/src/ta_func/ta_FLOOR.c \
	ta-lib/src/ta_func/ta_HT_DCPERIOD.c \
	ta-lib/src/ta_func/ta_HT_DCPHASE.c \
	ta-lib/src/ta_func/ta_HT_PHASOR.c \
	ta-lib/src/ta_func/ta_HT_SINE.c \
	ta-lib/src/ta_func/ta_HT_TRENDLINE.c \
	ta-lib/src/ta_func/ta_HT_TRENDMODE.c \
	ta-lib/src/ta_func/ta_KAMA.c \
	ta-lib/src/ta_func/ta_LINEARREG.c \
	ta-lib/src/ta_func/ta_LINEARREG_ANGLE.c \
	ta-lib/src/ta_func/ta_LINEARREG_INTERCEPT.c \
	ta-lib/src/ta_func/ta_LINEARREG_SLOPE.c \
	ta-lib/src/ta_func/ta_LN.c \
	ta-lib/src/ta_func/ta_LOG10.c \
	ta-lib/src/ta_func/ta_MA.c \
	ta-lib/src/ta_func/ta_MACD.c \
	ta-lib/src/ta_func/ta_MACDEXT.c \
	ta-lib/src/ta_func/ta_MACDFIX.c \
	ta-lib/src/ta_func/ta_MAMA.c \
	ta-lib/src/ta_func/ta_MAVP.c \
	ta-lib/src/ta_func/ta_MAX.c \
	ta-lib/src/ta_func/ta_MAXINDEX.c \
	ta-lib/src/ta_func/ta_MEDPRICE.c \
	ta-lib/src/ta_func/ta_MFI.c \
	ta-lib/src/ta_func/ta_MIDPOINT.c \
	ta-lib/src/ta_func/ta_MIDPRICE.c \
	ta-lib/src/ta_func/ta_MIN.c \
	ta-lib/src/ta_func/ta_MININDEX.c \
	ta-lib/src/ta_func/ta_MINMAX.c \
	ta-lib/src/ta_func/ta_MINMAXINDEX.c \
	ta-lib/src/ta_func/ta_MINUS_DI.c \
	ta-lib/src/ta_func/ta_MINUS_DM.c \
	ta-lib/src/ta_func/ta_MOM.c \
	ta-lib/src/ta_func/ta_MULT.c \
	ta-lib/src/ta_func/ta_NATR.c \
	ta-lib/src/ta_func/ta_OBV.c \
	ta-lib/src/ta_func/ta_PLUS_DI.c \
	ta-lib/src/ta_func/ta_PLUS_DM.c \
	ta-lib/src/ta_func/ta_PPO.c \
	ta-lib/src/ta_func/ta_ROC.c \
	ta-lib/src/ta_func/ta_ROCP.c \
	ta-lib/src/ta_func/ta_ROCR.c \
	ta-lib/src/ta_func/ta_ROCR100.c \
	ta-lib/src/ta_func/ta_RSI.c \
	ta-lib/src/ta_func/ta_SAR.c \
	ta-lib/src/ta_func/ta_SAREXT.c \
	ta-lib/src/ta_func/ta_SIN.c \
	ta-lib/src/ta_func/ta_SINH.c \
	ta-lib/src/ta_func/ta_SMA.c \
	ta-lib/src/ta_func/ta_SQRT.c \
	ta-lib/src/ta_func/ta_STDDEV.c \
	ta-lib/src/ta_func/ta_STOCH.c \
	ta-lib/src/ta_func/ta_STOCHF.c \
	ta-lib/src/ta_func/ta_STOCHRSI.c \
	ta-lib/src/ta_func/ta_SUB.c \
	ta-lib/src/ta_func/ta_SUM.c \
	ta-lib/src/ta_func/ta_T3.c \
	ta-lib/src/ta_func/ta_TAN.c \
	ta-lib/src/ta_func/ta_TANH.c \
	ta-lib/src/ta_func/ta_TEMA.c \
	ta-lib/src/ta_func/ta_TRANGE.c \
	ta-lib/src/ta_func/ta_TRIMA.c \
	ta-lib/src/ta_func/ta_TRIX.c \
	ta-lib/src/ta_func/ta_TSF.c \
	ta-lib/src/ta_func/ta_TYPPRICE.c \
	ta-lib/src/ta_func/ta_ULTOSC.c \
	ta-lib/src/ta_func/ta_VAR.c \
	ta-lib/src/ta_func/ta_WCLPRICE.c \
	ta-lib/src/ta_func/ta_WILLR.c \
	ta-lib/src/ta_func/ta_WMA.c \
	functions/trader_acos.c \
	functions/trader_ad.c \
	functions/trader_add.c \
	functions/trader_adosc.c \
	functions/trader_adx.c \
	functions/trader_adxr.c \
	functions/trader_apo.c \
	functions/trader_aroon.c \
	functions/trader_aroonosc.c \
	functions/trader_asin.c \
	functions/trader_atan.c \
	functions/trader_atr.c \
	functions/trader_avgprice.c \
	functions/trader_bbands.c \
	functions/trader_beta.c \
	functions/trader_bop.c \
	functions/trader_cci.c \
	functions/trader_cdl2crows.c \
	functions/trader_cdl3blackcrows.c \
	functions/trader_cdl3inside.c \
	functions/trader_cdl3linestrike.c \
	functions/trader_cdl3outside.c \
	functions/trader_cdl3starsinsouth.c \
	functions/trader_cdl3whitesoldiers.c \
	functions/trader_cdlabandonedbaby.c \
	functions/trader_cdladvanceblock.c \
	functions/trader_cdlbelthold.c \
	functions/trader_cdlbreakaway.c \
	functions/trader_cdlclosingmarubozu.c \
	functions/trader_cdlconcealbabyswall.c \
	functions/trader_cdlcounterattack.c \
	functions/trader_cdldarkcloudcover.c \
	functions/trader_cdldoji.c \
	functions/trader_cdldojistar.c \
	functions/trader_cdldragonflydoji.c \
	functions/trader_cdlengulfing.c \
	functions/trader_cdleveningdojistar.c \
	functions/trader_cdleveningstar.c \
	functions/trader_cdlgapsidesidewhite.c \
	functions/trader_cdlgravestonedoji.c \
	functions/trader_cdlhammer.c \
	functions/trader_cdlhangingman.c \
	functions/trader_cdlharami.c \
	functions/trader_cdlharamicross.c \
	functions/trader_cdlhighwave.c \
	functions/trader_cdlhikkake.c \
	functions/trader_cdlhikkakemod.c \
	functions/trader_cdlhomingpigeon.c \
	functions/trader_cdlidentical3crows.c \
	functions/trader_cdlinneck.c \
	functions/trader_cdlinvertedhammer.c \
	functions/trader_cdlkickingbylength.c \
	functions/trader_cdlkicking.c \
	functions/trader_cdlladderbottom.c \
	functions/trader_cdllongleggeddoji.c \
	functions/trader_cdllongline.c \
	functions/trader_cdlmarubozu.c \
	functions/trader_cdlmatchinglow.c \
	functions/trader_cdlmathold.c \
	functions/trader_cdlmorningdojistar.c \
	functions/trader_cdlmorningstar.c \
	functions/trader_cdlonneck.c \
	functions/trader_cdlpiercing.c \
	functions/trader_cdlrickshawman.c \
	functions/trader_cdlrisefall3methods.c \
	functions/trader_cdlseparatinglines.c \
	functions/trader_cdlshootingstar.c \
	functions/trader_cdlshortline.c \
	functions/trader_cdlspinningtop.c \
	functions/trader_cdlstalledpattern.c \
	functions/trader_cdlsticksandwich.c \
	functions/trader_cdltakuri.c \
	functions/trader_cdltasukigap.c \
	functions/trader_cdlthrusting.c \
	functions/trader_cdltristar.c \
	functions/trader_cdlunique3river.c \
	functions/trader_cdlupsidegap2crows.c \
	functions/trader_cdlxsidegap3methods.c \
	functions/trader_ceil.c \
	functions/trader_cmo.c \
	functions/trader_correl.c \
	functions/trader_cos.c \
	functions/trader_cosh.c \
	functions/trader_dema.c \
	functions/trader_div.c \
	functions/trader_dx.c \
	functions/trader_ema.c \
	functions/trader_exp.c \
	functions/trader_floor.c \
	functions/trader_ht_dcperiod.c \
	functions/trader_ht_dcphase.c \
	functions/trader_ht_phasor.c \
	functions/trader_ht_sine.c \
	functions/trader_ht_trendline.c \
	functions/trader_ht_trendmode.c \
	functions/trader_kama.c \
	functions/trader_linearreg_angle.c \
	functions/trader_linearreg.c \
	functions/trader_linearreg_intercept.c \
	functions/trader_linearreg_slope.c \
	functions/trader_ln.c \
	functions/trader_log10.c \
	functions/trader_ma.c \
	functions/trader_macd.c \
	functions/trader_macdext.c \
	functions/trader_macdfix.c \
	functions/trader_mama.c \
	functions/trader_mavp.c \
	functions/trader_max.c \
	functions/trader_maxindex.c \
	functions/trader_medprice.c \
	functions/trader_mfi.c \
	functions/trader_midpoint.c \
	functions/trader_midprice.c \
	functions/trader_min.c \
	functions/trader_minindex.c \
	functions/trader_minmax.c \
	functions/trader_minmaxindex.c \
	functions/trader_minus_di.c \
	functions/trader_minus_dm.c \
	functions/trader_mom.c \
	functions/trader_mult.c \
	functions/trader_natr.c \
	functions/trader_obv.c \
	functions/trader_plus_di.c \
	functions/trader_plus_dm.c \
	functions/trader_ppo.c \
	functions/trader_roc.c \
	functions/trader_rocp.c \
	functions/trader_rocr100.c \
	functions/trader_rocr.c \
	functions/trader_rsi.c \
	functions/trader_sar.c \
	functions/trader_sarext.c \
	functions/trader_sin.c \
	functions/trader_sinh.c \
	functions/trader_sma.c \
	functions/trader_sqrt.c \
	functions/trader_stddev.c \
	functions/trader_stoch.c \
	functions/trader_stochf.c \
	functions/trader_stochrsi.c \
	functions/trader_sub.c \
	functions/trader_sum.c \
	functions/trader_t3.c \
	functions/trader_tan.c \
	functions/trader_tanh.c \
	functions/trader_tema.c \
	functions/trader_trange.c \
	functions/trader_trima.c \
	functions/trader_trix.c \
	functions/trader_tsf.c \
	functions/trader_typprice.c \
	functions/trader_ultosc.c \
	functions/trader_var.c \
	functions/trader_wclprice.c \
	functions/trader_willr.c \
	functions/trader_wma.c"

  PHP_NEW_EXTENSION(trader, $TRADER_LIB_SOURCES trader.c, $ext_shared)

  PHP_ADD_INCLUDE($ext_builddir/ta-lib/include)
  PHP_ADD_INCLUDE($ext_builddir/ta-lib/src/ta_common)
  PHP_ADD_INCLUDE($ext_builddir/functions)
fi
