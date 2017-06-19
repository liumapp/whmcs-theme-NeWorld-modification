<?php
/**
 * Created by PhpStorm.
 * User: liumapp
 * Email: liumapp.com@gmail.com
 * homePage: http://www.liumapp.com
 * Date: 6/7/17
 * Time: 4:42 PM
*/

use WHMCS\Database\Capsule;


/**
 * @param $vars
 * @return array
 * home页面被加载，读取QA文章并载入变量中
 */
function hook_homapage_qa($vars)
{
    $newvars = [];
    $newvars['qa'] = Capsule::table('tblknowledgebase')->select('order','title' , 'article')->orderBy('order' , 'desc')->skip(0)->take(6)->get();
    return $newvars;
}

function hook_homepage_domain_price($vars)
{

    $newwars = [];
    $newwars['hottest'] = Capsule::table('tbldomainpricing')->select('id','extension','order','group')->where('group','=','hot')->orderBy('order' , 'asc')->skip(0)->take(5)->get();
    $newwars['hottestMoney'] = [];
    foreach ($newwars['hottest'] as $hottest) {
        $tmp = Capsule::table('tblpricing')->select('relid','msetupfee')->where([
            ['relid','=', $hottest->id],
            ['type' , '=' , 'domainregister']
        ])->get();
        $newwars['hottestMoney'][] = $tmp[0];
    }

    $newwars['newest'] = Capsule::table('tbldomainpricing')->select('id','extension','order','group')->where('group','=','new')->orderBy('order' , 'asc')->skip(0)->take(5)->get();
    $newwars['newestMoney'] = [];
    foreach ($newwars['newest'] as $newest) {
        $tmp2 = Capsule::table('tblpricing')->select('relid','msetupfee')->where([
            ['relid','=', $newest->id],
            ['type' , '=' , 'domainregister']
        ])->get();
        $newwars['newestMoney'][] = $tmp2[0];
    }

    return $newwars;

}

function test ()
{

}

function hook_pricing_domains ($vars)
{

    $data = [];
    $data['lmdomains'] = Capsule::table('tbldomainpricing')->select('id','extension','order')->orderBy('order' , 'asc')->get();
    $data['lmdomainsMoney'] = [];
    foreach ($data['lmdomains'] as $domain) {
        $tmp = Capsule::table('tblpricing')->select('relid','msetupfee')->where([
            ['relid','=', $domain->id],
            ['type' , '=' , 'domainregister']
        ])->get();
        $data['lmdomainsMoney'][] = $tmp[0];
    }
    return $data;
}

add_hook('ClientAreaPage', 1 , 'hook_homapage_qa');

add_hook('ClientAreaPage' , 1 , 'hook_homepage_domain_price');

add_hook('ClientAreaPage' , 1 , 'hook_pricing_domains');







