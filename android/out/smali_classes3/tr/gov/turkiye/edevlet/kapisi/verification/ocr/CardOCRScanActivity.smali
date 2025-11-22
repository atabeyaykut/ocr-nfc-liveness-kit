.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;",
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
.field public static final synthetic j:I


# instance fields
.field public final a:Ll9/e;

.field public b:Lzh/a;

.field public c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

.field public d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

.field public e:Lv/e;

.field public f:Lzh/b;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    const-string v0, "MRZ_RESULT"

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->g:Ljava/lang/String;

    const-string v0, "DOC_TYPE"

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->h:Ljava/lang/String;

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
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    .line 5
    .line 6
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;

    .line 11
    .line 12
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    .line 18
    .line 19
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;

    .line 24
    .line 25
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 26
    .line 27
    const v0, 0x7f1302a0

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    .line 38
    .line 39
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;

    .line 44
    .line 45
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    .line 51
    .line 52
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;

    .line 57
    .line 58
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 59
    .line 60
    new-instance v0, Lxf/d;

    .line 61
    .line 62
    const/16 v1, 0x11

    .line 63
    .line 64
    invoke-direct {v0, v1, p0}, Lxf/d;-><init>(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->a:Ll9/e;

    .line 71
    .line 72
    invoke-interface {p1}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;

    .line 77
    .line 78
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityCardOcrBinding;->b:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 79
    .line 80
    new-instance v0, Lbe/d;

    .line 81
    .line 82
    const/16 v1, 0xa

    .line 83
    .line 84
    invoke-direct {v0, v1, p0}, Lbe/d;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->h:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->h:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    const-string v0, "null cannot be cast to non-null type tr.gov.turkiye.edevlet.kapisi.verification.ocr.DocType"

    .line 113
    .line 114
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    check-cast p1, Lzh/c;

    .line 118
    .line 119
    :cond_0
    const p1, 0x7f0a00bf

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 127
    .line 128
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 132
    .line 133
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 134
    .line 135
    const-string v1, "Preview is null"

    .line 136
    .line 137
    new-array v2, v0, [Ljava/lang/Object;

    .line 138
    .line 139
    invoke-virtual {p1, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    const p1, 0x7f0a018b

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 150
    .line 151
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 152
    .line 153
    if-nez p1, :cond_2

    .line 154
    .line 155
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 156
    .line 157
    const-string v1, "graphicOverlay is null"

    .line 158
    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {p1, v1, v0}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    :cond_2
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 165
    .line 166
    if-nez p1, :cond_4

    .line 167
    .line 168
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 169
    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    new-instance v0, Lzh/a;

    .line 173
    .line 174
    invoke-direct {v0, p0, p1}, Lzh/a;-><init>(Landroid/app/Activity;Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    const/4 v0, 0x0

    .line 179
    :goto_0
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 180
    .line 181
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0}, Lzh/a;->d()V

    .line 185
    .line 186
    .line 187
    :cond_4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 188
    .line 189
    invoke-static {p1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 193
    .line 194
    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b$a;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, p1, Lzh/a;->m:Ljava/lang/Object;

    .line 198
    .line 199
    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v2, p1, Lzh/a;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 201
    .line 202
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;->a()V

    .line 203
    .line 204
    .line 205
    iget-object v2, p1, Lzh/a;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 206
    .line 207
    if-eqz v2, :cond_5

    .line 208
    .line 209
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;->b:Lcom/google/mlkit/vision/text/internal/TextRecognizerImpl;

    .line 210
    .line 211
    invoke-interface {v2}, Lc8/c;->close()V

    .line 212
    .line 213
    .line 214
    :cond_5
    iput-object v0, p1, Lzh/a;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/b;

    .line 215
    .line 216
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .line 218
    monitor-exit v1

    .line 219
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->s()V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :catchall_0
    move-exception p1

    .line 224
    monitor-exit v1

    .line 225
    throw p1
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzh/a;->c()V

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->f:Lzh/b;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->e:Lv/e;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->d:Lzh/a;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lzh/a;->e()V

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->s()V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lzh/b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lzh/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->f:Lzh/b;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->c:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 38
    .line 39
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->d:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 40
    .line 41
    iput-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->e:Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/GraphicOverlay;

    .line 42
    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    iget-object v3, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->d:Lzh/a;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {v3}, Lzh/a;->e()V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput-object v2, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->d:Lzh/a;

    .line 53
    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    iput-boolean v2, v0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->b:Z

    .line 58
    .line 59
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CameraSourcePreview;->b()V
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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Lzh/a;->c()V

    .line 83
    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/ocr/CardOCRScanActivity;->b:Lzh/a;

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
