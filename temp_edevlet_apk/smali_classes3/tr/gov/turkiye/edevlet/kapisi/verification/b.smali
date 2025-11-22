.class public final Ltr/gov/turkiye/edevlet/kapisi/verification/b;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity$ReadCard$execute$1"
    f = "CardReadActivity.kt"
    l = {
        0x13b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/verification/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/verification/b;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/b;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/b;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->b:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v4, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput v4, p0, Ltr/gov/turkiye/edevlet/kapisi/verification/b;->a:I

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    sget-object p1, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 34
    .line 35
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/verification/a;

    .line 36
    .line 37
    iget-object v5, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 38
    .line 39
    invoke-direct {v1, v3, v5, v2}, Ltr/gov/turkiye/edevlet/kapisi/verification/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;Lp9/d;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v1, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-ne p1, v0, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const-string v0, "OK"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->n:Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 61
    .line 62
    if-eqz v0, :cond_9

    .line 63
    .line 64
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 65
    .line 66
    const-string v5, "Post ok "

    .line 67
    .line 68
    invoke-static {v5, p1}, Landroidx/browser/browseractions/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/4 v5, 0x0

    .line 73
    new-array v6, v5, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {v0, p1, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->p:Lie/a;

    .line 79
    .line 80
    if-eqz p1, :cond_3

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->q:Lie/b;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-class v6, Lie/b;

    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-virtual {p1, v0, v6}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->b:Lgf/b;

    .line 103
    .line 104
    if-eqz p1, :cond_8

    .line 105
    .line 106
    invoke-virtual {p1}, Lgf/b;->a()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_6

    .line 111
    .line 112
    const/4 p1, 0x7

    .line 113
    new-array v0, p1, [Ll9/g;

    .line 114
    .line 115
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->h:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v6, Ll9/g;

    .line 118
    .line 119
    const-string v7, "serialNo"

    .line 120
    .line 121
    invoke-direct {v6, v7, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    aput-object v6, v0, v5

    .line 125
    .line 126
    new-instance v2, Ll9/g;

    .line 127
    .line 128
    const-string v6, "token"

    .line 129
    .line 130
    iget-object v7, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->d:Ljava/lang/String;

    .line 131
    .line 132
    invoke-direct {v2, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    aput-object v2, v0, v4

    .line 136
    .line 137
    new-instance v2, Ll9/g;

    .line 138
    .line 139
    const-string v6, "uuid"

    .line 140
    .line 141
    iget-object v7, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->c:Ljava/lang/String;

    .line 142
    .line 143
    invoke-direct {v2, v6, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    const/4 v6, 0x2

    .line 147
    aput-object v2, v0, v6

    .line 148
    .line 149
    iget-object v2, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->f:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v6, Ll9/g;

    .line 152
    .line 153
    const-string v7, "file1"

    .line 154
    .line 155
    invoke-direct {v6, v7, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    const/4 v2, 0x3

    .line 159
    aput-object v6, v0, v2

    .line 160
    .line 161
    iget-object v2, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->g:Ljava/lang/String;

    .line 162
    .line 163
    new-instance v6, Ll9/g;

    .line 164
    .line 165
    const-string v7, "file2"

    .line 166
    .line 167
    invoke-direct {v6, v7, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const/4 v2, 0x4

    .line 171
    aput-object v6, v0, v2

    .line 172
    .line 173
    iget-object v2, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->h:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v6, Ll9/g;

    .line 176
    .line 177
    const-string v7, "file3"

    .line 178
    .line 179
    invoke-direct {v6, v7, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    const/4 v2, 0x5

    .line 183
    aput-object v6, v0, v2

    .line 184
    .line 185
    iget-object v2, v3, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity$b;->j:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v3, Ll9/g;

    .line 188
    .line 189
    const-string v6, "signedData"

    .line 190
    .line 191
    invoke-direct {v3, v6, v2}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    const/4 v2, 0x6

    .line 195
    aput-object v3, v0, v2

    .line 196
    .line 197
    new-instance v2, Landroidx/work/Data$Builder;

    .line 198
    .line 199
    invoke-direct {v2}, Landroidx/work/Data$Builder;-><init>()V

    .line 200
    .line 201
    .line 202
    :goto_1
    if-ge v5, p1, :cond_5

    .line 203
    .line 204
    aget-object v3, v0, v5

    .line 205
    .line 206
    add-int/lit8 v5, v5, 0x1

    .line 207
    .line 208
    iget-object v6, v3, Ll9/g;->a:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v6, Ljava/lang/String;

    .line 211
    .line 212
    iget-object v3, v3, Ll9/g;->b:Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v2, v6, v3}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_5
    invoke-virtual {v2}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v0, "dataBuilder.build()"

    .line 223
    .line 224
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance v0, Landroid/os/Handler;

    .line 228
    .line 229
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 230
    .line 231
    .line 232
    new-instance v2, Landroidx/camera/core/impl/l;

    .line 233
    .line 234
    invoke-direct {v2, v4, p1, v1}, Landroidx/camera/core/impl/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    const-wide/16 v3, 0x5dc

    .line 238
    .line 239
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    .line 241
    .line 242
    goto :goto_2

    .line 243
    :cond_6
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 244
    .line 245
    if-eqz p1, :cond_7

    .line 246
    .line 247
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 248
    .line 249
    .line 250
    :cond_7
    const p1, 0x7f13029d

    .line 251
    .line 252
    .line 253
    const-string v0, "warning"

    .line 254
    .line 255
    invoke-virtual {v1, p1, v0}, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->t(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    goto :goto_2

    .line 259
    :cond_8
    const-string p1, "mNetworkHelper"

    .line 260
    .line 261
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw v2

    .line 265
    :cond_9
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->n:Lv/e;

    .line 266
    .line 267
    if-eqz p1, :cond_a

    .line 268
    .line 269
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 270
    .line 271
    .line 272
    :cond_a
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;->p:Lie/a;

    .line 273
    .line 274
    if-eqz p1, :cond_b

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismissAllowingStateLoss()V

    .line 277
    .line 278
    .line 279
    :cond_b
    new-instance p1, Landroid/content/Intent;

    .line 280
    .line 281
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/verification/CardErrorActivity;

    .line 282
    .line 283
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 287
    .line 288
    .line 289
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 290
    .line 291
    return-object p1
.end method
