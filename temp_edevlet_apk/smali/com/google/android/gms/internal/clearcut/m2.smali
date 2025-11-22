.class public final Lcom/google/android/gms/internal/clearcut/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/Object;

.field public final a:Lcom/google/android/gms/internal/clearcut/n2;

.field public final b:[Ljava/lang/Object;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:[I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:Ljava/lang/reflect/Field;

.field public y:Ljava/lang/Object;

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->p:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->q:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->r:I

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/m2;->c:Ljava/lang/Class;

    new-instance p1, Lcom/google/android/gms/internal/clearcut/n2;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/clearcut/n2;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/m2;->a:Lcom/google/android/gms/internal/clearcut/n2;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/m2;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/m2;->d:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/m2;->e:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->g:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->h:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->l:I

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/m2;->m:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/m2;->f:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->g:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->h:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->k:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->j:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->i:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->l:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, p1, [I

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/m2;->m:[I

    shl-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/m2;->n:I

    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    return-object v3

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    add-int/lit8 v2, v2, 0x28

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-int/2addr v3, v2

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    add-int/2addr v2, v3

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .line 68
    .line 69
    const-string v2, "Field "

    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p1, " for "

    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p0, " not found. Known fields are "

    .line 86
    .line 87
    invoke-static {v3, p0, v0}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->a:Lcom/google/android/gms/internal/clearcut/n2;

    .line 4
    .line 5
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/n2;->b:I

    .line 6
    .line 7
    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/n2;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v5, 0x1

    .line 15
    if-ge v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :goto_0
    if-nez v2, :cond_1

    .line 21
    .line 22
    return v4

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->s:I

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    iput v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->t:I

    .line 34
    .line 35
    and-int/lit16 v3, v2, 0xff

    .line 36
    .line 37
    iput v3, v0, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 38
    .line 39
    iget v6, v0, Lcom/google/android/gms/internal/clearcut/m2;->s:I

    .line 40
    .line 41
    iget v7, v0, Lcom/google/android/gms/internal/clearcut/m2;->p:I

    .line 42
    .line 43
    if-ge v6, v7, :cond_2

    .line 44
    .line 45
    iput v6, v0, Lcom/google/android/gms/internal/clearcut/m2;->p:I

    .line 46
    .line 47
    :cond_2
    iget v7, v0, Lcom/google/android/gms/internal/clearcut/m2;->q:I

    .line 48
    .line 49
    if-le v6, v7, :cond_3

    .line 50
    .line 51
    iput v6, v0, Lcom/google/android/gms/internal/clearcut/m2;->q:I

    .line 52
    .line 53
    :cond_3
    sget-object v7, Lcom/google/android/gms/internal/clearcut/r0;->m:Lcom/google/android/gms/internal/clearcut/r0;

    .line 54
    .line 55
    iget v8, v7, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 56
    .line 57
    if-ne v3, v8, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    sget-object v9, Lcom/google/android/gms/internal/clearcut/r0;->e:Lcom/google/android/gms/internal/clearcut/r0;

    .line 61
    .line 62
    iget v9, v9, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 63
    .line 64
    if-lt v3, v9, :cond_5

    .line 65
    .line 66
    sget-object v9, Lcom/google/android/gms/internal/clearcut/r0;->l:Lcom/google/android/gms/internal/clearcut/r0;

    .line 67
    .line 68
    iget v9, v9, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 69
    .line 70
    :cond_5
    :goto_1
    iget v9, v0, Lcom/google/android/gms/internal/clearcut/m2;->r:I

    .line 71
    .line 72
    add-int/2addr v9, v5

    .line 73
    iput v9, v0, Lcom/google/android/gms/internal/clearcut/m2;->r:I

    .line 74
    .line 75
    iget v10, v0, Lcom/google/android/gms/internal/clearcut/m2;->p:I

    .line 76
    .line 77
    sget-object v11, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 78
    .line 79
    const/16 v11, 0x28

    .line 80
    .line 81
    if-ge v6, v11, :cond_6

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_6
    int-to-long v11, v6

    .line 85
    int-to-long v13, v10

    .line 86
    sub-long/2addr v11, v13

    .line 87
    const-wide/16 v13, 0x1

    .line 88
    .line 89
    add-long/2addr v11, v13

    .line 90
    int-to-long v9, v9

    .line 91
    const-wide/16 v13, 0x2

    .line 92
    .line 93
    mul-long v13, v13, v9

    .line 94
    .line 95
    const-wide/16 v15, 0x3

    .line 96
    .line 97
    add-long/2addr v13, v15

    .line 98
    add-long/2addr v9, v15

    .line 99
    const-wide/16 v17, 0x9

    .line 100
    .line 101
    add-long v11, v11, v17

    .line 102
    .line 103
    mul-long v9, v9, v15

    .line 104
    .line 105
    add-long/2addr v9, v13

    .line 106
    cmp-long v13, v11, v9

    .line 107
    .line 108
    :goto_2
    and-int/lit16 v2, v2, 0x400

    .line 109
    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    goto :goto_3

    .line 114
    :cond_7
    const/4 v2, 0x0

    .line 115
    :goto_3
    if-eqz v2, :cond_8

    .line 116
    .line 117
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->o:I

    .line 118
    .line 119
    add-int/lit8 v9, v2, 0x1

    .line 120
    .line 121
    iput v9, v0, Lcom/google/android/gms/internal/clearcut/m2;->o:I

    .line 122
    .line 123
    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/m2;->m:[I

    .line 124
    .line 125
    aput v6, v9, v2

    .line 126
    .line 127
    :cond_8
    const/4 v2, 0x0

    .line 128
    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->y:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->z:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->A:Ljava/lang/Object;

    .line 133
    .line 134
    if-le v3, v8, :cond_9

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    const/4 v2, 0x0

    .line 139
    :goto_4
    iget v3, v0, Lcom/google/android/gms/internal/clearcut/m2;->d:I

    .line 140
    .line 141
    if-eqz v2, :cond_c

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iput v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->v:I

    .line 148
    .line 149
    iget v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 150
    .line 151
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->b:Lcom/google/android/gms/internal/clearcut/r0;

    .line 152
    .line 153
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x33

    .line 156
    .line 157
    if-eq v1, v2, :cond_16

    .line 158
    .line 159
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->d:Lcom/google/android/gms/internal/clearcut/r0;

    .line 160
    .line 161
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 162
    .line 163
    add-int/lit8 v2, v2, 0x33

    .line 164
    .line 165
    if-ne v1, v2, :cond_a

    .line 166
    .line 167
    goto/16 :goto_9

    .line 168
    .line 169
    :cond_a
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->c:Lcom/google/android/gms/internal/clearcut/r0;

    .line 170
    .line 171
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 172
    .line 173
    add-int/lit8 v2, v2, 0x33

    .line 174
    .line 175
    if-ne v1, v2, :cond_18

    .line 176
    .line 177
    and-int/lit8 v1, v3, 0x1

    .line 178
    .line 179
    if-ne v1, v5, :cond_b

    .line 180
    .line 181
    const/4 v4, 0x1

    .line 182
    :cond_b
    if-eqz v4, :cond_18

    .line 183
    .line 184
    goto/16 :goto_8

    .line 185
    .line 186
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/m2;->c()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    check-cast v2, Ljava/lang/String;

    .line 191
    .line 192
    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/m2;->c:Ljava/lang/Class;

    .line 193
    .line 194
    invoke-static {v6, v2}, Lcom/google/android/gms/internal/clearcut/m2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    iput-object v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->x:Ljava/lang/reflect/Field;

    .line 199
    .line 200
    and-int/lit8 v2, v3, 0x1

    .line 201
    .line 202
    if-ne v2, v5, :cond_d

    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    goto :goto_5

    .line 206
    :cond_d
    const/4 v2, 0x0

    .line 207
    :goto_5
    if-eqz v2, :cond_e

    .line 208
    .line 209
    iget v2, v0, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 210
    .line 211
    sget-object v6, Lcom/google/android/gms/internal/clearcut/r0;->d:Lcom/google/android/gms/internal/clearcut/r0;

    .line 212
    .line 213
    iget v6, v6, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 214
    .line 215
    if-gt v2, v6, :cond_e

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    goto :goto_6

    .line 219
    :cond_e
    const/4 v2, 0x0

    .line 220
    :goto_6
    if-eqz v2, :cond_f

    .line 221
    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n2;->a()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    iput v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->w:I

    .line 227
    .line 228
    :cond_f
    iget v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 229
    .line 230
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->b:Lcom/google/android/gms/internal/clearcut/r0;

    .line 231
    .line 232
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 233
    .line 234
    if-eq v1, v2, :cond_17

    .line 235
    .line 236
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->d:Lcom/google/android/gms/internal/clearcut/r0;

    .line 237
    .line 238
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 239
    .line 240
    if-ne v1, v2, :cond_10

    .line 241
    .line 242
    goto :goto_a

    .line 243
    :cond_10
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->f:Lcom/google/android/gms/internal/clearcut/r0;

    .line 244
    .line 245
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 246
    .line 247
    if-eq v1, v2, :cond_16

    .line 248
    .line 249
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->l:Lcom/google/android/gms/internal/clearcut/r0;

    .line 250
    .line 251
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 252
    .line 253
    if-ne v1, v2, :cond_11

    .line 254
    .line 255
    goto :goto_9

    .line 256
    :cond_11
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->c:Lcom/google/android/gms/internal/clearcut/r0;

    .line 257
    .line 258
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 259
    .line 260
    if-eq v1, v2, :cond_14

    .line 261
    .line 262
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->g:Lcom/google/android/gms/internal/clearcut/r0;

    .line 263
    .line 264
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 265
    .line 266
    if-eq v1, v2, :cond_14

    .line 267
    .line 268
    sget-object v2, Lcom/google/android/gms/internal/clearcut/r0;->j:Lcom/google/android/gms/internal/clearcut/r0;

    .line 269
    .line 270
    iget v2, v2, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 271
    .line 272
    if-ne v1, v2, :cond_12

    .line 273
    .line 274
    goto :goto_7

    .line 275
    :cond_12
    iget v2, v7, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 276
    .line 277
    if-ne v1, v2, :cond_18

    .line 278
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/m2;->c()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->A:Ljava/lang/Object;

    .line 284
    .line 285
    iget v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->t:I

    .line 286
    .line 287
    and-int/lit16 v1, v1, 0x800

    .line 288
    .line 289
    if-eqz v1, :cond_13

    .line 290
    .line 291
    const/4 v4, 0x1

    .line 292
    :cond_13
    if-eqz v4, :cond_18

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :cond_14
    :goto_7
    and-int/lit8 v1, v3, 0x1

    .line 296
    .line 297
    if-ne v1, v5, :cond_15

    .line 298
    .line 299
    const/4 v4, 0x1

    .line 300
    :cond_15
    if-eqz v4, :cond_18

    .line 301
    .line 302
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/m2;->c()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->z:Ljava/lang/Object;

    .line 307
    .line 308
    goto :goto_c

    .line 309
    :cond_16
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/clearcut/m2;->c()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    goto :goto_b

    .line 314
    :cond_17
    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->x:Ljava/lang/reflect/Field;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    :goto_b
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/m2;->y:Ljava/lang/Object;

    .line 321
    .line 322
    :cond_18
    :goto_c
    return v5
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/m2;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->n:I

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/m2;->b:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0
.end method
