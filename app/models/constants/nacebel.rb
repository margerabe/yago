# frozen_string_literal: true

module Constants
  module Nacebel
    CODES = %w[10110 10120 10130 10200 10311 10312 10320 10391 10392 10393 10410 10420 10510 10520 10610 10620 10711
               10712 10720 10730 10810 10820 10830 10840 10850 10860 10890 10910 10920 11010 11020 11030 11040 11050 11060 11070 12000 13100 13200 13300 13910 13921 13929 13930 13940 13950 13960 13990 14110 14120 14130 14140 14191 14199 14200 14310 14390 15110 15120 15200 16100 16210 16220 16230 16240 16291 16292 17110 17120 17210 17220 17230 17240 17290 18110 18120 18130 18140 18200 19100 19200 20110 20120 20130 20140 20150 20160 20170 20200 20300 20411 20412 20420 20510 20520 20530 20590 20600 21100 21201 21209 22110 22190 22210 22220 22230 22290 23110 23120 23130 23140 23190 23200 23310 23321 23322 23410 23420 23430 23440 23490 23510 23520 23610 23620 23630 23640 23650 23690 23700 23910 23990 24100 24200 24310 24320 24330 24340 24410 24420 24430 24440 24450 24460 24510 24520 24530 24540 25110 25120 25210 25290 25300 25400 25501 25502 25610 25620 25710 25720 25731 25739 25910 25920 25930 25940 25991 25999 26110 26120 26200 26300 26400 26510 26520 26600 26700 26800 27110 27120 27200 27310 27320 27330 27401 27402 27510 27520 27900 28110 28120 28130 28140 28150 28210 28220 28230 28240 28250 28291 28292 28293 28294 28295 28296 28299 28300 28410 28490 28910 28920 28930 28940 28950 28960 28990 29100 29201 29202 29310 29320 30110 30120 30200 30300 30400 30910 30920 30990 31010 31020 31030 31091 31092 31099 32110 32121 32122 32123 32124 32129 32130 32200 32300 32400 32500 32910 32990 33110 33120 33130 33140 33150 33160 33170 33190 33200 35110 35120 35130 35140 35210 35220 35230 35300 36000 37000 38110 38120 38211 38212 38213 38219 38221 38222 38310 38321 38322 38323 38329 39000 41101 41102 41201 41202 41203 42110 42120 42130 42211 42212 42219 42220 42911 42919 42990 43110 43120 43130 43211 43212 43221 43222 43291 43299 43310 43320 43331 43332 43333 43341 43342 43343 43390 43910 43991 43992 43993 43994 43995 43996 43999 45111 45112 45113 45191 45192 45193 45194 45201 45202 45203 45204 45205 45206 45209 45310 45320 45401 45402 46110 46120 46130 46140 46150 46160 46170 46180 46190 46211 46212 46213 46214 46215 46216 46220 46231 46232 46240 46311 46319 46321 46322 46331 46332 46341 46349 46350 46360 46370 46381 46382 46383 46389 46391 46392 46411 46412 46419 46421 46422 46423 46424 46425 46431 46432 46433 46441 46442 46450 46460 46471 46472 46473 46480 46491 46492 46493 46494 46495 46496 46497 46498 46499 46510 46520 46610 46620 46630 46640 46650 46660 46691 46692 46693 46694 46695 46696 46697 46699 46710 46720 46731 46732 46733 46734 46735 46736 46739 46741 46742 46751 46752 46761 46769 46771 46772 46779 46900 47111 47112 47113 47114 47115 47191 47192 47210 47221 47222 47230 47241 47242 47251 47252 47260 47291 47299 47300 47410 47420 47430 47511 47512 47513 47519 47521 47522 47523 47524 47525 47526 47527 47529 47530 47540 47591 47592 47593 47594 47599 47610 47620 47630 47640 47650 47711 47712 47713 47714 47715 47716 47721 47722 47730 47740 47750 47761 47762 47770 47781 47782 47783 47784 47785 47786 47787 47788 47789 47791 47792 47793 47810 47820 47890 47910 47990 49100 49200 49310 49320 49390 49410 49420 49500 50100 50200 50300 50400 51100 51210 51220 52100 52210 52220 52230 52241 52249 52290 53100 53200 55100 55201 55202 55203 55204 55209 55300 55900 56101 56102 56210 56290 56301 56302 56309 58110 58120 58130 58140 58190 58210 58290 59111 59112 59113 59114 59120 59130 59140 59201 59202 59203 59209 60100 60200 61100 61200 61300 61900 62010 62020 62030 62090 63110 63120 63910 63990 64110 64190 64200 64300 64910 64921 64922 64929 64991 64992 64999 65111 65112 65121 65122 65200 65300 66110 66120 66191 66199 66210 66220 66290 66300 68100 68201 68202 68203 68204 68311 68312 68321 68322 69101 69102 69103 69109 69201 69202 69203 70100 70210 70220 71111 71112 71113 71121 71122 71201 71209 72110 72190 72200 73110 73120 73200 74101 74102 74103 74104 74105 74109 74201 74202 74209 74300 74901 74909 75000 77110 77120 77210 77220 77291 77292 77293 77294 77295 77296 77299 77310 77320 77330 77340 77350 77391 77392 77393 77394 77399 77400 78100 78200 78300 79110 79120 79901 79909 80100 80200 80300 81100 81210 81220 81290 81300 82110 82190 82200 82300 82910 82920 82990 84111 84112 84113 84114 84115 84119 84120 84130 84210 84220 84231 84232 84239 84241 84242 84249 84250 84301 84302 84309 85101 85102 85103 85104 85105 85106 85109 85201 85202 85203 85204 85205 85206 85207 85209 85311 85312 85313 85314 85319 85321 85322 85323 85324 85325 85326 85329 85410 85421 85422 85429 85510 85520 85531 85532 85591 85592 85593 85599 85601 85609 86101 86102 86103 86104 86109 86210 86220 86230 86901 86902 86903 86904 86905 86906 86907 86909 87101 87109 87201 87202 87203 87204 87205 87209 87301 87302 87303 87304 87309 87901 87902 87909 88101 88102 88103 88104 88109 88911 88912 88919 88991 88992 88993 88994 88995 88996 88999 90011 90012 90021 90022 90023 90029 90031 90032 90041 90042 91011 91012 91020 91030 91041 91042 92000 93110 93121 93122 93123 93124 93125 93126 93127 93128 93129 93130 93191 93192 93199 93211 93212 93291 93292 93299 94110 94120 94200 94910 94920 94991 94992 94993 94994 94995 94999 95110 95120 95210 95220 95230 95240 95250 95290 96011 96012 96021 96022 96031 96032 96040 96091 96092 96093 96094 96095 96099 97000 98100 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 98200 99000].freeze
  end
end
