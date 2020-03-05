# Create a iOS app for beginners. Sec.3
#dev/swift #dev/iOS

## チュートリアル：カウンターアプリその2

#### その1で作成したアプリに引き続き部品を追加して行く。

1. Labelを追加した時と同じように、Xcodeの画面右上の「+」ボタンからLibraryパネルを呼び出し、**Button**を画面の中央より少し下の方にドラッグ＆ドロップします。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard-5.png)

2. ボタンの水平位置を設定する。
これもLabelと同様に、置いたButtonを選択状態にしてから画面右下のAlignパネルを表示、今度は横軸方向の中央（Horizontally）だけにチェックをして、Add 1 Constraintボタンをクリック
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard_%E3%81%A8_Counter___Tutorial_iOS_app_project_for_beginner_.png)

3. ボタンの垂直位置を設定する。
このままだと縦方向のポジションが決まらないので設定する。
同じくボタンが選択された状態のまま Add new constraintパネルを表示し、
上・右・左・下のうち、上の部分に**50**を入力する。（これはボタンからラベルへの距離を設定している）
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard_%E3%81%A8_Bear_%E3%81%A8_Counter___Tutorial_iOS_app_project_for_beginner_.png)

こうなっていればOK
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-03-06%203.07.35.png)


#### 画面とプログラムを繋ぐ
これで画面レイアウトに必要な部品を設置したので、今度はこれらを制御するプログラムを記述する。

1. まずはこの画面の裏側で制御しているSwiftプログラムを見てみる。
StoryboardのiPhoneの画面上にある3つのアイコンのうち一番左の丸いアイコンをクリックする（VIew Controllerと表示される）
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard-6.png)
このView Controllerというのがこの画面の名前。

2. この状態のままXcode左上にある図のボタンをクリックしてメニューを表示する。
次にメニューのAssistantをクリックする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Xcode_InterfaceBuilderKit_DocumentGearMenu_%E3%81%A8_Main_storyboard_%E3%81%A8_Bear_%E3%81%A8_Options.png)

3. Assistantエディタが起動し、iPhoneレイアウト画面の横にSwiftプログラムが表示される。
→これがView Controller
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-03-06%203.16.02.png)

4. プログラムの構造
* 1行目から7行目にある「//」で始まる部分は**コメント**というもの
`// コメントです`
	* 書かれてあってもプログラム実行時には無視される。
	* 署名は補足説明をするのに使う。
* プログラムコードは一番外側の`{`から`}`までの間に書かなくてはならない。
```
class ViewController: UIViewController {    // ←これがクラスのはじまり

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}　　　　// ←これがクラスの終わり
```

5. ラベルとプログラムの接続
Assistantエディタが表示された状態で、キーボードの`control`キーを**押したまま**ラベルからプログラムへ向かってドラッグする。
プログラム側の位置は12行目あたり。`class ViewController〜{`より後de,`override func 〜`より前。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard-7.png)

6. ラベルを変数にする
ドロップすると、小さいウィンドウが表示される。ここではラベルと接続する変数名を設定する。
今回は`countLabel`と入力する。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Insert_Connection_%E3%81%A8_Main_storyboard.png)

**connect**ボタンをクリックすると
`@IBOutlet var countLabel: UIView!`
という1行が追加される。

```
変数とは、プログラム中で値を入れておくことができる箱のようなもの。
プログラムの中で扱う値（数字や文字列など）はこの箱に入れる必要がある。
今回はカウントされた数字を表示されたラベルという部品を入れるために使う。
```

7. ボタンとプログラムの接続
次にボタンとプログラムを接続する。
ラベルと同様にキーボードの`control`キーを押しながらボタンからプログラムへ向かってドラッグする。
今度は20行目辺りにドロップする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Main_storyboard-8.png)

8. ボタンのアクションを設定する。
ボタンの場合はユーザーがタップとう動作（アクション）をした場合に受け付ける処理が必要です。
iOSでは画面部品からのアクションを受け取る部分をアクションメソッド（Action Method）と呼んでいます。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/Insert_Connection_%E3%81%A8_Main_storyboard-2.png)

Nameには `tappedButton`とし、`Connect`ボタンをクリックする。

9. ここまでのプログラム
```
import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: Any) {
    }
    
}

```

大文字・小文字や括弧の閉じ・開きのペアが正しいか等、、注意してみましょう。

10. 変数を追加
増減する数値を入れておくための箱を作成する。
	* プログラム（View Controller.swift）の14行目ぐらい（@IBOutletの次ぐらい）に以下の1行を追加する。
`var count = 0`
この1行により、プログラムが実行された時（画面が表示された時）に、`count`という箱には数字のゼロが入ることになります。

11. 変数の値を増やす
ボタンが押された時に数字を増やしたいので、処理を記述する。
```
    @IBAction func tappedButton(_ sender: Any) {
        count = count + 1
    }

```
アクションの処理の記述はこのfunc→ファンクション（機能）の括弧の内側に書く必要があります。

ということで、開き括弧の次の行を改行して、
そこに`count = count +1`と記述します。
これは、現在のカウント数値を格納している`count`変数に1を足したものを、再び`count`変数に入れる、という処理になります。
ややこしいですが、自分自身を1足して更新しています。

12. カウントをラベルに設定する。
せっかく増えたカウントも表示しなければユーザーには見えません。
先ほど変数化したラベルに値を入れてあげます。

編集するのはカウントアップしている処理のすぐ下、つまりアクション関数の中です。
```
    @IBAction func tappedButton(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
    }

```
ラベル`countLabel`にカウントアップした値を文字列として入れている、という処理ですね。


13. 実行してみる。
ここまででエラーが無ければXcodeの画面左上の再生ボタンでシミュレーターを実行してみましょう。
ボタンをクリックする度にカウントアップされましたでしょうか？
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.3/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-03-06%204.13.58.png)



カウントアプリが出来ました。
ここまでViewController.swiftのプログラムコードは以下のようになります。
```
import UIKit

class ViewController: UIViewController {

    @IBOutlet var countLabel: UILabel!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: Any) {
        count = count + 1
        countLabel.text = String(count)
    }
    
}

```

- - - -
#### 改良してみよう。
例えば以下のような改善案はどう実現されるでしょうか？
* ラベルの文字を起動時にHelloではなく0にしたい。
* カウントアップだけでなくカウントダウンさせたい。










