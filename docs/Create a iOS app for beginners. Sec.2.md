# Create a iOS app for beginners. Sec.2
#dev/swift #dev/iOS

## チュートリアル：カウンターアプリその1
#### はじめに
シンプルなカウンターアプリを作成してみます。
ボタンの役割と使い方、ラベル、変数、メソッド等の知識とともにアプリ作成の流れを学びます。

#### プロジェクトの作成
Mac App Storeからダウンロードしたソフトウェア**Xcode**を使ってアプリを作成していきます。
このXcodeで扱うアプリの単位を**プロジェクト**と呼びます。

1. 以下のいずれかの方法でXcodeを起動する
* DockのLaunchPadを起動して、一覧からXcodeを探してダブルクリック
* SpotLightに`xcode`と入力して`returnキー`
* Finderのサイドバーにある`アプリケーション`で表示される一覧からXcodeを探してダブルクリック

2. 表示されたWelcome to Xcode画面で、Create a new Xcode project をクリックする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020-02-28_11_36_55%202.png)

3. Choose a template for your new project画面で、iOSを選択→ApplicationからSingle View Appを選択してNextボタンをクリックする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020_02_28_11_39%202.png)

4. Choose options for your new project画面で、以下のように入力して**Next**ボタンをクリックする。
* Product Name：  Counter
* Tema：Nome
* Organization Name：Manabelle
* Organization Identifier：jp.manabelle
* Language：Swift
* User Interface：Storyboard

![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020_02_28_11_44%202.png)

5. 最後に**プロジェクト** の保存場所を選んで`Create`ボタンをクリックします。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-03-06%200.38.18%202.png)
これで**プロジェクト**「Counter」が作成されます。

#### Storyboardで画面レイアウトを作成する。
Storyboardというツールで画面のレイアウト（ボタンやラベルといった部品の配置）を作っていきます。
1. Xcode画面の左側にあるファイルエクスプローラー（ツリー状のリスト）からMain.storyboard をクリックする。
→すると画面中央にiPhoneの形状を模したエディタが表示される。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020-03-06_0_56_25%202.png)

2. 画面右上にある「+」のボタンをクリックしてライブラリパネル（画面部品が入った道具箱）を呼び出す。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard%203.png)

3. ライブラリパネルの一番上にある `Label`を画面中央のiPhoneの方へドラッグ＆ドロップする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard-2%202.png)

4. 中央付近に置いたLabelをクリックして選択状態（Labelの周囲が白い■で囲われる状態）」にして、

![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard-3%202.png)

画面右下の**Align**をクリックする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard_%E3%81%A8_Bear%202.png)

5. 表示された**Alignパネル**のHorizontally in ContainerとVertically in Containerのチェックを付けて、Add Constraintsボタンをクリックする。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard_%E3%81%A8_%E6%96%B0%E3%81%97%E3%81%84%E3%82%BF%E3%83%95%E3%82%99-2%202.png)


6. すると、適当に置いたLabelが正確に画面中央に設定される。
青い線は縦と横の中央位置にあることを示しています。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard-4%202.png)

7. 同じくLabelを選択したまま、画面右側のパネルで表示する文字やフォント、サイズを変更できる。
試しに文字を少し大きくして「Hello」と変更してみましょう。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Main_storyboard%204.png)

8. まだ1行もプログラムを書いていませんが、この状態でもアプリは動きます。
画面左上のアプリ名（Counter）が表示されている横でiPhoneの機種を選んで、再生マークのボタンをクリックすると、ビルド（プログラムの組み立て）が行われて、内蔵シミュレータが起動する。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/Counter_xcodeproj%202.png)

中央にLabelが表示されたiPhoneシミュレータが起動されればOK。
確認したら再生ボタン隣の四角いボタンをクリックしてシミュレーターを終了する。
![](Create%20a%20iOS%20app%20for%20beginners.%20Sec.2/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88_2020-03-06_2_07_07%202.png)

- - - -
** その2へ続く **











