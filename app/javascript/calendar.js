// 予定にカーソルを合わせた時、吹き出し内の日時を変更
function plan(){
  const Title = document.getElementById("title");
  const Time = document.getElementById('start_time');
  const timeText = Time.textContent;
  Title.addEventListener("mouseover", () => {
    const sliceTime = timeText.slice(0,16); //日時の表示したい部分を指定
    Time.innerHTML = sliceTime;             //表示を書き換え
  });

  Title.addEventListener("mouseout", () => {
    Time.innerHTML = timeText              //書き換えた表示を元に戻す
  });

  //予定の時間表示を設定
  const displayTime = document.getElementById("display-time")
  const text = displayTime.textContent
  const sliceText = text.slice(11,16);
    displayTime.innerHTML = sliceText;
    console.log(sliceText)
};

window.addEventListener('load', plan);
