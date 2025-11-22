.class public final Lzh/f;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V
    .locals 4

    iput-object p1, p0, Lzh/f;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

    const-wide/16 v0, 0x4e20

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 6

    .line 1
    iget-object v0, p0, Lzh/f;->a:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;

    .line 2
    .line 3
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lzh/e;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v1, Lv/e;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const v2, 0x7f130197

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x6

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v1, v2, v4, v3}, Lv/e;->c(Lv/e;Ljava/lang/Integer;Ljava/lang/CharSequence;I)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lv/e;->b(Z)V

    .line 33
    .line 34
    .line 35
    const v2, 0x7f1301d8

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lzh/f$a;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Lzh/f$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-static {v1, v2, v4, v3, v5}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 49
    .line 50
    .line 51
    const v2, 0x7f1301d7

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    new-instance v3, Lzh/f$b;

    .line 59
    .line 60
    invoke-direct {v3, v0}, Lzh/f$b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2, v3}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Lv/e;->show()V

    .line 67
    .line 68
    .line 69
    iput-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->e:Lv/e;

    .line 70
    .line 71
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    return-void
.end method
