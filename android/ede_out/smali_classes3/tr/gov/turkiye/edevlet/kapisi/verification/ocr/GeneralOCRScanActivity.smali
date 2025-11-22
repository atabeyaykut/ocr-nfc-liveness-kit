.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;",
        "<init>",
        "()V",
        "ui-id-verification_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public final a:Ll9/e;

.field public b:Lzh/e;

.field public c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

.field public d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

.field public e:Lv/e;

.field public f:Lzh/f;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    const-string v0, "MRZ_RESULT"

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final b(Lorg/jmrtd/lds/icao/MRZInfo;)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lyd/a;->a:Lyd/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "general mrz "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "status"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    .line 5
    .line 6
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;

    .line 11
    .line 12
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    .line 18
    .line 19
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;

    .line 24
    .line 25
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 26
    .line 27
    const v0, 0x7f130287

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    .line 38
    .line 39
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;

    .line 44
    .line 45
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    .line 51
    .line 52
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;

    .line 57
    .line 58
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 59
    .line 60
    new-instance v0, Lnf/a;

    .line 61
    .line 62
    const/16 v1, 0x10

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->a:Ll9/e;

    .line 71
    .line 72
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;

    .line 77
    .line 78
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardGeneraOcrBinding;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 79
    .line 80
    new-instance v0, Lzd/a;

    .line 81
    .line 82
    const/16 v1, 0x13

    .line 83
    .line 84
    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    const p1, 0x7f0a00bf

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 98
    .line 99
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 100
    .line 101
    const/4 v0, 0x0

    .line 102
    if-nez p1, :cond_0

    .line 103
    .line 104
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 105
    .line 106
    const-string v1, "Preview is null"

    .line 107
    .line 108
    new-array v2, v0, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p1, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    const p1, 0x7f0a018b

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 121
    .line 122
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 123
    .line 124
    if-nez p1, :cond_1

    .line 125
    .line 126
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 127
    .line 128
    const-string v1, "graphicOverlay is null"

    .line 129
    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    .line 132
    invoke-virtual {p1, v1, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 136
    .line 137
    if-nez p1, :cond_3

    .line 138
    .line 139
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 140
    .line 141
    if-eqz p1, :cond_2

    .line 142
    .line 143
    new-instance v0, Lzh/e;

    .line 144
    .line 145
    invoke-direct {v0, p0, p1}, Lzh/e;-><init>(Landroid/app/Activity;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_2
    const/4 v0, 0x0

    .line 150
    :goto_0
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 151
    .line 152
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lzh/e;->d()V

    .line 156
    .line 157
    .line 158
    :cond_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 159
    .line 160
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a$a;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p1, Lzh/e;->m:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v2, p1, Lzh/e;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 172
    .line 173
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    .line 174
    .line 175
    .line 176
    iget-object v2, p1, Lzh/e;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;

    .line 177
    .line 178
    if-eqz v2, :cond_4

    .line 179
    .line 180
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;->b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    .line 181
    .line 182
    invoke-interface {v2}, Lc8/c;->close()V

    .line 183
    .line 184
    .line 185
    :cond_4
    iput-object v0, p1, Lzh/e;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/a;

    .line 186
    .line 187
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .line 189
    monitor-exit v1

    .line 190
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->s()V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :catchall_0
    move-exception p1

    .line 195
    monitor-exit v1

    .line 196
    throw p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzh/e;->c()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->f:Lzh/f;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->e:Lv/e;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lzh/e;->e()V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->s()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lzh/f;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lzh/f;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->f:Lzh/f;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final s()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 11
    .line 12
    const-string v2, "resume: Preview is null"

    .line 13
    .line 14
    new-array v3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 24
    .line 25
    const-string v2, "resume: graphOverlay is null"

    .line 26
    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 38
    .line 39
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 40
    .line 41
    iput-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Lzh/e;->e()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->d:Lzh/e;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    iput-boolean v2, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->b:Z

    .line 58
    .line 59
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralCameraSourcePreview;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    sget-object v2, Lyd/a;->a:Lyd/a$a;

    .line 65
    .line 66
    const-string v3, "Unable to start camera source. "

    .line 67
    .line 68
    invoke-static {v3, v0}, Landroidx/room/util/a;->c(Ljava/lang/String;Ljava/io/IOException;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {v2, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lzh/e;->c()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GeneralOCRScanActivity;->b:Lzh/e;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 90
    .line 91
    const-string v2, "cameraSource is null"

    .line 92
    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 94
    .line 95
    invoke-virtual {v0, v2, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_0
    return-void
.end method
