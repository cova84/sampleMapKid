//
//  ViewController.swift
//  sampleMapKid
//
//  Created by 小林由知 on 2017/11/08.
//  Copyright © 2017年 Yoshitomo Kobatashi. All rights reserved.

import UIKit

//地図用のフレームワーク読み込み
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // アヤラを中心にした地図を表示（宿題にて３点の中心に変更）
        // 1.中心となる場所の座標オブジェクト（緯度経度の情報が必要）を作成
        let coodineate = CLLocationCoordinate2DMake(10.323429,123.924266)

        // 2.縮尺を設定    (0.1, 0.1)で縮尺を指示(1, 1)が国全体
        let span = MKCoordinateSpanMake(0.05, 0.05)
        
        // 3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodineate, span)
        
        // 4.MapViewに範囲オブジェクトを設定
        mapView.setRegion(region, animated: true)
        
        // アヤラの座標にピンを立てる
        let ayara = CLLocationCoordinate2DMake(10.317347,123.905759)
        // 1.pinオブシェクトを生成
        let centerPin = MKPointAnnotation()
        
        // 2.pinの座標を設定
        //centerPin.coordinate = CLL
        centerPin.coordinate = ayara
        
        // 3.タイトル、サブタイトルを設定（タップした時に出る、吹き出しの情報）
        centerPin.title = "アヤラ"
        centerPin.subtitle = "にゃにゃ〜"
        
        // 4.mapViewにPinを追加
        mapView.addAnnotation(centerPin)
        
        
        // マンダウエセントラルポストオフィスを中心にした地図を表示
        let mandaueCentralPost = CLLocationCoordinate2DMake(10.322319,123.925327)
        // マンダウエセントラルポストオフィスの座標にピンを立てる
        let centerPin2 = MKPointAnnotation()
        centerPin2.coordinate = mandaueCentralPost
        centerPin2.title = "マンダウエ セントラス ポストオフィス"
        centerPin2.subtitle = "日本型からの国際郵便はここに届きます。"
        mapView.addAnnotation(centerPin2)

        
        // マンダウエポストオフィスを中心にした地図を表示
        let mandauePost = CLLocationCoordinate2DMake(10.325826, 123.942054)
        // マンダウエポストオフィスの座標にピンを立てる
        let centerPin3 = MKPointAnnotation()
        centerPin3.coordinate = mandauePost
        centerPin3.title = "マンダ　ウエポスト　オフィス"
        centerPin2.subtitle = "地元の郵便局です。"
        mapView.addAnnotation(centerPin3)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

