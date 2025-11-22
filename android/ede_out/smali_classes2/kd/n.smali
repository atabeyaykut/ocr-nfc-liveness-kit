.class public final Lkd/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic g:I


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lgd/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/altbeacon/beacon/service/BeaconService;)V
    .locals 7
    .param p1    # Lorg/altbeacon/beacon/service/BeaconService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lgd/e;->g(Landroid/content/Context;)Lgd/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lgd/e;->m:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v0, "n"

    .line 11
    .line 12
    const-string v1, "API Applying settings changes to scanner service"

    .line 13
    .line 14
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 20
    .line 21
    invoke-virtual {p1}, Lkd/k;->e()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    const-string v1, "n"

    .line 27
    .line 28
    const-string v3, "API Applying settings changes to scanner in other process"

    .line 29
    .line 30
    new-array v4, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-static {v1, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lgd/e;->i:Lmd/a;

    .line 36
    .line 37
    invoke-virtual {v1}, Lmd/a;->size()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    iget-object v4, p0, Lkd/n;->a:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x1

    .line 48
    if-ne v3, v4, :cond_3

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    :goto_0
    invoke-virtual {v1}, Lmd/a;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ge v3, v4, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lgd/g;

    .line 62
    .line 63
    iget-object v6, p0, Lkd/n;->a:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v6}, Lgd/g;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    const-string v1, "n"

    .line 76
    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v6, "Beacon parsers have changed to: "

    .line 80
    .line 81
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v6, p0, Lkd/n;->a:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lgd/g;

    .line 91
    .line 92
    iget-object v3, v3, Lgd/g;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    new-array v4, v2, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v1, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const/4 v1, 0x0

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const-string v1, "n"

    .line 113
    .line 114
    const-string v3, "Beacon parsers have been added or removed."

    .line 115
    .line 116
    new-array v4, v2, [Ljava/lang/Object;

    .line 117
    .line 118
    invoke-static {v1, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    const/4 v1, 0x1

    .line 122
    :goto_2
    if-eqz v1, :cond_4

    .line 123
    .line 124
    const-string v1, "n"

    .line 125
    .line 126
    const-string v3, "Updating beacon parsers"

    .line 127
    .line 128
    new-array v4, v2, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v1, v3, v4}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lgd/e;->i:Lmd/a;

    .line 134
    .line 135
    invoke-virtual {v1}, Lmd/a;->clear()V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Lgd/e;->i:Lmd/a;

    .line 139
    .line 140
    iget-object v1, p0, Lkd/n;->a:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lmd/a;->addAll(Ljava/util/Collection;)Z

    .line 143
    .line 144
    .line 145
    iget-object v0, p1, Lorg/altbeacon/beacon/service/BeaconService;->b:Lkd/k;

    .line 146
    .line 147
    invoke-virtual {v0}, Lkd/k;->e()V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_4
    const-string v0, "n"

    .line 152
    .line 153
    const-string v1, "Beacon parsers unchanged."

    .line 154
    .line 155
    new-array v3, v2, [Ljava/lang/Object;

    .line 156
    .line 157
    invoke-static {v0, v1, v3}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :goto_3
    invoke-static {p1}, Lkd/e;->c(Landroid/content/Context;)Lkd/e;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-boolean v0, p1, Lkd/e;->d:Z

    .line 165
    .line 166
    if-eqz v0, :cond_5

    .line 167
    .line 168
    iget-object v0, p0, Lkd/n;->b:Ljava/lang/Boolean;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_5

    .line 175
    .line 176
    invoke-virtual {p1}, Lkd/e;->k()V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_5
    iget-boolean v0, p1, Lkd/e;->d:Z

    .line 181
    .line 182
    if-nez v0, :cond_7

    .line 183
    .line 184
    iget-object v0, p0, Lkd/n;->b:Ljava/lang/Boolean;

    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    monitor-enter p1

    .line 193
    :try_start_0
    iget-boolean v0, p1, Lkd/e;->d:Z

    .line 194
    .line 195
    if-nez v0, :cond_6

    .line 196
    .line 197
    iput-boolean v5, p1, Lkd/e;->d:Z

    .line 198
    .line 199
    invoke-virtual {p1}, Lkd/e;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    :cond_6
    monitor-exit p1

    .line 203
    goto :goto_4

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    monitor-exit p1

    .line 206
    throw v0

    .line 207
    :cond_7
    :goto_4
    iget-object p1, p0, Lkd/n;->c:Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v1, "API setAndroidLScanningDisabled "

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    new-array v1, v2, [Ljava/lang/Object;

    .line 228
    .line 229
    const-string v3, "BeaconManager"

    .line 230
    .line 231
    invoke-static {v3, v0, v1}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    sput-boolean p1, Lgd/e;->y:Z

    .line 235
    .line 236
    sget-object p1, Lgd/e;->x:Lgd/e;

    .line 237
    .line 238
    if-eqz p1, :cond_8

    .line 239
    .line 240
    invoke-virtual {p1}, Lgd/e;->b()V

    .line 241
    .line 242
    .line 243
    :cond_8
    iget-object p1, p0, Lkd/n;->d:Ljava/lang/Long;

    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 246
    .line 247
    .line 248
    move-result-wide v0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    .line 250
    .line 251
    const-string v3, "API setRegionExitPeriod "

    .line 252
    .line 253
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    new-array v2, v2, [Ljava/lang/Object;

    .line 264
    .line 265
    const-string v3, "BeaconManager"

    .line 266
    .line 267
    invoke-static {v3, p1, v2}, Lid/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    sput-wide v0, Lgd/e;->A:J

    .line 271
    .line 272
    sget-object p1, Lgd/e;->x:Lgd/e;

    .line 273
    .line 274
    if-eqz p1, :cond_9

    .line 275
    .line 276
    invoke-virtual {p1}, Lgd/e;->b()V

    .line 277
    .line 278
    .line 279
    :cond_9
    iget-object p1, p0, Lkd/n;->e:Ljava/lang/Boolean;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    sput-boolean p1, Lkd/f;->c:Z

    .line 286
    .line 287
    iget-object p1, p0, Lkd/n;->f:Ljava/lang/Boolean;

    .line 288
    .line 289
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    sput-boolean p1, Lgd/c;->z:Z

    .line 294
    .line 295
    :goto_5
    return-void
.end method
