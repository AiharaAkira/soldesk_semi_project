function deleteReview(n) {
  const ok = confirm("정말 삭제하실 거에요?");

  if (ok) {
    location.href = "DeletePost?no=" + n;
  }
}
