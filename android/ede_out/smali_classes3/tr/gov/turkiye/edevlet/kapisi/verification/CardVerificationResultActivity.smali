.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;
.super Lu8/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;",
        "Lu8/a;",
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
.field public static final synthetic g:I


# instance fields
.field public b:Ljava/lang/String;

.field public final c:Ll9/e;

.field public final d:Lff/b;

.field public e:Ljava/lang/String;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lu8/a;-><init>()V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity$a;

    invoke-direct {v0, p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity$a;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lc5/y;->v(ILx9/a;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->c:Ll9/e;

    new-instance v0, Lff/b;

    invoke-direct {v0, p0}, Lff/b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

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

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

    invoke-virtual {v1, v0}, Lff/b;->b(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

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
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v1, "isSuccess"

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->f:Z

    .line 32
    .line 33
    const-string v1, "operationType"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->e:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 46
    .line 47
    const v1, 0x7f1302a0

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->e:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->e:Lcom/google/android/material/appbar/MaterialToolbar;

    .line 71
    .line 72
    new-instance v1, Lnf/a;

    .line 73
    .line 74
    const/16 v2, 0xf

    .line 75
    .line 76
    invoke-direct {v1, v2, p0}, Lnf/a;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->f:Z

    .line 83
    .line 84
    if-eqz p1, :cond_6

    .line 85
    .line 86
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 87
    .line 88
    const-string v1, "1"

    .line 89
    .line 90
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const/16 v1, 0x8

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 99
    .line 100
    const-string v3, "3"

    .line 101
    .line 102
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    goto/16 :goto_0

    .line 109
    .line 110
    :cond_1
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 111
    .line 112
    const-string v3, "2"

    .line 113
    .line 114
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const v3, 0x7f1301c2

    .line 119
    .line 120
    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 155
    .line 156
    new-instance v0, Lie/d;

    .line 157
    .line 158
    const/16 v1, 0x13

    .line 159
    .line 160
    invoke-direct {v0, v1, p0}, Lie/d;-><init>(ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->g:Landroid/widget/TextView;

    .line 171
    .line 172
    const v0, 0x7f130240

    .line 173
    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :cond_2
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 178
    .line 179
    const-string v4, "4"

    .line 180
    .line 181
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_3

    .line 186
    .line 187
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 210
    .line 211
    const v0, 0x7f1301c1

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 222
    .line 223
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 231
    .line 232
    new-instance v0, Lzd/e;

    .line 233
    .line 234
    const/16 v1, 0x11

    .line 235
    .line 236
    invoke-direct {v0, v1, p0}, Lzd/e;-><init>(ILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->g:Landroid/widget/TextView;

    .line 247
    .line 248
    const v0, 0x7f130242

    .line 249
    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_3
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->e:Ljava/lang/String;

    .line 254
    .line 255
    const-string v4, "5"

    .line 256
    .line 257
    invoke-static {p1, v4}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_5

    .line 262
    .line 263
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 268
    .line 269
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 277
    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 286
    .line 287
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 295
    .line 296
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 304
    .line 305
    new-instance v0, Lt1/f;

    .line 306
    .line 307
    invoke-direct {v0, v2, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->g:Landroid/widget/TextView;

    .line 318
    .line 319
    const v0, 0x7f130243

    .line 320
    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->d:Lcom/google/android/material/card/MaterialCardView;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->c:Landroid/widget/Button;

    .line 337
    .line 338
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->b:Landroid/widget/Button;

    .line 346
    .line 347
    new-instance v0, Lzd/a;

    .line 348
    .line 349
    const/16 v1, 0x12

    .line 350
    .line 351
    invoke-direct {v0, v1, p0}, Lzd/a;-><init>(ILjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 358
    .line 359
    .line 360
    move-result-object p1

    .line 361
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->f:Landroid/widget/TextView;

    .line 362
    .line 363
    new-instance v0, Lzd/d;

    .line 364
    .line 365
    const/16 v1, 0x14

    .line 366
    .line 367
    invoke-direct {v0, v1, p0}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    .line 372
    .line 373
    :cond_5
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;->g:Landroid/widget/TextView;

    .line 378
    .line 379
    const v0, 0x7f130241

    .line 380
    .line 381
    .line 382
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    .line 388
    .line 389
    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    :try_start_0
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->d:Lff/b;

    invoke-virtual {v0, p0}, Lff/b;->e(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final s()Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->c:Ll9/e;

    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/verification/databinding/ActivityResultBinding;

    return-object v0
.end method
