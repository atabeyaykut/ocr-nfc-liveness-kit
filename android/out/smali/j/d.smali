.class public final Lj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/d$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lp/k;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lp/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj/d;->a:Landroid/net/Uri;

    iput-object p2, p0, Lj/d;->b:Lp/k;

    return-void
.end method


# virtual methods
.method public final a(Lp9/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/d<",
            "-",
            "Lj/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj/d;->b:Lp/k;

    .line 2
    .line 3
    iget-object v0, p1, Lp/k;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lj/d;->a:Landroid/net/Uri;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "com.android.contacts"

    .line 16
    .line 17
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v5, "display_photo"

    .line 30
    .line 31
    invoke-static {v2, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_0
    const/4 v5, 0x3

    .line 41
    const-string v6, "\'."

    .line 42
    .line 43
    const/4 v7, 0x0

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const-string v2, "r"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    :goto_1
    if-eqz v7, :cond_2

    .line 60
    .line 61
    goto/16 :goto_a

    .line 62
    .line 63
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v0, "Unable to find a contact photo associated with \'"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v8, 0x1d

    .line 93
    .line 94
    if-lt v2, v8, :cond_e

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v8, "media"

    .line 101
    .line 102
    invoke-static {v2, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_4
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-lt v8, v5, :cond_5

    .line 118
    .line 119
    add-int/lit8 v9, v8, -0x3

    .line 120
    .line 121
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    const-string v10, "audio"

    .line 126
    .line 127
    invoke-static {v9, v10}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v9

    .line 131
    if-eqz v9, :cond_5

    .line 132
    .line 133
    add-int/lit8 v8, v8, -0x2

    .line 134
    .line 135
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v8, "albums"

    .line 140
    .line 141
    invoke-static {v2, v8}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    const/4 v3, 0x1

    .line 148
    :cond_5
    :goto_2
    if-eqz v3, :cond_e

    .line 149
    .line 150
    iget-object v2, p1, Lp/k;->d:Lq/e;

    .line 151
    .line 152
    iget-object v3, v2, Lq/e;->a:Lq/a;

    .line 153
    .line 154
    instance-of v8, v3, Lq/a$a;

    .line 155
    .line 156
    if-eqz v8, :cond_6

    .line 157
    .line 158
    check-cast v3, Lq/a$a;

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_6
    move-object v3, v7

    .line 162
    :goto_3
    if-nez v3, :cond_7

    .line 163
    .line 164
    move-object v3, v7

    .line 165
    goto :goto_4

    .line 166
    :cond_7
    iget v3, v3, Lq/a$a;->a:I

    .line 167
    .line 168
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    :goto_4
    if-nez v3, :cond_8

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    iget-object v2, v2, Lq/e;->b:Lq/a;

    .line 180
    .line 181
    instance-of v8, v2, Lq/a$a;

    .line 182
    .line 183
    if-eqz v8, :cond_9

    .line 184
    .line 185
    check-cast v2, Lq/a$a;

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_9
    move-object v2, v7

    .line 189
    :goto_5
    if-nez v2, :cond_a

    .line 190
    .line 191
    move-object v2, v7

    .line 192
    goto :goto_6

    .line 193
    :cond_a
    iget v2, v2, Lq/a$a;->a:I

    .line 194
    .line 195
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    :goto_6
    if-nez v2, :cond_b

    .line 200
    .line 201
    :goto_7
    move-object v8, v7

    .line 202
    goto :goto_8

    .line 203
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    new-instance v8, Landroid/os/Bundle;

    .line 208
    .line 209
    invoke-direct {v8, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 210
    .line 211
    .line 212
    new-instance v4, Landroid/graphics/Point;

    .line 213
    .line 214
    invoke-direct {v4, v3, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 215
    .line 216
    .line 217
    const-string v2, "android.content.extra.SIZE"

    .line 218
    .line 219
    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 220
    .line 221
    .line 222
    :goto_8
    invoke-static {v0, v1, v8}, Landroidx/core/app/f;->c(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-nez v2, :cond_c

    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_c
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    :goto_9
    if-eqz v7, :cond_d

    .line 234
    .line 235
    goto :goto_a

    .line 236
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    const-string v0, "Unable to find a music thumbnail associated with \'"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_e
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 264
    .line 265
    .line 266
    move-result-object v7

    .line 267
    if-eqz v7, :cond_f

    .line 268
    .line 269
    :goto_a
    new-instance v2, Lj/l;

    .line 270
    .line 271
    invoke-static {v7}, Led/v;->f(Ljava/io/InputStream;)Led/r;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    invoke-static {v3}, Led/v;->b(Led/j0;)Led/d0;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    new-instance v4, Lg/c;

    .line 280
    .line 281
    invoke-direct {v4}, Lg/c;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v6, Lg/n;

    .line 285
    .line 286
    sget-object v7, Lu/c;->a:[Landroid/graphics/Bitmap$Config;

    .line 287
    .line 288
    iget-object p1, p1, Lp/k;->a:Landroid/content/Context;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 295
    .line 296
    .line 297
    invoke-direct {v6, v3, p1, v4}, Lg/n;-><init>(Led/g;Ljava/io/File;Lg/l$a;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-direct {v2, v6, p1, v5}, Lj/l;-><init>(Lg/l;Ljava/lang/String;I)V

    .line 305
    .line 306
    .line 307
    return-object v2

    .line 308
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v0, "Unable to open \'"

    .line 311
    .line 312
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw v0
.end method
