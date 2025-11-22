.class public final Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;
.super Lu8/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0008H\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\tH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\nH\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000bH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;",
        "Lu8/a;",
        "Ldf/n;",
        "event",
        "Ll9/m;",
        "onEvent",
        "Ldf/g0;",
        "Ldf/g;",
        "Ldf/i0;",
        "Ldf/f;",
        "Ldf/x;",
        "Ldf/z;",
        "<init>",
        "()V",
        "ui-service-page_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lgf/b;

.field public final e:Ll9/e;

.field public final f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Integer;

.field public n:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z

.field public v:Ljava/lang/String;

.field public w:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lff/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$e;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$e;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->e:Ll9/e;

    const/16 v0, 0x2020

    iput v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->f:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->s:Z

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x:Lff/b;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    sget v0, Lke/d;->a:I

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "mServicePageBinding.webContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060088

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    const v2, 0x7f1302bd

    invoke-static {v0, v2, v1}, Lke/d$a;->c(Landroidx/constraintlayout/widget/ConstraintLayout;II)Lke/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->show()V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "https://m.turkiye.gov.tr/edk_services/"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->m:Ljava/lang/Integer;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-nez v4, :cond_1

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->j:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "/index.html?folderName="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "&url="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_6

    .line 61
    .line 62
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_4
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->p:Z

    .line 70
    .line 71
    const-string v4, "/index.html?url="

    .line 72
    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->r:Z

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 80
    .line 81
    const-string v1, "Test 0"

    .line 82
    .line 83
    new-array v5, v3, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v0, v1, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 105
    .line 106
    const-string v0, "Test 1"

    .line 107
    .line 108
    new-array v1, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_8

    .line 120
    :cond_6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->m:Ljava/lang/Integer;

    .line 121
    .line 122
    if-nez v0, :cond_7

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-nez v2, :cond_8

    .line 130
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->j:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :goto_2
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->k:Ljava/lang/String;

    .line 150
    .line 151
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, "&native=iframe&os=android&v="

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_8
    :goto_4
    if-nez v0, :cond_9

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-ne v0, v1, :cond_a

    .line 165
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_a
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    :goto_6
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->j:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->k:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, "?os=android&v="

    .line 188
    .line 189
    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->s()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v1, "&mode="

    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string p1, "&language="

    .line 208
    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->t()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    :goto_8
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v:Ljava/lang/String;

    .line 224
    .line 225
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->d:Lgf/b;

    .line 226
    .line 227
    if-eqz v0, :cond_d

    .line 228
    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    invoke-virtual {v0}, Lgf/b;->a()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_b

    .line 236
    .line 237
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 238
    .line 239
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v1, "eDevletMobil"

    .line 243
    .line 244
    const-string v2, "true"

    .line 245
    .line 246
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    sget-object v1, Lyd/a;->a:Lyd/a$a;

    .line 250
    .line 251
    const-string v2, "connected "

    .line 252
    .line 253
    invoke-static {v2, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    new-array v3, v3, [Ljava/lang/Object;

    .line 258
    .line 259
    invoke-virtual {v1, v2, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 267
    .line 268
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_b
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 277
    .line 278
    const/16 v1, 0x8

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 297
    .line 298
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 299
    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 308
    .line 309
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 310
    .line 311
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 319
    .line 320
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 321
    .line 322
    new-instance v1, Lnf/a;

    .line 323
    .line 324
    const/4 v2, 0x7

    .line 325
    invoke-direct {v1, v2, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 336
    .line 337
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 338
    .line 339
    new-instance v1, Lke/a;

    .line 340
    .line 341
    const/4 v2, 0x2

    .line 342
    invoke-direct {v1, v2, p0, p1}, Lke/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    .line 347
    .line 348
    goto :goto_9

    .line 349
    :cond_c
    const-string p1, "mNetworkHelper"

    .line 350
    .line 351
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    const/4 p1, 0x0

    .line 355
    throw p1

    .line 356
    :cond_d
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->z()V

    .line 357
    .line 358
    .line 359
    :goto_9
    return-void
.end method

.method public final C(I)V
    .locals 4

    .line 1
    new-instance v0, Lv/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    const/4 v2, 0x0

    .line 8
    const v3, 0x7f1301ef

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, v2, v1, v3}, Landroidx/camera/camera2/internal/c;->e(ILv/e;Ljava/lang/CharSequence;II)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$c;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    invoke-static {v0, p1, v2, v1, v3}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 22
    .line 23
    .line 24
    const p1, 0x7f1301ee

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$d;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$d;

    .line 32
    .line 33
    invoke-static {v0, p1, v1}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Lv/e;->show()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x:Lff/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lff/b;->f(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super.getApplicationContext()"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x:Lff/b;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lff/d;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "super.getResources()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->f:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "parse(dataString)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    aput-object p1, p2, p3

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_4
    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "dark"

    goto :goto_0

    :cond_1
    const-string p1, "light"

    :goto_0
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->B(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x:Lff/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lff/b;->d()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lu8/a;->onCreate(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v0, 0x1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string v2, "isFavMenuActive"

    .line 27
    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 29
    .line 30
    .line 31
    const-string v2, "isCustomPage"

    .line 32
    .line 33
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iput-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->p:Z

    .line 38
    .line 39
    const-string v2, "isEdkFolder"

    .line 40
    .line 41
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iput-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->r:Z

    .line 46
    .line 47
    const-string v2, "isClosable"

    .line 48
    .line 49
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iput-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->s:Z

    .line 54
    .line 55
    const-string v2, "hasRedirection"

    .line 56
    .line 57
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    const-string v2, "isOpenService"

    .line 61
    .line 62
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput-boolean v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->n:Z

    .line 67
    .line 68
    const-string v2, "folderUrl"

    .line 69
    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->g:Ljava/lang/String;

    .line 75
    .line 76
    const-string v2, "serviceUrl"

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->k:Ljava/lang/String;

    .line 83
    .line 84
    const-string v2, "baseUrl"

    .line 85
    .line 86
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->j:Ljava/lang/String;

    .line 91
    .line 92
    const-string v2, "serviceName"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->h:Ljava/lang/String;

    .line 99
    .line 100
    const-string v2, "popupMessage"

    .line 101
    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->l:Ljava/lang/String;

    .line 107
    .line 108
    const-string v2, "serviceDomainType"

    .line 109
    .line 110
    const/4 v3, -0x1

    .line 111
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    iput-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->m:Ljava/lang/Integer;

    .line 120
    .line 121
    const-string v2, "serviceCode"

    .line 122
    .line 123
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    :cond_0
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->h:Ljava/lang/String;

    .line 127
    .line 128
    if-eqz p1, :cond_2

    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_1

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_1
    const/4 p1, 0x0

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 140
    :goto_1
    if-nez p1, :cond_3

    .line 141
    .line 142
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 147
    .line 148
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->h:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->c:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 167
    .line 168
    new-instance v2, Lt1/f;

    .line 169
    .line 170
    const/4 v3, 0x7

    .line 171
    invoke-direct {v2, v3, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    new-instance p1, Lpg/k;

    .line 178
    .line 179
    invoke-direct {p1, p0}, Lpg/k;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    iget-object v2, v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 187
    .line 188
    new-instance v3, Lpg/h;

    .line 189
    .line 190
    invoke-direct {v3, p0, p1}, Lpg/h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;Lpg/k;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 262
    .line 263
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 288
    .line 289
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 301
    .line 302
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    const/4 v0, 0x2

    .line 307
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 308
    .line 309
    .line 310
    new-instance p1, Lpg/e;

    .line 311
    .line 312
    invoke-direct {p1, p0}, Lpg/e;-><init>(Landroid/app/Activity;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 320
    .line 321
    const-string v1, "JSInterface"

    .line 322
    .line 323
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v1, "mServicePageBinding.wvSe\u2026.settings.userAgentString"

    .line 351
    .line 352
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->s()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v0, "; eDevlet Mobil Agent (edk-"

    .line 368
    .line 369
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const/16 v0, 0x29

    .line 376
    .line 377
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 392
    .line 393
    new-instance v0, Lpg/i;

    .line 394
    .line 395
    invoke-direct {v0, p0}, Lpg/i;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 406
    .line 407
    new-instance v0, Lpg/j;

    .line 408
    .line 409
    invoke-direct {v0, p0}, Lpg/j;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->getResources()Landroid/content/res/Resources;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 424
    .line 425
    and-int/lit8 p1, p1, 0x30

    .line 426
    .line 427
    const/16 v0, 0x10

    .line 428
    .line 429
    if-eq p1, v0, :cond_5

    .line 430
    .line 431
    const/16 v0, 0x20

    .line 432
    .line 433
    if-eq p1, v0, :cond_4

    .line 434
    .line 435
    goto :goto_2

    .line 436
    :cond_4
    const-string p1, "dark"

    .line 437
    .line 438
    goto :goto_3

    .line 439
    :cond_5
    :goto_2
    const-string p1, "light"

    .line 440
    .line 441
    :goto_3
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->B(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    return-void
.end method

.method public final onEvent(Ldf/f;)V
    .locals 3
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 1
    iget-object p1, p1, Ldf/f;->a:Ljava/lang/String;

    .line 2
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "dialog"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "dialogText"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "link"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "externalLink"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    new-instance v2, Lpg/v;

    invoke-direct {v2}, Lpg/v;-><init>()V

    invoke-virtual {v2, p1, v1, v0, p0}, Lpg/v;->c(ZLjava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ldf/f;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Ldf/g0;)V
    .locals 1
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ldf/g0;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Ldf/g;)V
    .locals 3
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    const/4 v1, 0x0

    const-string v2, "callLocationFromJS()"

    if-lt p1, v0, :cond_1

    .line 3
    sget-object p1, Lc5/u;->p:[Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ltd/a;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {p1, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {p1, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :catch_0
    :cond_2
    :goto_0
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ldf/g;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Ldf/i0;)V
    .locals 6
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    .line 13
    iget-boolean v0, p1, Ldf/i0;->c:Z

    iget-object v1, p1, Ldf/i0;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p0, v1}, Lpg/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    iget-object p1, p1, Ldf/i0;->b:Ljava/lang/String;

    const-string v0, "pdf"

    invoke-static {p1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "content"

    if-eqz v0, :cond_1

    const p1, 0x7f1300a0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.filename_pdf)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lje/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v4}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    const-string v0, "application/pdf"

    goto :goto_3

    :goto_1
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const-string v0, "xls"

    .line 15
    invoke-static {p1, v0}, Lmc/j;->x(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f13009f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.filename_excel)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lje/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v2, 0x1

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_4

    :catch_1
    :goto_2
    :try_start_4
    sget-object v0, Ll9/m;->a:Ll9/m;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1, v4}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_2

    const-string v0, "application/vnd.ms-excel"

    .line 17
    :goto_3
    invoke-static {p0, p1, v0}, Lpg/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 18
    :goto_4
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v1, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 19
    :cond_2
    :goto_5
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ldf/i0;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onEvent(Ldf/n;)V
    .locals 1
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Ldf/n;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final onEvent(Ldf/x;)V
    .locals 8
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "url"

    const-string v1, "result url 1 "

    const-string v2, "payment result "

    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p1, Ldf/x;->a:Ljava/lang/String;

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v3

    const-class v4, Ldf/x;

    invoke-virtual {v3, v4}, Lqd/b;->l(Ljava/lang/Class;)V

    sget-object v3, Lyd/a;->a:Lyd/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    const-string p1, "loadReturnUrl"

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v7}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isLoadResultUrl"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "shouldLoadReturn"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    iput-boolean v6, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->t:Z

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object p1

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onEvent(Ldf/z;)V
    .locals 7
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8
    iget-object p1, p1, Ldf/z;->a:Ljava/lang/String;

    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "close"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v1, "folder"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "folderName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "titleName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "folderUrl"

    .line 10
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action.servicepage.open"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "serviceName"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isCustomPage"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isEdkFolder"

    invoke-virtual {v5, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "isFavMenuActive"

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_1

    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :cond_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object p1

    const-class v0, Ldf/z;

    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->x()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "grantResults"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 v0, 0x1

    .line 16
    const v1, 0x7f1301f1

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_3

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_0
    array-length p1, p3

    .line 26
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 41
    .line 42
    const-string p3, "callLocationFromJS()"

    .line 43
    .line 44
    invoke-virtual {p1, p3, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    sget-object p1, Lc5/u;->p:[Ljava/lang/String;

    .line 49
    .line 50
    const/4 p2, 0x2

    .line 51
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, [Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {p0, p1}, Ltd/a;->b(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->C(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const p1, 0x7f1301ea

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->C(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    array-length p1, p3

    .line 75
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Ltd/a;->d([I)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    sget-object p1, Lc5/u;->n:Lpg/l;

    .line 86
    .line 87
    if-eqz p1, :cond_9

    .line 88
    .line 89
    iget-object p3, p1, Lpg/l;->b:Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p3

    .line 95
    check-cast p3, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;

    .line 96
    .line 97
    if-nez p3, :cond_4

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    iget-object p1, p1, Lpg/l;->a:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p3, p1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->v(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    sget-object p1, Lc5/u;->m:[Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, [Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {p0, p1}, Ltd/a;->b(Landroid/app/Activity;[Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    .line 121
    .line 122
    if-eqz p1, :cond_6

    .line 123
    .line 124
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->C(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_7
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    .line 134
    .line 135
    if-eqz p1, :cond_8

    .line 136
    .line 137
    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_8
    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->w:Landroid/webkit/ValueCallback;

    .line 141
    .line 142
    invoke-virtual {p0, v1}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->C(I)V

    .line 143
    .line 144
    .line 145
    :cond_9
    :goto_0
    sput-object p2, Lc5/u;->n:Lpg/l;

    .line 146
    .line 147
    :catch_0
    :goto_1
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mAppVersion"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mLanguage"

    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->e:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    return-object v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "Dosya Se\u00e7me"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->f:I

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final x()V
    .locals 5

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->s:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "url"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isLoadResultUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldLoadReturn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lv/e;

    invoke-direct {v0, p0}, Lv/e;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->l:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lv/e;->c(Lv/e;Ljava/lang/Integer;Ljava/lang/CharSequence;I)V

    const v1, 0x7f1301e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$a;

    invoke-direct {v2, p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;)V

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v2, v4}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    const v1, 0x7f1301df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$b;->a:Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity$b;

    invoke-static {v0, v1, v2}, Lv/e;->d(Lv/e;Ljava/lang/Integer;Lx9/l;)V

    invoke-virtual {v0}, Lv/e;->show()V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    move-result-object v0

    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->q:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 20
    .line 21
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 31
    .line 32
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v1, v1, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->g:Landroid/webkit/WebView;

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->b:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 26
    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 37
    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 49
    .line 50
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->e:Landroid/widget/TextView;

    .line 51
    .line 52
    const v1, 0x7f13024a

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 67
    .line 68
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->d:Landroid/widget/TextView;

    .line 69
    .line 70
    const v1, 0x7f130249

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 85
    .line 86
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->b:Landroid/widget/Button;

    .line 87
    .line 88
    new-instance v1, Lzd/a;

    .line 89
    .line 90
    const/16 v2, 0xa

    .line 91
    .line 92
    invoke-direct {v1, v2, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/servicepage/PaymentPageActivity;->u()Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/servicepage/databinding/ActivityServicePageBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;

    .line 103
    .line 104
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorWithTryBinding;->c:Landroid/widget/ImageView;

    .line 105
    .line 106
    const-string v1, "mServicePageBinding.webSystemError.iconSearch"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const v1, 0x7f0800c8

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Lge/b;->a(Landroid/widget/ImageView;I)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
