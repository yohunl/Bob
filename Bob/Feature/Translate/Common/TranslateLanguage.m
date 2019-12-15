//
//  TranslateLanguage.m
//  Bob
//
//  Created by ripper on 2019/11/14.
//  Copyright © 2019 ripperhe. All rights reserved.
//

#import "TranslateLanguage.h"

NSString * _Nullable LanguageDescFromEnum(Language lang) {
    static NSDictionary *_descDict = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _descDict = @{
            @(Language_auto): @"自动",
            @(Language_zh_Hans): @"中文简体",
            @(Language_zh_Hant): @"中文繁体",
            @(Language_yue): @"粤语",
            @(Language_wyw): @"文言文",
            @(Language_en): @"英语",
            @(Language_ja): @"日语",
            @(Language_ko): @"韩语",
            @(Language_fr): @"法语",
            @(Language_es): @"西班牙语",
            @(Language_th): @"泰语",
            @(Language_ar): @"阿拉伯语",
            @(Language_ru): @"俄语",
            @(Language_pt): @"葡萄牙语",
            @(Language_de): @"德语",
            @(Language_it): @"意大利语",
            @(Language_el): @"希腊语",
            @(Language_nl): @"荷兰语",
            @(Language_pl): @"波兰语",
            @(Language_bg): @"保加利亚语",
            @(Language_et): @"爱沙尼亚语",
            @(Language_da): @"丹麦语",
            @(Language_fi): @"芬兰语",
            @(Language_cs): @"捷克语",
            @(Language_ro): @"罗马尼亚语",
            @(Language_sl): @"斯洛文尼亚语",
            @(Language_sv): @"瑞典语",
            @(Language_hu): @"匈牙利语",
            @(Language_vi): @"越南语",
            @(Language_id): @"印尼语",
            @(Language_af): @"南非语",
            @(Language_bs): @"波斯尼亚语",
            @(Language_ca): @"加泰隆语",
            @(Language_hr): @"克罗地亚语",
            @(Language_fj): @"斐济语",
            @(Language_ht): @"海地克里奥尔语",
            @(Language_he): @"希伯来语",
            @(Language_hi): @"印地语",
            @(Language_mww): @"白苗语",
            @(Language_sw): @"斯瓦希里语",
            @(Language_tlh): @"克林贡语",
            @(Language_lv): @"拉脱维亚语",
            @(Language_lt): @"立陶宛语",
            @(Language_ms): @"马来语",
            @(Language_mt): @"马耳他语",
            @(Language_no): @"挪威语",
            @(Language_fa): @"波斯语",
            @(Language_otq): @"克雷塔罗奥托米语",
            @(Language_sr_Cyrl): @"塞尔维亚语-西里尔文",
            @(Language_sr_Latn): @"塞尔维亚语-拉丁文",
            @(Language_sk): @"斯洛伐克语",
            @(Language_ty): @"塔希提语",
            @(Language_to): @"汤加语",
            @(Language_tr): @"土耳其语",
            @(Language_uk): @"乌克兰语",
            @(Language_ur): @"乌尔都语",
            @(Language_cy): @"威尔士语",
            @(Language_yua): @"尤卡坦玛雅语",
            @(Language_sq): @"阿尔巴尼亚语",
            @(Language_am): @"阿姆哈拉语",
            @(Language_hy): @"亚美尼亚语",
            @(Language_az): @"阿塞拜疆语",
            @(Language_bn): @"孟加拉语",
            @(Language_eu): @"巴斯克语",
            @(Language_be): @"白俄罗斯语",
            @(Language_ceb): @"宿务语",
            @(Language_co): @"科西嘉语",
            @(Language_eo): @"世界语",
            @(Language_tl): @"菲律宾语",
            @(Language_fy): @"弗里西语",
            @(Language_gl): @"加利西亚语",
            @(Language_ka): @"格鲁吉亚语",
            @(Language_gu): @"古吉拉特语",
            @(Language_ha): @"豪萨语",
            @(Language_haw): @"夏威夷语",
            @(Language_is): @"冰岛语",
            @(Language_ig): @"伊博语",
            @(Language_ga): @"爱尔兰语",
            @(Language_jw): @"爪哇语",
            @(Language_kn): @"卡纳达语",
            @(Language_kk): @"哈萨克语",
            @(Language_km): @"高棉语",
            @(Language_ku): @"库尔德语",
            @(Language_ky): @"柯尔克孜语",
            @(Language_lo): @"老挝语",
            @(Language_la): @"拉丁语",
            @(Language_lb): @"卢森堡语",
            @(Language_mk): @"马其顿语",
            @(Language_mg): @"马尔加什语",
            @(Language_ml): @"马拉雅拉姆语",
            @(Language_mi): @"毛利语",
            @(Language_mr): @"马拉地语",
            @(Language_mn): @"蒙古语",
            @(Language_my): @"缅甸语",
            @(Language_ne): @"尼泊尔语",
            @(Language_ny): @"齐切瓦语",
            @(Language_ps): @"普什图语",
            @(Language_pa): @"旁遮普语",
            @(Language_sm): @"萨摩亚语",
            @(Language_gd): @"苏格兰盖尔语",
            @(Language_st): @"塞索托语",
            @(Language_sn): @"修纳语",
            @(Language_sd): @"信德语",
            @(Language_si): @"僧伽罗语",
            @(Language_so): @"索马里语",
            @(Language_su): @"巽他语",
            @(Language_tg): @"塔吉克语",
            @(Language_ta): @"泰米尔语",
            @(Language_te): @"泰卢固语",
            @(Language_uz): @"乌兹别克语",
            @(Language_xh): @"科萨语",
            @(Language_yi): @"意第绪语",
            @(Language_yo): @"约鲁巴语",
            @(Language_zu): @"祖鲁语",
        };
    });
    return [_descDict objectForKey:@(lang)];
}
