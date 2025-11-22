.class public abstract Lr3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/c$a;,
        Lr3/c$b;,
        Lr3/c$d;,
        Lr3/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final x:[Lm3/d;


# instance fields
.field public volatile a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Lr3/m1;

.field public final c:Landroid/content/Context;

.field public final d:Lr3/i;

.field public final e:Lm3/f;

.field public final f:Lr3/v0;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Lr3/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public j:Lr3/c$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:Landroid/os/IInterface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;

.field public m:Lr3/y0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public n:I

.field public final o:Lr3/c$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final p:Lr3/c$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final q:I

.field public final r:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile s:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public t:Lm3/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public u:Z

.field public volatile v:Lr3/b1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lm3/d;

    sput-object v0, Lr3/c;->x:[Lm3/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lr3/j1;Lm3/f;ILr3/c$a;Lr3/c$b;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lr3/j1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lm3/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lr3/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lr3/c$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lr3/c;->g:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lr3/c;->h:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lr3/c;->l:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lr3/c;->n:I

    iput-object v0, p0, Lr3/c;->t:Lm3/b;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lr3/c;->u:Z

    iput-object v0, p0, Lr3/c;->v:Lr3/b1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p1, :cond_2

    iput-object p1, p0, Lr3/c;->c:Landroid/content/Context;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p3, p0, Lr3/c;->d:Lr3/i;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p4, p0, Lr3/c;->e:Lm3/f;

    new-instance p1, Lr3/v0;

    invoke-direct {p1, p0, p2}, Lr3/v0;-><init>(Lr3/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lr3/c;->f:Lr3/v0;

    iput p5, p0, Lr3/c;->q:I

    iput-object p6, p0, Lr3/c;->o:Lr3/c$a;

    iput-object p7, p0, Lr3/c;->p:Lr3/c$b;

    iput-object p8, p0, Lr3/c;->r:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Supervisor must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Looper must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic B(Lr3/c;)V
    .locals 3

    iget-object v0, p0, Lr3/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr3/c;->n:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr3/c;->u:Z

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lr3/c;->f:Lr3/v0;

    iget-object p0, p0, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static bridge synthetic C(Lr3/c;IILandroid/os/IInterface;)Z
    .locals 2

    iget-object v0, p0, Lr3/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr3/c;->n:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p2}, Lr3/c;->D(Landroid/os/IInterface;I)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public A()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final D(Landroid/os/IInterface;I)V
    .locals 17
    .param p1    # Landroid/os/IInterface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, " on com.google.android.gms"

    .line 8
    .line 9
    const-string v4, " on com.google.android.gms"

    .line 10
    .line 11
    const-string v5, "unable to connect to service: "

    .line 12
    .line 13
    const-string v6, "Calling connect() while still connected, missing disconnect() for "

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x1

    .line 17
    const/4 v9, 0x4

    .line 18
    if-eq v2, v9, :cond_0

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v10, 0x1

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    const/4 v11, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v11, 0x1

    .line 28
    :goto_1
    if-ne v10, v11, :cond_2

    .line 29
    .line 30
    const/4 v7, 0x1

    .line 31
    :cond_2
    invoke-static {v7}, Lr3/r;->a(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v7, v1, Lr3/c;->g:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v7

    .line 37
    :try_start_0
    iput v2, v1, Lr3/c;->n:I

    .line 38
    .line 39
    iput-object v0, v1, Lr3/c;->k:Landroid/os/IInterface;

    .line 40
    .line 41
    const/4 v10, 0x0

    .line 42
    if-eq v2, v8, :cond_a

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    if-eq v2, v8, :cond_4

    .line 46
    .line 47
    const/4 v8, 0x3

    .line 48
    if-eq v2, v8, :cond_4

    .line 49
    .line 50
    if-eq v2, v9, :cond_3

    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_3
    invoke-static/range {p1 .. p1}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_4
    iget-object v15, v1, Lr3/c;->m:Lr3/y0;

    .line 63
    .line 64
    if-eqz v15, :cond_6

    .line 65
    .line 66
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    const-string v2, "GmsClient"

    .line 71
    .line 72
    iget-object v0, v0, Lr3/m1;->a:Ljava/lang/String;

    .line 73
    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    iget-object v11, v1, Lr3/c;->d:Lr3/i;

    .line 93
    .line 94
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 95
    .line 96
    iget-object v12, v0, Lr3/m1;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v12}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string v13, "com.google.android.gms"

    .line 107
    .line 108
    const/16 v14, 0x1081

    .line 109
    .line 110
    iget-object v0, v1, Lr3/c;->r:Ljava/lang/String;

    .line 111
    .line 112
    if-nez v0, :cond_5

    .line 113
    .line 114
    iget-object v0, v1, Lr3/c;->c:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto/16 :goto_5

    .line 122
    .line 123
    :cond_5
    :goto_2
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 124
    .line 125
    iget-boolean v0, v0, Lr3/m1;->b:Z

    .line 126
    .line 127
    move/from16 v16, v0

    .line 128
    .line 129
    invoke-virtual/range {v11 .. v16}, Lr3/i;->c(Ljava/lang/String;Ljava/lang/String;ILr3/y0;Z)V

    .line 130
    .line 131
    .line 132
    iget-object v0, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 135
    .line 136
    .line 137
    :cond_6
    new-instance v0, Lr3/y0;

    .line 138
    .line 139
    iget-object v2, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    invoke-direct {v0, v1, v2}, Lr3/y0;-><init>(Lr3/c;I)V

    .line 146
    .line 147
    .line 148
    iput-object v0, v1, Lr3/c;->m:Lr3/y0;

    .line 149
    .line 150
    new-instance v2, Lr3/m1;

    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Lr3/c;->y()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    sget-object v6, Lr3/i;->a:Ljava/lang/Object;

    .line 157
    .line 158
    invoke-virtual/range {p0 .. p0}, Lr3/c;->z()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-direct {v2, v4, v6}, Lr3/m1;-><init>(Ljava/lang/String;Z)V

    .line 163
    .line 164
    .line 165
    iput-object v2, v1, Lr3/c;->b:Lr3/m1;

    .line 166
    .line 167
    if-eqz v6, :cond_8

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Lr3/c;->l()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    const v4, 0x1110e58

    .line 174
    .line 175
    .line 176
    if-lt v2, v4, :cond_7

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 180
    .line 181
    const-string v2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 182
    .line 183
    iget-object v3, v1, Lr3/c;->b:Lr3/m1;

    .line 184
    .line 185
    iget-object v3, v3, Lr3/m1;->a:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw v0

    .line 199
    :cond_8
    :goto_3
    iget-object v2, v1, Lr3/c;->d:Lr3/i;

    .line 200
    .line 201
    iget-object v4, v1, Lr3/c;->b:Lr3/m1;

    .line 202
    .line 203
    iget-object v4, v4, Lr3/m1;->a:Ljava/lang/String;

    .line 204
    .line 205
    invoke-static {v4}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object v6, v1, Lr3/c;->b:Lr3/m1;

    .line 209
    .line 210
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    const-string v6, "com.google.android.gms"

    .line 214
    .line 215
    iget-object v8, v1, Lr3/c;->r:Ljava/lang/String;

    .line 216
    .line 217
    if-nez v8, :cond_9

    .line 218
    .line 219
    iget-object v8, v1, Lr3/c;->c:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    :cond_9
    iget-object v9, v1, Lr3/c;->b:Lr3/m1;

    .line 230
    .line 231
    iget-boolean v9, v9, Lr3/m1;->b:Z

    .line 232
    .line 233
    invoke-virtual/range {p0 .. p0}, Lr3/c;->t()V

    .line 234
    .line 235
    .line 236
    new-instance v11, Lr3/f1;

    .line 237
    .line 238
    const/16 v12, 0x1081

    .line 239
    .line 240
    invoke-direct {v11, v4, v6, v9, v12}, Lr3/f1;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v11, v0, v8, v10}, Lr3/i;->d(Lr3/f1;Lr3/y0;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_c

    .line 248
    .line 249
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 250
    .line 251
    iget-object v0, v0, Lr3/m1;->a:Ljava/lang/String;

    .line 252
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, "GmsClient"

    .line 265
    .line 266
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    new-instance v2, Lr3/a1;

    .line 280
    .line 281
    const/16 v3, 0x10

    .line 282
    .line 283
    invoke-direct {v2, v1, v3}, Lr3/a1;-><init>(Lr3/c;I)V

    .line 284
    .line 285
    .line 286
    iget-object v3, v1, Lr3/c;->f:Lr3/v0;

    .line 287
    .line 288
    const/4 v4, 0x7

    .line 289
    const/4 v5, -0x1

    .line 290
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_a
    iget-object v15, v1, Lr3/c;->m:Lr3/y0;

    .line 299
    .line 300
    if-eqz v15, :cond_c

    .line 301
    .line 302
    iget-object v11, v1, Lr3/c;->d:Lr3/i;

    .line 303
    .line 304
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 305
    .line 306
    iget-object v12, v0, Lr3/m1;->a:Ljava/lang/String;

    .line 307
    .line 308
    invoke-static {v12}, Lr3/r;->i(Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 312
    .line 313
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    const-string v13, "com.google.android.gms"

    .line 317
    .line 318
    const/16 v14, 0x1081

    .line 319
    .line 320
    iget-object v0, v1, Lr3/c;->r:Ljava/lang/String;

    .line 321
    .line 322
    if-nez v0, :cond_b

    .line 323
    .line 324
    iget-object v0, v1, Lr3/c;->c:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    .line 328
    .line 329
    :cond_b
    iget-object v0, v1, Lr3/c;->b:Lr3/m1;

    .line 330
    .line 331
    iget-boolean v0, v0, Lr3/m1;->b:Z

    .line 332
    .line 333
    move/from16 v16, v0

    .line 334
    .line 335
    invoke-virtual/range {v11 .. v16}, Lr3/i;->c(Ljava/lang/String;Ljava/lang/String;ILr3/y0;Z)V

    .line 336
    .line 337
    .line 338
    iput-object v10, v1, Lr3/c;->m:Lr3/y0;

    .line 339
    .line 340
    :cond_c
    :goto_4
    monitor-exit v7

    .line 341
    return-void

    .line 342
    :goto_5
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    throw v0
.end method

.method public final c(Lr3/c$c;)V
    .locals 1
    .param p1    # Lr3/c$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lr3/c;->j:Lr3/c$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lr3/c;->D(Landroid/os/IInterface;I)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lr3/c;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lr3/c;->h()V

    return-void
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lr3/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr3/c;->n:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lr3/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/c;->b:Lr3/m1;

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Lo3/z;)V
    .locals 2
    .param p1    # Lo3/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lo3/z;->a:Lo3/a0;

    .line 2
    .line 3
    iget-object v0, v0, Lo3/a0;->m:Lo3/d;

    .line 4
    .line 5
    iget-object v0, v0, Lo3/d;->n:Lh4/i;

    .line 6
    .line 7
    new-instance v1, Lo3/y;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Lo3/y;-><init>(Lo3/z;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lr3/c;->l:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lr3/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lr3/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr3/w0;

    invoke-virtual {v3}, Lr3/w0;->c()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lr3/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lr3/c;->h:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lr3/c;->i:Lr3/m;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lr3/c;->D(Landroid/os/IInterface;I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public final isConnected()Z
    .locals 3

    iget-object v0, p0, Lr3/c;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lr3/c;->n:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j(Lr3/k;Ljava/util/Set;)V
    .locals 21
    .param p1    # Lr3/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/k;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lr3/c;->u()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v15, Lr3/g;

    .line 10
    .line 11
    iget v5, v1, Lr3/c;->q:I

    .line 12
    .line 13
    iget-object v14, v1, Lr3/c;->s:Ljava/lang/String;

    .line 14
    .line 15
    sget v6, Lm3/f;->a:I

    .line 16
    .line 17
    sget-object v9, Lr3/g;->q:[Lcom/google/android/gms/common/api/Scope;

    .line 18
    .line 19
    new-instance v10, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v13, Lr3/g;->r:[Lm3/d;

    .line 25
    .line 26
    const/4 v4, 0x6

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v11, 0x0

    .line 30
    const/16 v16, 0x1

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    move-object v3, v15

    .line 37
    move-object v12, v13

    .line 38
    move-object/from16 v19, v14

    .line 39
    .line 40
    move/from16 v14, v16

    .line 41
    .line 42
    move-object/from16 v20, v15

    .line 43
    .line 44
    move/from16 v15, v17

    .line 45
    .line 46
    move/from16 v16, v18

    .line 47
    .line 48
    move-object/from16 v17, v19

    .line 49
    .line 50
    invoke-direct/range {v3 .. v17}, Lr3/g;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lm3/d;[Lm3/d;ZIZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v1, Lr3/c;->c:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object/from16 v4, v20

    .line 60
    .line 61
    iput-object v3, v4, Lr3/g;->d:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v2, v4, Lr3/g;->g:Landroid/os/Bundle;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 75
    .line 76
    iput-object v0, v4, Lr3/g;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 77
    .line 78
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lr3/c;->o()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p0 .. p0}, Lr3/c;->r()Landroid/accounts/Account;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    new-instance v0, Landroid/accounts/Account;

    .line 91
    .line 92
    const-string v2, "<<default account>>"

    .line 93
    .line 94
    const-string v3, "com.google"

    .line 95
    .line 96
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    iput-object v0, v4, Lr3/g;->h:Landroid/accounts/Account;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, v4, Lr3/g;->e:Landroid/os/IBinder;

    .line 108
    .line 109
    :cond_2
    sget-object v0, Lr3/c;->x:[Lm3/d;

    .line 110
    .line 111
    iput-object v0, v4, Lr3/g;->j:[Lm3/d;

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Lr3/c;->s()[Lm3/d;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, v4, Lr3/g;->k:[Lm3/d;

    .line 118
    .line 119
    instance-of v0, v1, Lm4/q;

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    iput-boolean v2, v4, Lr3/g;->n:Z

    .line 125
    .line 126
    :cond_3
    :try_start_0
    iget-object v3, v1, Lr3/c;->h:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    iget-object v0, v1, Lr3/c;->i:Lr3/m;

    .line 130
    .line 131
    if-eqz v0, :cond_4

    .line 132
    .line 133
    new-instance v5, Lr3/x0;

    .line 134
    .line 135
    iget-object v6, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    .line 137
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    invoke-direct {v5, v1, v6}, Lr3/x0;-><init>(Lr3/c;I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v5, v4}, Lr3/m;->U(Lr3/x0;Lr3/g;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    const-string v0, "GmsClient"

    .line 149
    .line 150
    const-string v4, "mServiceBroker is null, client disconnected"

    .line 151
    .line 152
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    :goto_0
    monitor-exit v3

    .line 156
    return-void

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    goto :goto_1

    .line 162
    :catch_1
    move-exception v0

    .line 163
    :goto_1
    const-string v3, "GmsClient"

    .line 164
    .line 165
    const-string v4, "IGmsServiceBroker.getService failed"

    .line 166
    .line 167
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    iget-object v0, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    new-instance v3, Lr3/z0;

    .line 177
    .line 178
    const/16 v4, 0x8

    .line 179
    .line 180
    const/4 v5, 0x0

    .line 181
    invoke-direct {v3, v1, v4, v5, v5}, Lr3/z0;-><init>(Lr3/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 182
    .line 183
    .line 184
    iget-object v4, v1, Lr3/c;->f:Lr3/v0;

    .line 185
    .line 186
    const/4 v5, -0x1

    .line 187
    invoke-virtual {v4, v2, v0, v5, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :catch_2
    move-exception v0

    .line 196
    throw v0

    .line 197
    :catch_3
    move-exception v0

    .line 198
    const-string v2, "GmsClient"

    .line 199
    .line 200
    const-string v3, "IGmsServiceBroker.getService failed"

    .line 201
    .line 202
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .line 204
    .line 205
    iget-object v0, v1, Lr3/c;->f:Lr3/v0;

    .line 206
    .line 207
    iget-object v2, v1, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    const/4 v3, 0x6

    .line 214
    const/4 v4, 0x3

    .line 215
    invoke-virtual {v0, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    .line 221
    .line 222
    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()I
    .locals 1

    sget v0, Lm3/f;->a:I

    return v0
.end method

.method public final m()[Lm3/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/c;->v:Lr3/b1;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lr3/b1;->b:[Lm3/d;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lr3/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lr3/c;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lr3/c;->e:Lm3/f;

    .line 6
    .line 7
    iget-object v2, p0, Lr3/c;->c:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1, v0, v2}, Lm3/f;->c(ILandroid/content/Context;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v1, v2}, Lr3/c;->D(Landroid/os/IInterface;I)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lr3/c$d;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lr3/c$d;-><init>(Lr3/c;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lr3/c;->j:Lr3/c$c;

    .line 26
    .line 27
    iget-object v2, p0, Lr3/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x3

    .line 34
    iget-object v4, p0, Lr3/c;->f:Lr3/v0;

    .line 35
    .line 36
    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance v0, Lr3/c$d;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lr3/c$d;-><init>(Lr3/c;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lr3/c;->c(Lr3/c$c;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public abstract q(Landroid/os/IBinder;)Landroid/os/IInterface;
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public r()Landroid/accounts/Account;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()[Lm3/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lr3/c;->x:[Lm3/d;

    return-object v0
.end method

.method public t()V
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-void
.end method

.method public u()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public v()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final w()Landroid/os/IInterface;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr3/c;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lr3/c;->n:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lr3/c;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lr3/c;->k:Landroid/os/IInterface;

    .line 16
    .line 17
    const-string v2, "Client is connected but service is null"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lr3/r;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 29
    .line 30
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v1

    .line 34
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    .line 35
    .line 36
    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v1

    .line 40
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method

.method public abstract x()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract y()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public z()Z
    .locals 2

    invoke-virtual {p0}, Lr3/c;->l()I

    move-result v0

    const v1, 0xc9e4920

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
