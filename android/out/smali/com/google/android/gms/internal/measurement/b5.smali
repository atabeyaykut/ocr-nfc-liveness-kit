.class public abstract Lcom/google/android/gms/internal/measurement/b5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/Object;

.field public static volatile g:Lcom/google/android/gms/internal/measurement/k4;

.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/z4;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public volatile d:I

.field public volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b5;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/b5;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/z4;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/b5;->d:I

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/z4;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/b5;->c:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/b5;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/b5;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_10

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/b5;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_f

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/measurement/b5;->g:Lcom/google/android/gms/internal/measurement/k4;

    .line 17
    .line 18
    const-string v2, "Must call PhenotypeFlag.init() first"

    .line 19
    .line 20
    if-eqz v1, :cond_e

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/k4;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/r4;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r4;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    sget-object v4, Lcom/google/android/gms/internal/measurement/j4;->b:Ljava/util/regex/Pattern;

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    const-string v2, "PhenotypeFlag"

    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    const-string v2, "PhenotypeFlag"

    .line 64
    .line 65
    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 66
    .line 67
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_0

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    new-instance v5, Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object v4, v5

    .line 95
    :goto_0
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto/16 :goto_b

    .line 101
    .line 102
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 103
    .line 104
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/z4;->a:Landroid/net/Uri;

    .line 105
    .line 106
    if-eqz v2, :cond_3

    .line 107
    .line 108
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/k4;->a:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/measurement/t4;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/k4;->a:Landroid/content/Context;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/z4;->a:Landroid/net/Uri;

    .line 130
    .line 131
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/n4;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/n4;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    move-object v2, v3

    .line 137
    goto :goto_1

    .line 138
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/c5;->b()Lcom/google/android/gms/internal/measurement/c5;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    :goto_1
    if-eqz v2, :cond_4

    .line 143
    .line 144
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 145
    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/String;

    .line 150
    .line 151
    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/p4;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    .line 157
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/b5;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    goto :goto_3

    .line 162
    :cond_4
    :goto_2
    move-object v2, v3

    .line 163
    :goto_3
    if-eqz v2, :cond_5

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 167
    .line 168
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/z4;->b:Z

    .line 169
    .line 170
    if-nez v2, :cond_7

    .line 171
    .line 172
    iget-object v2, v1, Lcom/google/android/gms/internal/measurement/k4;->a:Landroid/content/Context;

    .line 173
    .line 174
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/r4;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/r4;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 179
    .line 180
    iget-boolean v4, v4, Lcom/google/android/gms/internal/measurement/z4;->b:Z

    .line 181
    .line 182
    if-eqz v4, :cond_6

    .line 183
    .line 184
    move-object v4, v3

    .line 185
    goto :goto_4

    .line 186
    :cond_6
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/String;

    .line 187
    .line 188
    :goto_4
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/r4;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    if-eqz v2, :cond_7

    .line 193
    .line 194
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/b5;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    goto :goto_5

    .line 199
    :cond_7
    move-object v2, v3

    .line 200
    :goto_5
    if-nez v2, :cond_8

    .line 201
    .line 202
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->c:Ljava/lang/Object;

    .line 203
    .line 204
    :cond_8
    :goto_6
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/k4;->b:Lcom/google/android/gms/internal/measurement/g5;

    .line 205
    .line 206
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/g5;->a()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/google/android/gms/internal/measurement/e5;

    .line 211
    .line 212
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e5;->b()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_d

    .line 217
    .line 218
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/e5;->a()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    check-cast v1, Lcom/google/android/gms/internal/measurement/s4;

    .line 223
    .line 224
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->a:Lcom/google/android/gms/internal/measurement/z4;

    .line 225
    .line 226
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/z4;->a:Landroid/net/Uri;

    .line 227
    .line 228
    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/b5;->b:Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    if-eqz v2, :cond_b

    .line 234
    .line 235
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/s4;->a:Ljava/util/Map;

    .line 240
    .line 241
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    check-cast v1, Ljava/util/Map;

    .line 246
    .line 247
    if-nez v1, :cond_9

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    const-string v4, ""

    .line 259
    .line 260
    if-eqz v3, :cond_a

    .line 261
    .line 262
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    goto :goto_7

    .line 267
    :cond_a
    new-instance v2, Ljava/lang/String;

    .line 268
    .line 269
    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    move-object v3, v1

    .line 277
    check-cast v3, Ljava/lang/String;

    .line 278
    .line 279
    :cond_b
    :goto_8
    if-nez v3, :cond_c

    .line 280
    .line 281
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->c:Ljava/lang/Object;

    .line 282
    .line 283
    goto :goto_9

    .line 284
    :cond_c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/b5;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    :cond_d
    :goto_9
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/b5;->e:Ljava/lang/Object;

    .line 289
    .line 290
    iput v0, p0, Lcom/google/android/gms/internal/measurement/b5;->d:I

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 294
    .line 295
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw v0

    .line 299
    :cond_f
    :goto_a
    monitor-exit p0

    .line 300
    goto :goto_c

    .line 301
    :goto_b
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    throw v0

    .line 303
    :cond_10
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/b5;->e:Ljava/lang/Object;

    .line 304
    .line 305
    return-object v0
.end method
