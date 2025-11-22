.class public final synthetic Lc5/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/p2;
.implements Ll7/j;
.implements Lr2/e;
.implements Lc6/h;
.implements Lt1/c;


# static fields
.field public static final synthetic a:Lc5/e0;

.field public static final b:[Ljava/lang/String;

.field public static final c:Lkotlinx/coroutines/internal/u;

.field public static final d:[Ljava/lang/String;

.field public static final e:Lkotlinx/coroutines/internal/u;

.field public static final f:Lkotlinx/coroutines/internal/u;

.field public static final g:Lkotlinx/coroutines/internal/u;

.field public static final h:Lkotlinx/coroutines/internal/u;

.field public static final j:Lkotlinx/coroutines/internal/u;

.field public static final k:Lnc/m0;

.field public static final l:Lnc/m0;

.field public static final m:Lc5/e0;

.field public static final synthetic n:Lc5/e0;

.field public static final synthetic p:Lc5/e0;

.field public static q:Lt1/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc5/e0;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/e0;->a:Lc5/e0;

    .line 7
    .line 8
    const-string v0, "android.permission.CAMERA"

    .line 9
    .line 10
    filled-new-array {v0}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lc5/e0;->b:[Ljava/lang/String;

    .line 15
    .line 16
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 17
    .line 18
    const-string v1, "CLOSED"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lc5/e0;->c:Lkotlinx/coroutines/internal/u;

    .line 24
    .line 25
    const-string v0, "android.permission.CAMERA"

    .line 26
    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lc5/e0;->d:[Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 34
    .line 35
    const-string v1, "COMPLETING_ALREADY"

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lc5/e0;->e:Lkotlinx/coroutines/internal/u;

    .line 41
    .line 42
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 43
    .line 44
    const-string v1, "COMPLETING_WAITING_CHILDREN"

    .line 45
    .line 46
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lc5/e0;->f:Lkotlinx/coroutines/internal/u;

    .line 50
    .line 51
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 52
    .line 53
    const-string v1, "COMPLETING_RETRY"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, Lc5/e0;->g:Lkotlinx/coroutines/internal/u;

    .line 59
    .line 60
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 61
    .line 62
    const-string v1, "TOO_LATE_TO_CANCEL"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lc5/e0;->h:Lkotlinx/coroutines/internal/u;

    .line 68
    .line 69
    new-instance v0, Lkotlinx/coroutines/internal/u;

    .line 70
    .line 71
    const-string v1, "SEALED"

    .line 72
    .line 73
    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/u;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lc5/e0;->j:Lkotlinx/coroutines/internal/u;

    .line 77
    .line 78
    new-instance v0, Lnc/m0;

    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-direct {v0, v1}, Lnc/m0;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    sput-object v0, Lc5/e0;->k:Lnc/m0;

    .line 85
    .line 86
    new-instance v0, Lnc/m0;

    .line 87
    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-direct {v0, v1}, Lnc/m0;-><init>(Z)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lc5/e0;->l:Lnc/m0;

    .line 93
    .line 94
    new-instance v0, Lc5/e0;

    .line 95
    .line 96
    invoke-direct {v0}, Lc5/e0;-><init>()V

    .line 97
    .line 98
    .line 99
    sput-object v0, Lc5/e0;->m:Lc5/e0;

    .line 100
    .line 101
    new-instance v0, Lc5/e0;

    .line 102
    .line 103
    invoke-direct {v0}, Lc5/e0;-><init>()V

    .line 104
    .line 105
    .line 106
    sput-object v0, Lc5/e0;->n:Lc5/e0;

    .line 107
    .line 108
    new-instance v0, Lc5/e0;

    .line 109
    .line 110
    invoke-direct {v0}, Lc5/e0;-><init>()V

    .line 111
    .line 112
    .line 113
    sput-object v0, Lc5/e0;->p:Lc5/e0;

    .line 114
    .line 115
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "monitoringData"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v3, "region"

    .line 21
    .line 22
    const-class v4, Lgd/l;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lgd/l;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move-object v2, v0

    .line 55
    :goto_0
    const-string v5, "inside"

    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v5, Lkd/d;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-direct {v5, v1, v2}, Lkd/d;-><init>(ZLgd/l;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-object v5, v0

    .line 76
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "rangingData"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_5

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "beacons"

    .line 104
    .line 105
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Ljava/util/Collection;

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move-object v1, v0

    .line 119
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    move-object v0, p1

    .line 130
    check-cast v0, Lgd/l;

    .line 131
    .line 132
    :cond_3
    new-instance p1, Ls4/y1;

    .line 133
    .line 134
    invoke-direct {p1, v1, v0}, Ls4/y1;-><init>(Ljava/util/Collection;Lgd/l;)V

    .line 135
    .line 136
    .line 137
    move-object v0, p1

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    move-object v5, v0

    .line 140
    :cond_5
    :goto_3
    const/4 p1, 0x1

    .line 141
    const/4 v1, 0x0

    .line 142
    const-string v2, "e0"

    .line 143
    .line 144
    if-eqz v0, :cond_b

    .line 145
    .line 146
    const-string v3, "got ranging data"

    .line 147
    .line 148
    new-array v4, v1, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v2, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v3, v0, Ls4/y1;->a:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, Ljava/util/Collection;

    .line 156
    .line 157
    if-nez v3, :cond_6

    .line 158
    .line 159
    const-string v3, "Ranging data has a null beacons collection"

    .line 160
    .line 161
    new-array v4, v1, [Ljava/lang/Object;

    .line 162
    .line 163
    invoke-static {v2, v3, v4}, Lid/b;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_6
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget-object v3, v3, Lgd/e;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 171
    .line 172
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    iget-object v4, v0, Ls4/y1;->a:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v4, Ljava/util/Collection;

    .line 179
    .line 180
    if-eqz v3, :cond_7

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    if-eqz v6, :cond_8

    .line 191
    .line 192
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    check-cast v6, Lgd/k;

    .line 197
    .line 198
    invoke-interface {v6, v4}, Lgd/k;->e(Ljava/util/Collection;)V

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    const-string v3, "but ranging notifier is null, so we\'re dropping it."

    .line 203
    .line 204
    new-array v4, v1, [Ljava/lang/Object;

    .line 205
    .line 206
    invoke-static {v2, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 210
    .line 211
    .line 212
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v4, v0, Ls4/y1;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v4, Lgd/l;

    .line 219
    .line 220
    iget-object v3, v3, Lgd/e;->u:Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    if-eqz v3, :cond_9

    .line 227
    .line 228
    const/4 v3, 0x1

    .line 229
    goto :goto_5

    .line 230
    :cond_9
    const/4 v3, 0x0

    .line 231
    :goto_5
    if-eqz v3, :cond_b

    .line 232
    .line 233
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iget-object v4, v0, Ls4/y1;->b:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v4, Lgd/l;

    .line 240
    .line 241
    iget-object v3, v3, Lgd/e;->u:Ljava/util/HashMap;

    .line 242
    .line 243
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    check-cast v6, Lgd/m;

    .line 248
    .line 249
    if-eqz v6, :cond_a

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_a
    new-instance v6, Lgd/m;

    .line 253
    .line 254
    invoke-direct {v6}, Lgd/m;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    :goto_6
    iget-object v3, v6, Lgd/m;->b:Ll9/j;

    .line 261
    .line 262
    invoke-virtual {v3}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    check-cast v3, Landroidx/lifecycle/MutableLiveData;

    .line 267
    .line 268
    iget-object v0, v0, Ls4/y1;->a:Ljava/lang/Object;

    .line 269
    .line 270
    check-cast v0, Ljava/util/Collection;

    .line 271
    .line 272
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_b
    if-eqz v5, :cond_13

    .line 276
    .line 277
    const-string v0, "got monitoring data"

    .line 278
    .line 279
    new-array v3, v1, [Ljava/lang/Object;

    .line 280
    .line 281
    invoke-static {v2, v0, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    iget-object v0, v0, Lgd/e;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 289
    .line 290
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-boolean v3, v5, Lkd/d;->a:Z

    .line 295
    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    iget-object v5, v5, Lkd/d;->b:Lgd/l;

    .line 301
    .line 302
    if-eqz v0, :cond_10

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-eqz v6, :cond_10

    .line 313
    .line 314
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v6

    .line 318
    check-cast v6, Lgd/j;

    .line 319
    .line 320
    new-array v7, p1, [Ljava/lang/Object;

    .line 321
    .line 322
    aput-object v6, v7, v1

    .line 323
    .line 324
    const-string v8, "Calling monitoring notifier: %s"

    .line 325
    .line 326
    invoke-static {v2, v8, v7}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    invoke-interface {v6}, Lgd/j;->f()V

    .line 333
    .line 334
    .line 335
    invoke-static {p0}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 336
    .line 337
    .line 338
    move-result-object v7

    .line 339
    invoke-virtual {v7}, Lkd/e;->d()Ljava/util/Map;

    .line 340
    .line 341
    .line 342
    move-result-object v8

    .line 343
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v8

    .line 347
    check-cast v8, Lkd/h;

    .line 348
    .line 349
    if-nez v8, :cond_c

    .line 350
    .line 351
    new-instance v8, Lkd/a;

    .line 352
    .line 353
    invoke-direct {v8}, Lkd/a;-><init>()V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7, v5, v8}, Lkd/e;->a(Lgd/l;Lkd/a;)Lkd/h;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 361
    .line 362
    .line 363
    move-result v7

    .line 364
    if-nez v7, :cond_d

    .line 365
    .line 366
    iput-boolean v1, v8, Lkd/h;->a:Z

    .line 367
    .line 368
    const-wide/16 v9, 0x0

    .line 369
    .line 370
    iput-wide v9, v8, Lkd/h;->b:J

    .line 371
    .line 372
    :cond_d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v7

    .line 376
    if-ne v7, p1, :cond_e

    .line 377
    .line 378
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 379
    .line 380
    .line 381
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 382
    .line 383
    .line 384
    move-result-wide v9

    .line 385
    iput-wide v9, v8, Lkd/h;->b:J

    .line 386
    .line 387
    iget-boolean v7, v8, Lkd/h;->a:Z

    .line 388
    .line 389
    if-nez v7, :cond_e

    .line 390
    .line 391
    iput-boolean p1, v8, Lkd/h;->a:Z

    .line 392
    .line 393
    :cond_e
    if-eqz v3, :cond_f

    .line 394
    .line 395
    invoke-interface {v6}, Lgd/j;->l()V

    .line 396
    .line 397
    .line 398
    goto :goto_7

    .line 399
    :cond_f
    invoke-interface {v6}, Lgd/j;->g()V

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_10
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    iget-object v0, v0, Lgd/e;->u:Ljava/util/HashMap;

    .line 408
    .line 409
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-eqz v0, :cond_11

    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_11
    const/4 p1, 0x0

    .line 417
    :goto_8
    if-eqz p1, :cond_13

    .line 418
    .line 419
    invoke-static {p0}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    iget-object p0, p0, Lgd/e;->u:Ljava/util/HashMap;

    .line 424
    .line 425
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    check-cast p1, Lgd/m;

    .line 430
    .line 431
    if-eqz p1, :cond_12

    .line 432
    .line 433
    goto :goto_9

    .line 434
    :cond_12
    new-instance p1, Lgd/m;

    .line 435
    .line 436
    invoke-direct {p1}, Lgd/m;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p0, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    :goto_9
    iget-object p0, p1, Lgd/m;->a:Ll9/j;

    .line 443
    .line 444
    invoke-virtual {p0}, Ll9/j;->getValue()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    check-cast p0, Landroidx/lifecycle/MutableLiveData;

    .line 449
    .line 450
    invoke-virtual {p0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    :cond_13
    return-void
.end method

.method public static final f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lnc/w0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnc/w0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lnc/w0;->a:Lnc/v0;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc5/r2;->a:Ljava/util/List;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/q9;->b:Lcom/google/android/gms/internal/measurement/q9;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/q9;->b()Lcom/google/android/gms/internal/measurement/r9;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/r9;->i()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v1, v0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    return-object p1
.end method

.method public d(Lu6/a;)V
    .locals 2

    sget-object v0, Lr4/z1;->a:Lr4/z1;

    const-class v1, Lr4/r4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/j3;->a:Lr4/j3;

    const-class v1, Lr4/b6;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/a2;->a:Lr4/a2;

    const-class v1, Lr4/s4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/c2;->a:Lr4/c2;

    const-class v1, Lr4/v4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/b2;->a:Lr4/b2;

    const-class v1, Lr4/t4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/d2;->a:Lr4/d2;

    const-class v1, Lr4/u4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/l1;->a:Lr4/l1;

    const-class v1, Lr4/a4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/k1;->a:Lr4/k1;

    const-class v1, Lr4/z3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/t1;->a:Lr4/t1;

    const-class v1, Lr4/i4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/h3;->a:Lr4/h3;

    const-class v1, Lr4/y5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/j1;->a:Lr4/j1;

    const-class v1, Lr4/y3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/i1;->a:Lr4/i1;

    const-class v1, Lr4/x3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/j2;->a:Lr4/j2;

    const-class v1, Lr4/b5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/q1;->a:Lr4/q1;

    const-class v1, Lr4/e6;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/r1;->a:Lr4/r1;

    const-class v1, Lr4/g4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/p1;->a:Lr4/p1;

    const-class v1, Lr4/e4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/k2;->a:Lr4/k2;

    const-class v1, Lr4/c5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/e3;->a:Lr4/e3;

    const-class v1, Lr4/v5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/f3;->a:Lr4/f3;

    const-class v1, Lr4/w5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/h2;->a:Lr4/h2;

    const-class v1, Lr4/z4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/v0;->a:Lr4/v0;

    const-class v1, Lr4/d6;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/i2;->a:Lr4/i2;

    const-class v1, Lr4/a5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/l2;->a:Lr4/l2;

    const-class v1, Lr4/d5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/o2;->a:Lr4/o2;

    const-class v1, Lr4/g5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/n2;->a:Lr4/n2;

    const-class v1, Lr4/f5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/m2;->a:Lr4/m2;

    const-class v1, Lr4/e5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/t2;->a:Lr4/t2;

    const-class v1, Lr4/l5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/u2;->a:Lr4/u2;

    const-class v1, Lr4/m5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/w2;->a:Lr4/w2;

    const-class v1, Lr4/o5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/v2;->a:Lr4/v2;

    const-class v1, Lr4/n5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/g2;->a:Lr4/g2;

    const-class v1, Lr4/y4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/x2;->a:Lr4/x2;

    const-class v1, Lr4/p5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/y2;->a:Lr4/y2;

    const-class v1, Lr4/q5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/a3;->a:Lr4/a3;

    const-class v1, Lr4/r5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/b3;->a:Lr4/b3;

    const-class v1, Lr4/s5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/c3;->a:Lr4/c3;

    const-class v1, Lr4/u5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/d3;->a:Lr4/d3;

    const-class v1, Lr4/t5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/p2;->a:Lr4/p2;

    const-class v1, Lr4/k5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/x1;->a:Lr4/x1;

    const-class v1, Lr4/o4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/r2;->a:Lr4/r2;

    const-class v1, Lr4/i5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/q2;->a:Lr4/q2;

    const-class v1, Lr4/h5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/s2;->a:Lr4/s2;

    const-class v1, Lr4/j5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/g3;->a:Lr4/g3;

    const-class v1, Lr4/x5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/k3;->a:Lr4/k3;

    const-class v1, Lr4/c6;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/a1;->a:Lr4/a1;

    const-class v1, Lr4/p3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/y0;->a:Lr4/y0;

    const-class v1, Lr4/n3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/x0;->a:Lr4/x0;

    const-class v1, Lr4/m3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/z0;->a:Lr4/z0;

    const-class v1, Lr4/o3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/c1;->a:Lr4/c1;

    const-class v1, Lr4/r3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/b1;->a:Lr4/b1;

    const-class v1, Lr4/q3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/d1;->a:Lr4/d1;

    const-class v1, Lr4/s3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/e1;->a:Lr4/e1;

    const-class v1, Lr4/t3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/f1;->a:Lr4/f1;

    const-class v1, Lr4/u3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/g1;->a:Lr4/g1;

    const-class v1, Lr4/v3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/h1;->a:Lr4/h1;

    const-class v1, Lr4/w3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/s0;->a:Lr4/s0;

    const-class v1, Lr4/w;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/u0;->a:Lr4/u0;

    const-class v1, Lr4/y;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/t0;->a:Lr4/t0;

    const-class v1, Lr4/x;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/v1;->a:Lr4/v1;

    const-class v1, Lr4/m4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/m1;->a:Lr4/m1;

    const-class v1, Lr4/b4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/a0;->a:Lr4/a0;

    const-class v1, Lr4/f;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/b0;->a:Lr4/b0;

    const-class v1, Lr4/e;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/n1;->a:Lr4/n1;

    const-class v1, Lr4/c4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/c0;->a:Lr4/c0;

    const-class v1, Lr4/h;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/d0;->a:Lr4/d0;

    const-class v1, Lr4/g;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/g0;->a:Lr4/g0;

    const-class v1, Lr4/l;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/h0;->a:Lr4/h0;

    const-class v1, Lr4/k;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/e0;->a:Lr4/e0;

    const-class v1, Lr4/j;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/f0;->a:Lr4/f0;

    const-class v1, Lr4/i;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/i0;->a:Lr4/i0;

    const-class v1, Lr4/n;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/j0;->a:Lr4/j0;

    const-class v1, Lr4/m;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/k0;->a:Lr4/k0;

    const-class v1, Lr4/p;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/l0;->a:Lr4/l0;

    const-class v1, Lr4/o;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/q0;->a:Lr4/q0;

    const-class v1, Lr4/v;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/r0;->a:Lr4/r0;

    const-class v1, Lr4/u;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/m0;->a:Lr4/m0;

    const-class v1, Lr4/r;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/n0;->a:Lr4/n0;

    const-class v1, Lr4/q;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/o0;->a:Lr4/o0;

    const-class v1, Lr4/t;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/p0;->a:Lr4/p0;

    const-class v1, Lr4/s;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/i3;->a:Lr4/i3;

    const-class v1, Lr4/z5;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/u1;->a:Lr4/u1;

    const-class v1, Lr4/l4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/y1;->a:Lr4/y1;

    const-class v1, Lr4/p4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/w0;->a:Lr4/w0;

    const-class v1, Lr4/l3;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/s1;->a:Lr4/s1;

    const-class v1, Lr4/h4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/w1;->a:Lr4/w1;

    const-class v1, Lr4/n4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/o1;->a:Lr4/o1;

    const-class v1, Lr4/d4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/f2;->a:Lr4/f2;

    const-class v1, Lr4/x4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/e2;->a:Lr4/e2;

    const-class v1, Lr4/w4;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    sget-object v0, Lr4/z;->a:Lr4/z;

    const-class v1, Lr4/d;

    invoke-interface {p1, v1, v0}, Lu6/a;->a(Ljava/lang/Class;Lt6/d;)Lu6/a;

    return-void
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public i(Lc6/y;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lu7/c$a;

    const-class v1, Lt7/a;

    invoke-virtual {p1, v1}, Lc6/y;->c(Ljava/lang/Class;)La7/b;

    move-result-object p1

    invoke-direct {v0, p1}, Lu7/c$a;-><init>(La7/b;)V

    return-object v0
.end method
