.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment$onActivityResult$1"
    f = "MobileAccidentInformationFragment.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

.field public b:I

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

.field public final synthetic d:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Landroid/net/Uri;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;",
            "Landroid/net/Uri;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    iput-object p2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->d:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
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

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->d:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;Landroid/net/Uri;Lp9/d;)V

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lq9/a;->a:Lq9/a;

    .line 2
    .line 3
    iget v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->b:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 11
    .line 12
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 29
    .line 30
    iget-object v1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->f:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    iget-object v11, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->d:Landroid/net/Uri;

    .line 45
    .line 46
    invoke-virtual {v4, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const-string v6, "content"

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    const/4 v12, 0x0

    .line 61
    if-eqz v5, :cond_3

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const/4 v7, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v10, 0x0

    .line 71
    move-object v6, v11

    .line 72
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_2

    .line 77
    .line 78
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    const-string v5, "_display_name"

    .line 85
    .line 86
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    goto :goto_0

    .line 97
    :catch_0
    move-exception v5

    .line 98
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    move-object v5, v12

    .line 102
    goto :goto_2

    .line 103
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    move-object v5, v12

    .line 108
    :goto_1
    if-eqz v3, :cond_4

    .line 109
    .line 110
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    move-object v5, v12

    .line 115
    :cond_4
    :goto_3
    const/4 v3, -0x1

    .line 116
    if-nez v5, :cond_5

    .line 117
    .line 118
    invoke-virtual {v11}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eq v6, v3, :cond_5

    .line 129
    .line 130
    add-int/2addr v6, v2

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :cond_5
    const-string v6, "."

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    const/4 v7, 0x0

    .line 142
    if-eq v6, v3, :cond_6

    .line 143
    .line 144
    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v8

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    goto :goto_4

    .line 153
    :cond_6
    const-string v6, ""

    .line 154
    .line 155
    move-object v8, v5

    .line 156
    :goto_4
    invoke-static {v8, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    new-instance v8, Ljava/io/File;

    .line 161
    .line 162
    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    invoke-direct {v8, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v8, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v9

    .line 173
    if-nez v9, :cond_8

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    const-string v10, "FileUtil"

    .line 180
    .line 181
    if-eqz v9, :cond_7

    .line 182
    .line 183
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-eqz v9, :cond_7

    .line 188
    .line 189
    new-instance v9, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v11, "Delete old "

    .line 192
    .line 193
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v11, " file"

    .line 200
    .line 201
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .line 210
    .line 211
    :cond_7
    invoke-virtual {v6, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-eqz v6, :cond_8

    .line 216
    .line 217
    const-string v6, "Rename file to "

    .line 218
    .line 219
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_8
    invoke-virtual {v8}, Ljava/io/File;->deleteOnExit()V

    .line 227
    .line 228
    .line 229
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    .line 230
    .line 231
    invoke-direct {v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :catch_1
    move-exception v5

    .line 236
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    move-object v5, v12

    .line 240
    :goto_5
    if-eqz v4, :cond_a

    .line 241
    .line 242
    const/16 v6, 0x1000

    .line 243
    .line 244
    new-array v6, v6, [B

    .line 245
    .line 246
    :goto_6
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    .line 247
    .line 248
    .line 249
    move-result v9

    .line 250
    if-eq v3, v9, :cond_9

    .line 251
    .line 252
    invoke-virtual {v5, v6, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 257
    .line 258
    .line 259
    :cond_a
    if-eqz v5, :cond_b

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 262
    .line 263
    .line 264
    :cond_b
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;

    .line 265
    .line 266
    iput v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c;->b:I

    .line 267
    .line 268
    sget-object v2, Lnc/j0;->b:Lkotlinx/coroutines/scheduling/b;

    .line 269
    .line 270
    new-instance v3, Lw8/a;

    .line 271
    .line 272
    sget-object v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment$c$a;

    .line 273
    .line 274
    invoke-direct {v3, v4, v1, v8, v12}, Lw8/a;-><init>(Lx9/l;Landroid/content/Context;Ljava/io/File;Lp9/d;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v2, v3, p0}, Lc5/v;->N(Lp9/f;Lx9/p;Lp9/d;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    if-ne v1, v0, :cond_c

    .line 282
    .line 283
    return-object v0

    .line 284
    :cond_c
    move-object v0, p1

    .line 285
    move-object p1, v1

    .line 286
    :goto_7
    check-cast p1, Ljava/io/File;

    .line 287
    .line 288
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;->s:Ljava/io/File;

    .line 289
    .line 290
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 291
    .line 292
    return-object p1
.end method
