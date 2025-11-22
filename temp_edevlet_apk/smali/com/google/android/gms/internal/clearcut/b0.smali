.class public final Lcom/google/android/gms/internal/clearcut/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/k;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xa

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lw4/a;Lh5/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lya/f;)V
    .locals 1

    .line 1
    sget-object v0, Lwa/h;->a:Lwa/h$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/gms/internal/clearcut/b0;->a(Ljava/util/ArrayList;II)V

    array-length v1, p1

    if-le v1, v2, :cond_1

    array-length p1, p1

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/clearcut/b0;->a(Ljava/util/ArrayList;II)V

    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;II)V
    .locals 7

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    sub-int/2addr v1, p2

    .line 7
    const/4 v2, 0x2

    .line 8
    if-lt v1, v2, :cond_2

    .line 9
    .line 10
    aget-byte v1, v0, p2

    .line 11
    .line 12
    if-lez v1, :cond_2

    .line 13
    .line 14
    add-int/lit8 v2, p2, 0x1

    .line 15
    .line 16
    aget-byte v2, v0, v2

    .line 17
    .line 18
    add-int/lit8 v3, p2, 0x2

    .line 19
    .line 20
    array-length v4, v0

    .line 21
    if-ge v3, v4, :cond_2

    .line 22
    .line 23
    new-instance v4, Lnd/d;

    .line 24
    .line 25
    invoke-direct {v4}, Lnd/d;-><init>()V

    .line 26
    .line 27
    .line 28
    add-int v5, p2, v1

    .line 29
    .line 30
    iput v5, v4, Lnd/d;->d:I

    .line 31
    .line 32
    array-length v6, v0

    .line 33
    if-lt v5, v6, :cond_1

    .line 34
    .line 35
    array-length v0, v0

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    iput v0, v4, Lnd/d;->d:I

    .line 39
    .line 40
    :cond_1
    iput-byte v2, v4, Lnd/d;->a:B

    .line 41
    .line 42
    iput v1, v4, Lnd/d;->b:I

    .line 43
    .line 44
    iput v3, v4, Lnd/d;->c:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v4, 0x0

    .line 48
    :goto_0
    if-eqz v4, :cond_3

    .line 49
    .line 50
    iget v0, v4, Lnd/d;->b:I

    .line 51
    .line 52
    add-int/2addr p2, v0

    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_3
    if-eqz v4, :cond_4

    .line 59
    .line 60
    if-lt p2, p3, :cond_0

    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method public final b(Lcb/g;)Lma/e;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcb/g;->d()Llb/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcb/g;->G()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {p1}, Lcb/g;->q()Lsa/r;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/clearcut/b0;->b(Lcb/g;)Lma/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Lma/e;->x0()Lvb/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object v0, v2

    .line 29
    :goto_0
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Lcb/s;->getName()Llb/f;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v1, Lua/c;->h:Lua/c;

    .line 36
    .line 37
    invoke-interface {v0, p1, v1}, Lvb/l;->e(Llb/f;Lua/c;)Lma/g;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move-object p1, v2

    .line 43
    :goto_1
    instance-of v0, p1, Lma/e;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    move-object v2, p1

    .line 48
    check-cast v2, Lma/e;

    .line 49
    .line 50
    :cond_3
    return-object v2

    .line 51
    :cond_4
    if-nez v0, :cond_5

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lya/f;

    .line 57
    .line 58
    invoke-virtual {v0}, Llb/c;->e()Llb/c;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v3, "fqName.parent()"

    .line 63
    .line 64
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lya/f;->a(Llb/c;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lm9/t;->c1(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lza/m;

    .line 76
    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    iget-object v0, v0, Lza/m;->k:Lza/c;

    .line 80
    .line 81
    iget-object v0, v0, Lza/c;->d:Lza/n;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-interface {p1}, Lcb/s;->getName()Llb/f;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1, p1}, Lza/n;->v(Llb/f;Lcb/g;)Lma/e;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :cond_6
    return-object v2
.end method

.method public final e(Ln3/a$e;Ljava/lang/Object;)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/clearcut/b0;->a:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lw4/a;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/b0;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lh5/q;

    .line 10
    .line 11
    move-object/from16 v3, p1

    .line 12
    .line 13
    check-cast v3, Lm4/q;

    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    check-cast v4, Lh5/l;

    .line 18
    .line 19
    sget-object v5, Lm4/d;->k:Ln3/a;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object v5, Lw4/h;->a:Lm3/d;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Lm4/q;->F(Lm3/d;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lr3/c;->w()Landroid/os/IInterface;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lm4/m0;

    .line 37
    .line 38
    new-instance v5, Lm4/i;

    .line 39
    .line 40
    invoke-direct {v5, v4}, Lm4/i;-><init>(Lh5/l;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v3, v0, v5}, Lm4/m0;->X(Lw4/a;Lm4/i;)Lr3/l;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v2, :cond_a

    .line 48
    .line 49
    new-instance v3, Lcom/airbnb/epoxy/a;

    .line 50
    .line 51
    const/4 v4, 0x3

    .line 52
    invoke-direct {v3, v4, v0}, Lcom/airbnb/epoxy/a;-><init>(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v2, Lh5/q;->a:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Lh5/z;

    .line 58
    .line 59
    new-instance v2, Lj0/e;

    .line 60
    .line 61
    invoke-direct {v2, v3}, Lj0/e;-><init>(Lh5/h;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lh5/m;->a:Lh5/y;

    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 67
    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_0
    new-instance v5, Lm4/f;

    .line 72
    .line 73
    invoke-direct {v5, v3, v4}, Lm4/f;-><init>(Lm4/q;Lh5/l;)V

    .line 74
    .line 75
    .line 76
    new-instance v6, Lo3/h;

    .line 77
    .line 78
    invoke-direct {v6, v5}, Lo3/h;-><init>(Lm4/f;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, v6, Lo3/h;->c:Lo3/h$a;

    .line 82
    .line 83
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v7, Lm4/g;

    .line 87
    .line 88
    invoke-direct {v7, v6, v4}, Lm4/g;-><init>(Lo3/h;Lh5/l;)V

    .line 89
    .line 90
    .line 91
    new-instance v8, Lh5/l;

    .line 92
    .line 93
    invoke-direct {v8}, Lh5/l;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v9, Lcom/google/android/gms/location/LocationRequest$a;

    .line 97
    .line 98
    iget v10, v0, Lw4/a;->c:I

    .line 99
    .line 100
    invoke-direct {v9, v10}, Lcom/google/android/gms/location/LocationRequest$a;-><init>(I)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v10, 0x0

    .line 104
    .line 105
    iput-wide v10, v9, Lcom/google/android/gms/location/LocationRequest$a;->c:J

    .line 106
    .line 107
    iget-wide v12, v0, Lw4/a;->d:J

    .line 108
    .line 109
    cmp-long v16, v12, v10

    .line 110
    .line 111
    if-lez v16, :cond_1

    .line 112
    .line 113
    const/4 v14, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_1
    const/4 v14, 0x0

    .line 116
    :goto_0
    const-string v15, "durationMillis must be greater than 0"

    .line 117
    .line 118
    invoke-static {v14, v15}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-wide v12, v9, Lcom/google/android/gms/location/LocationRequest$a;->e:J

    .line 122
    .line 123
    iget v12, v0, Lw4/a;->b:I

    .line 124
    .line 125
    invoke-virtual {v9, v12}, Lcom/google/android/gms/location/LocationRequest$a;->b(I)V

    .line 126
    .line 127
    .line 128
    iget-wide v12, v0, Lw4/a;->a:J

    .line 129
    .line 130
    const-wide/16 v14, -0x1

    .line 131
    .line 132
    cmp-long v16, v12, v14

    .line 133
    .line 134
    if-eqz v16, :cond_3

    .line 135
    .line 136
    cmp-long v14, v12, v10

    .line 137
    .line 138
    if-ltz v14, :cond_2

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    const/4 v14, 0x0

    .line 142
    goto :goto_2

    .line 143
    :cond_3
    :goto_1
    const/4 v14, 0x1

    .line 144
    :goto_2
    const-string v10, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE"

    .line 145
    .line 146
    invoke-static {v14, v10}, Lr3/r;->b(ZLjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iput-wide v12, v9, Lcom/google/android/gms/location/LocationRequest$a;->i:J

    .line 150
    .line 151
    iget-boolean v10, v0, Lw4/a;->e:Z

    .line 152
    .line 153
    iput-boolean v10, v9, Lcom/google/android/gms/location/LocationRequest$a;->m:Z

    .line 154
    .line 155
    iget v10, v0, Lw4/a;->f:I

    .line 156
    .line 157
    invoke-virtual {v9, v10}, Lcom/google/android/gms/location/LocationRequest$a;->c(I)V

    .line 158
    .line 159
    .line 160
    const/4 v10, 0x1

    .line 161
    iput-boolean v10, v9, Lcom/google/android/gms/location/LocationRequest$a;->h:Z

    .line 162
    .line 163
    iget-object v10, v0, Lw4/a;->g:Ljava/lang/String;

    .line 164
    .line 165
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 166
    .line 167
    const/16 v12, 0x1e

    .line 168
    .line 169
    if-ge v11, v12, :cond_4

    .line 170
    .line 171
    iput-object v10, v9, Lcom/google/android/gms/location/LocationRequest$a;->l:Ljava/lang/String;

    .line 172
    .line 173
    :cond_4
    iget-object v0, v0, Lw4/a;->h:Landroid/os/WorkSource;

    .line 174
    .line 175
    iput-object v0, v9, Lcom/google/android/gms/location/LocationRequest$a;->n:Landroid/os/WorkSource;

    .line 176
    .line 177
    invoke-virtual {v9}, Lcom/google/android/gms/location/LocationRequest$a;->a()Lcom/google/android/gms/location/LocationRequest;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v6, v6, Lo3/h;->c:Lo3/h$a;

    .line 182
    .line 183
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    sget-object v9, Lw4/h;->c:Lm3/d;

    .line 187
    .line 188
    invoke-virtual {v3, v9}, Lm4/q;->F(Lm3/d;)Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    iget-object v10, v3, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 193
    .line 194
    monitor-enter v10

    .line 195
    :try_start_0
    iget-object v13, v3, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 196
    .line 197
    invoke-virtual {v13, v6}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    check-cast v13, Lm4/o;

    .line 202
    .line 203
    if-eqz v13, :cond_6

    .line 204
    .line 205
    if-eqz v9, :cond_5

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_5
    iget-object v0, v13, Lm4/o;->b:Lm4/g;

    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 216
    .line 217
    .line 218
    throw v0

    .line 219
    :cond_6
    :goto_3
    new-instance v15, Lm4/o;

    .line 220
    .line 221
    invoke-direct {v15, v7}, Lm4/o;-><init>(Lm4/g;)V

    .line 222
    .line 223
    .line 224
    iget-object v7, v3, Lm4/q;->C:Landroidx/collection/SimpleArrayMap;

    .line 225
    .line 226
    invoke-virtual {v7, v6, v15}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-object v7, v6, Lo3/h$a;->a:Ljava/lang/Object;

    .line 230
    .line 231
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    new-instance v14, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v6, v6, Lo3/h$a;->b:Ljava/lang/String;

    .line 241
    .line 242
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v6, "@"

    .line 246
    .line 247
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v18

    .line 257
    const/4 v6, 0x0

    .line 258
    if-eqz v9, :cond_8

    .line 259
    .line 260
    invoke-virtual {v3}, Lr3/c;->w()Landroid/os/IInterface;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Lm4/m0;

    .line 265
    .line 266
    new-instance v9, Lm4/r;

    .line 267
    .line 268
    if-nez v13, :cond_7

    .line 269
    .line 270
    move-object v13, v6

    .line 271
    :cond_7
    const/4 v12, 0x2

    .line 272
    const/16 v16, 0x0

    .line 273
    .line 274
    const/16 v17, 0x0

    .line 275
    .line 276
    move-object v11, v9

    .line 277
    move-object v14, v15

    .line 278
    move-object/from16 v15, v16

    .line 279
    .line 280
    move-object/from16 v16, v17

    .line 281
    .line 282
    move-object/from16 v17, v18

    .line 283
    .line 284
    invoke-direct/range {v11 .. v17}, Lm4/r;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    new-instance v11, Lm4/h;

    .line 288
    .line 289
    invoke-direct {v11, v6, v8}, Lm4/h;-><init>(Ljava/lang/Boolean;Lh5/l;)V

    .line 290
    .line 291
    .line 292
    invoke-interface {v7, v9, v0, v11}, Lm4/m0;->R(Lm4/r;Lcom/google/android/gms/location/LocationRequest;Lm4/h;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    goto :goto_6

    .line 298
    :cond_8
    invoke-virtual {v3}, Lr3/c;->w()Landroid/os/IInterface;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    check-cast v7, Lm4/m0;

    .line 303
    .line 304
    new-instance v9, Lcom/google/android/gms/location/LocationRequest$a;

    .line 305
    .line 306
    invoke-direct {v9, v0}, Lcom/google/android/gms/location/LocationRequest$a;-><init>(Lcom/google/android/gms/location/LocationRequest;)V

    .line 307
    .line 308
    .line 309
    if-ge v11, v12, :cond_9

    .line 310
    .line 311
    iput-object v6, v9, Lcom/google/android/gms/location/LocationRequest$a;->l:Ljava/lang/String;

    .line 312
    .line 313
    :cond_9
    invoke-virtual {v9}, Lcom/google/android/gms/location/LocationRequest$a;->a()Lcom/google/android/gms/location/LocationRequest;

    .line 314
    .line 315
    .line 316
    move-result-object v20

    .line 317
    new-instance v13, Lm4/t;

    .line 318
    .line 319
    const/16 v21, 0x0

    .line 320
    .line 321
    const/16 v22, 0x0

    .line 322
    .line 323
    const/16 v23, 0x0

    .line 324
    .line 325
    const/16 v24, 0x0

    .line 326
    .line 327
    const/16 v25, 0x0

    .line 328
    .line 329
    const/16 v26, 0x0

    .line 330
    .line 331
    const/16 v27, 0x0

    .line 332
    .line 333
    const-wide v28, 0x7fffffffffffffffL

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    move-object/from16 v19, v13

    .line 339
    .line 340
    invoke-direct/range {v19 .. v29}, Lm4/t;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZLjava/lang/String;ZZLjava/lang/String;J)V

    .line 341
    .line 342
    .line 343
    new-instance v0, Lm4/k;

    .line 344
    .line 345
    invoke-direct {v0, v8, v15}, Lm4/k;-><init>(Lh5/l;Lm4/o;)V

    .line 346
    .line 347
    .line 348
    new-instance v6, Lm4/v;

    .line 349
    .line 350
    const/4 v12, 0x1

    .line 351
    const/4 v14, 0x0

    .line 352
    const/16 v16, 0x0

    .line 353
    .line 354
    move-object v11, v6

    .line 355
    move-object/from16 v17, v0

    .line 356
    .line 357
    invoke-direct/range {v11 .. v18}, Lm4/v;-><init>(ILm4/t;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-interface {v7, v6}, Lm4/m0;->E(Lm4/v;)V

    .line 361
    .line 362
    .line 363
    :goto_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v0, v8, Lh5/l;->a:Lh5/z;

    .line 365
    .line 366
    new-instance v6, Lj0/e;

    .line 367
    .line 368
    invoke-direct {v6, v4}, Lj0/e;-><init>(Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v6}, Lh5/z;->b(Lh5/e;)V

    .line 372
    .line 373
    .line 374
    if-eqz v2, :cond_a

    .line 375
    .line 376
    new-instance v0, Lqd/f;

    .line 377
    .line 378
    invoke-direct {v0, v3, v5}, Lqd/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    iget-object v2, v2, Lh5/q;->a:Ljava/lang/Object;

    .line 382
    .line 383
    check-cast v2, Lh5/z;

    .line 384
    .line 385
    new-instance v3, Lj0/e;

    .line 386
    .line 387
    invoke-direct {v3, v0}, Lj0/e;-><init>(Lh5/h;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Lh5/m;->a:Lh5/y;

    .line 391
    .line 392
    invoke-virtual {v2, v0, v3}, Lh5/z;->d(Ljava/util/concurrent/Executor;Lh5/g;)Lh5/z;

    .line 393
    .line 394
    .line 395
    :cond_a
    :goto_5
    return-void

    .line 396
    :goto_6
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    throw v0
.end method
