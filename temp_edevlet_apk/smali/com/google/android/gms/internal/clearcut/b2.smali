.class public final Lcom/google/android/gms/internal/clearcut/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/clearcut/o2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/clearcut/o2<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Lcom/google/android/gms/internal/clearcut/x1;

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:[I

.field public final k:[I

.field public final l:Lcom/google/android/gms/internal/clearcut/e2;

.field public final m:Lcom/google/android/gms/internal/clearcut/k1;

.field public final n:Lcom/google/android/gms/internal/clearcut/a3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/a3<",
            "**>;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/gms/internal/clearcut/j0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/j0<",
            "*>;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/android/gms/internal/clearcut/s1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/g3;->l()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/x1;Z[I[I[ILcom/google/android/gms/internal/clearcut/e2;Lcom/google/android/gms/internal/clearcut/k1;Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/b2;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/b2;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/clearcut/b2;->d:I

    iput p5, p0, Lcom/google/android/gms/internal/clearcut/b2;->e:I

    instance-of p1, p6, Lcom/google/android/gms/internal/clearcut/v0;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    if-eqz p14, :cond_0

    invoke-virtual {p14, p6}, Lcom/google/android/gms/internal/clearcut/j0;->f(Lcom/google/android/gms/internal/clearcut/x1;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/clearcut/b2;->i:[I

    iput-object p9, p0, Lcom/google/android/gms/internal/clearcut/b2;->j:[I

    iput-object p10, p0, Lcom/google/android/gms/internal/clearcut/b2;->k:[I

    iput-object p11, p0, Lcom/google/android/gms/internal/clearcut/b2;->l:Lcom/google/android/gms/internal/clearcut/e2;

    iput-object p12, p0, Lcom/google/android/gms/internal/clearcut/b2;->m:Lcom/google/android/gms/internal/clearcut/k1;

    iput-object p13, p0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    iput-object p14, p0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    iput-object p6, p0, Lcom/google/android/gms/internal/clearcut/b2;->f:Lcom/google/android/gms/internal/clearcut/x1;

    iput-object p15, p0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    return-void
.end method

.method public static G(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static H(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static I(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static j(Lcom/google/android/gms/internal/clearcut/o2;I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/clearcut/o2<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/clearcut/a1<",
            "*>;",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/clearcut/b2;->l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I

    move-result p3

    :goto_0
    iget-object v0, p6, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge p3, p4, :cond_0

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne p1, v1, :cond_0

    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/clearcut/b2;->l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I

    move-result p3

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static k(Lcom/google/android/gms/internal/clearcut/o2;[BIIILcom/google/android/gms/internal/clearcut/t;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/android/gms/internal/clearcut/b2;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/b2;->c()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/b2;->o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/clearcut/b2;->a(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    return p1
.end method

.method public static l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_0

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/clearcut/s;->d(I[BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/clearcut/t;->a:I

    :cond_0
    move v3, v0

    if-ltz p2, :cond_1

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/o2;->c()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/o2;->g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/t;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/clearcut/o2;->a(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    return p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object p0

    throw p0
.end method

.method public static p(Lcom/google/android/gms/internal/clearcut/v1;Lcom/google/android/gms/internal/clearcut/e2;Lcom/google/android/gms/internal/clearcut/k1;Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/s1;)Lcom/google/android/gms/internal/clearcut/b2;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/l2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_1b

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/clearcut/l2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/l2;->a()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 17
    .line 18
    const/4 v13, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v13, 0x0

    .line 21
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/l2;->b:Lcom/google/android/gms/internal/clearcut/m2;

    .line 22
    .line 23
    iget v6, v1, Lcom/google/android/gms/internal/clearcut/m2;->e:I

    .line 24
    .line 25
    if-nez v6, :cond_1

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    iget v6, v1, Lcom/google/android/gms/internal/clearcut/m2;->g:I

    .line 32
    .line 33
    iget v7, v1, Lcom/google/android/gms/internal/clearcut/m2;->h:I

    .line 34
    .line 35
    iget v8, v1, Lcom/google/android/gms/internal/clearcut/m2;->k:I

    .line 36
    .line 37
    move v9, v6

    .line 38
    move v10, v7

    .line 39
    :goto_1
    shl-int/lit8 v6, v8, 0x2

    .line 40
    .line 41
    new-array v7, v6, [I

    .line 42
    .line 43
    shl-int/lit8 v6, v8, 0x1

    .line 44
    .line 45
    new-array v8, v6, [Ljava/lang/Object;

    .line 46
    .line 47
    iget v6, v1, Lcom/google/android/gms/internal/clearcut/m2;->i:I

    .line 48
    .line 49
    if-lez v6, :cond_2

    .line 50
    .line 51
    new-array v6, v6, [I

    .line 52
    .line 53
    move-object v15, v6

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v15, v2

    .line 56
    :goto_2
    iget v6, v1, Lcom/google/android/gms/internal/clearcut/m2;->l:I

    .line 57
    .line 58
    if-lez v6, :cond_3

    .line 59
    .line 60
    new-array v2, v6, [I

    .line 61
    .line 62
    :cond_3
    move-object/from16 v16, v2

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/m2;->a()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_19

    .line 69
    .line 70
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->s:I

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    const/4 v12, 0x0

    .line 75
    :goto_3
    iget v14, v1, Lcom/google/android/gms/internal/clearcut/m2;->j:I

    .line 76
    .line 77
    if-ge v2, v14, :cond_5

    .line 78
    .line 79
    sub-int v14, v2, v9

    .line 80
    .line 81
    shl-int/2addr v14, v3

    .line 82
    if-ge v6, v14, :cond_5

    .line 83
    .line 84
    const/4 v14, 0x0

    .line 85
    :goto_4
    const/4 v3, 0x4

    .line 86
    if-ge v14, v3, :cond_4

    .line 87
    .line 88
    add-int v3, v6, v14

    .line 89
    .line 90
    const/16 v17, -0x1

    .line 91
    .line 92
    aput v17, v7, v3

    .line 93
    .line 94
    add-int/lit8 v14, v14, 0x1

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_4
    move/from16 v20, v10

    .line 98
    .line 99
    move/from16 v19, v13

    .line 100
    .line 101
    const/4 v5, 0x1

    .line 102
    move v13, v9

    .line 103
    goto/16 :goto_14

    .line 104
    .line 105
    :cond_5
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 106
    .line 107
    sget-object v3, Lcom/google/android/gms/internal/clearcut/r0;->m:Lcom/google/android/gms/internal/clearcut/r0;

    .line 108
    .line 109
    iget v14, v3, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 110
    .line 111
    if-le v2, v14, :cond_6

    .line 112
    .line 113
    const/4 v2, 0x1

    .line 114
    goto :goto_5

    .line 115
    :cond_6
    const/4 v2, 0x0

    .line 116
    :goto_5
    iget-object v14, v1, Lcom/google/android/gms/internal/clearcut/m2;->c:Ljava/lang/Class;

    .line 117
    .line 118
    iget-object v5, v1, Lcom/google/android/gms/internal/clearcut/m2;->b:[Ljava/lang/Object;

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->v:I

    .line 123
    .line 124
    shl-int/2addr v2, v4

    .line 125
    aget-object v4, v5, v2

    .line 126
    .line 127
    move/from16 v19, v13

    .line 128
    .line 129
    instance-of v13, v4, Ljava/lang/reflect/Field;

    .line 130
    .line 131
    if-eqz v13, :cond_7

    .line 132
    .line 133
    check-cast v4, Ljava/lang/reflect/Field;

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_7
    check-cast v4, Ljava/lang/String;

    .line 137
    .line 138
    invoke-static {v14, v4}, Lcom/google/android/gms/internal/clearcut/m2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    aput-object v4, v5, v2

    .line 143
    .line 144
    :goto_6
    sget-object v2, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 145
    .line 146
    move v13, v9

    .line 147
    move/from16 v20, v10

    .line 148
    .line 149
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v9

    .line 153
    long-to-int v4, v9

    .line 154
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/m2;->v:I

    .line 155
    .line 156
    const/4 v10, 0x1

    .line 157
    shl-int/2addr v9, v10

    .line 158
    add-int/2addr v9, v10

    .line 159
    aget-object v10, v5, v9

    .line 160
    .line 161
    move/from16 v21, v4

    .line 162
    .line 163
    instance-of v4, v10, Ljava/lang/reflect/Field;

    .line 164
    .line 165
    if-eqz v4, :cond_8

    .line 166
    .line 167
    check-cast v10, Ljava/lang/reflect/Field;

    .line 168
    .line 169
    goto :goto_7

    .line 170
    :cond_8
    check-cast v10, Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v14, v10}, Lcom/google/android/gms/internal/clearcut/m2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    aput-object v10, v5, v9

    .line 177
    .line 178
    :goto_7
    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v4

    .line 182
    long-to-int v2, v4

    .line 183
    move/from16 v4, v21

    .line 184
    .line 185
    goto :goto_b

    .line 186
    :cond_9
    move/from16 v20, v10

    .line 187
    .line 188
    move/from16 v19, v13

    .line 189
    .line 190
    move v13, v9

    .line 191
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->x:Ljava/lang/reflect/Field;

    .line 192
    .line 193
    sget-object v4, Lcom/google/android/gms/internal/clearcut/g3;->d:Lcom/google/android/gms/internal/clearcut/g3$d;

    .line 194
    .line 195
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 196
    .line 197
    .line 198
    move-result-wide v9

    .line 199
    long-to-int v2, v9

    .line 200
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/m2;->d:I

    .line 201
    .line 202
    const/4 v10, 0x1

    .line 203
    and-int/2addr v9, v10

    .line 204
    if-ne v9, v10, :cond_a

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    goto :goto_8

    .line 208
    :cond_a
    const/4 v9, 0x0

    .line 209
    :goto_8
    if-eqz v9, :cond_b

    .line 210
    .line 211
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 212
    .line 213
    sget-object v10, Lcom/google/android/gms/internal/clearcut/r0;->d:Lcom/google/android/gms/internal/clearcut/r0;

    .line 214
    .line 215
    iget v10, v10, Lcom/google/android/gms/internal/clearcut/r0;->a:I

    .line 216
    .line 217
    if-gt v9, v10, :cond_b

    .line 218
    .line 219
    const/4 v9, 0x1

    .line 220
    goto :goto_9

    .line 221
    :cond_b
    const/4 v9, 0x0

    .line 222
    :goto_9
    if-eqz v9, :cond_d

    .line 223
    .line 224
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/m2;->f:I

    .line 225
    .line 226
    const/4 v10, 0x1

    .line 227
    shl-int/2addr v9, v10

    .line 228
    iget v10, v1, Lcom/google/android/gms/internal/clearcut/m2;->w:I

    .line 229
    .line 230
    div-int/lit8 v10, v10, 0x20

    .line 231
    .line 232
    add-int/2addr v10, v9

    .line 233
    aget-object v9, v5, v10

    .line 234
    .line 235
    move/from16 v21, v2

    .line 236
    .line 237
    instance-of v2, v9, Ljava/lang/reflect/Field;

    .line 238
    .line 239
    if-eqz v2, :cond_c

    .line 240
    .line 241
    check-cast v9, Ljava/lang/reflect/Field;

    .line 242
    .line 243
    goto :goto_a

    .line 244
    :cond_c
    check-cast v9, Ljava/lang/String;

    .line 245
    .line 246
    invoke-static {v14, v9}, Lcom/google/android/gms/internal/clearcut/m2;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 247
    .line 248
    .line 249
    move-result-object v9

    .line 250
    aput-object v9, v5, v10

    .line 251
    .line 252
    :goto_a
    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/clearcut/g3$d;->a(Ljava/lang/reflect/Field;)J

    .line 253
    .line 254
    .line 255
    move-result-wide v4

    .line 256
    long-to-int v2, v4

    .line 257
    iget v4, v1, Lcom/google/android/gms/internal/clearcut/m2;->w:I

    .line 258
    .line 259
    rem-int/lit8 v4, v4, 0x20

    .line 260
    .line 261
    move v5, v4

    .line 262
    move/from16 v4, v21

    .line 263
    .line 264
    goto :goto_c

    .line 265
    :cond_d
    move/from16 v21, v2

    .line 266
    .line 267
    move/from16 v4, v21

    .line 268
    .line 269
    const/4 v2, 0x0

    .line 270
    :goto_b
    const/4 v5, 0x0

    .line 271
    :goto_c
    iget v9, v1, Lcom/google/android/gms/internal/clearcut/m2;->s:I

    .line 272
    .line 273
    aput v9, v7, v6

    .line 274
    .line 275
    add-int/lit8 v9, v6, 0x1

    .line 276
    .line 277
    iget v10, v1, Lcom/google/android/gms/internal/clearcut/m2;->t:I

    .line 278
    .line 279
    and-int/lit16 v14, v10, 0x200

    .line 280
    .line 281
    if-eqz v14, :cond_e

    .line 282
    .line 283
    const/4 v14, 0x1

    .line 284
    goto :goto_d

    .line 285
    :cond_e
    const/4 v14, 0x0

    .line 286
    :goto_d
    if-eqz v14, :cond_f

    .line 287
    .line 288
    const/high16 v14, 0x20000000

    .line 289
    .line 290
    goto :goto_e

    .line 291
    :cond_f
    const/4 v14, 0x0

    .line 292
    :goto_e
    and-int/lit16 v10, v10, 0x100

    .line 293
    .line 294
    if-eqz v10, :cond_10

    .line 295
    .line 296
    const/4 v10, 0x1

    .line 297
    goto :goto_f

    .line 298
    :cond_10
    const/4 v10, 0x0

    .line 299
    :goto_f
    if-eqz v10, :cond_11

    .line 300
    .line 301
    const/high16 v10, 0x10000000

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_11
    const/4 v10, 0x0

    .line 305
    :goto_10
    or-int/2addr v10, v14

    .line 306
    iget v14, v1, Lcom/google/android/gms/internal/clearcut/m2;->u:I

    .line 307
    .line 308
    shl-int/lit8 v21, v14, 0x14

    .line 309
    .line 310
    or-int v10, v10, v21

    .line 311
    .line 312
    or-int/2addr v4, v10

    .line 313
    aput v4, v7, v9

    .line 314
    .line 315
    add-int/lit8 v4, v6, 0x2

    .line 316
    .line 317
    shl-int/lit8 v5, v5, 0x14

    .line 318
    .line 319
    or-int/2addr v2, v5

    .line 320
    aput v2, v7, v4

    .line 321
    .line 322
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->A:Ljava/lang/Object;

    .line 323
    .line 324
    if-eqz v2, :cond_14

    .line 325
    .line 326
    div-int/lit8 v4, v6, 0x4

    .line 327
    .line 328
    const/4 v5, 0x1

    .line 329
    shl-int/2addr v4, v5

    .line 330
    aput-object v2, v8, v4

    .line 331
    .line 332
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->y:Ljava/lang/Object;

    .line 333
    .line 334
    if-eqz v2, :cond_13

    .line 335
    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    .line 338
    aput-object v2, v8, v4

    .line 339
    .line 340
    :cond_12
    :goto_11
    const/4 v5, 0x1

    .line 341
    goto :goto_12

    .line 342
    :cond_13
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->z:Ljava/lang/Object;

    .line 343
    .line 344
    if-eqz v2, :cond_12

    .line 345
    .line 346
    add-int/lit8 v4, v4, 0x1

    .line 347
    .line 348
    aput-object v2, v8, v4

    .line 349
    .line 350
    goto :goto_11

    .line 351
    :cond_14
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->y:Ljava/lang/Object;

    .line 352
    .line 353
    if-eqz v2, :cond_15

    .line 354
    .line 355
    div-int/lit8 v4, v6, 0x4

    .line 356
    .line 357
    const/4 v5, 0x1

    .line 358
    shl-int/2addr v4, v5

    .line 359
    add-int/2addr v4, v5

    .line 360
    aput-object v2, v8, v4

    .line 361
    .line 362
    goto :goto_12

    .line 363
    :cond_15
    const/4 v5, 0x1

    .line 364
    iget-object v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->z:Ljava/lang/Object;

    .line 365
    .line 366
    if-eqz v2, :cond_16

    .line 367
    .line 368
    div-int/lit8 v4, v6, 0x4

    .line 369
    .line 370
    shl-int/2addr v4, v5

    .line 371
    add-int/2addr v4, v5

    .line 372
    aput-object v2, v8, v4

    .line 373
    .line 374
    :cond_16
    :goto_12
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-ne v14, v2, :cond_17

    .line 379
    .line 380
    add-int/lit8 v2, v11, 0x1

    .line 381
    .line 382
    aput v6, v15, v11

    .line 383
    .line 384
    move v11, v2

    .line 385
    goto :goto_13

    .line 386
    :cond_17
    const/16 v2, 0x12

    .line 387
    .line 388
    if-lt v14, v2, :cond_18

    .line 389
    .line 390
    const/16 v2, 0x31

    .line 391
    .line 392
    if-gt v14, v2, :cond_18

    .line 393
    .line 394
    add-int/lit8 v2, v12, 0x1

    .line 395
    .line 396
    aget v3, v7, v9

    .line 397
    .line 398
    const v4, 0xfffff

    .line 399
    .line 400
    .line 401
    and-int/2addr v3, v4

    .line 402
    aput v3, v16, v12

    .line 403
    .line 404
    move v12, v2

    .line 405
    :cond_18
    :goto_13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/m2;->a()Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_1a

    .line 410
    .line 411
    iget v2, v1, Lcom/google/android/gms/internal/clearcut/m2;->s:I

    .line 412
    .line 413
    :goto_14
    add-int/lit8 v6, v6, 0x4

    .line 414
    .line 415
    move v9, v13

    .line 416
    move/from16 v13, v19

    .line 417
    .line 418
    move/from16 v10, v20

    .line 419
    .line 420
    const/4 v3, 0x2

    .line 421
    const/4 v4, 0x1

    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_19
    move/from16 v20, v10

    .line 425
    .line 426
    move/from16 v19, v13

    .line 427
    .line 428
    move v13, v9

    .line 429
    :cond_1a
    new-instance v2, Lcom/google/android/gms/internal/clearcut/b2;

    .line 430
    .line 431
    iget v11, v1, Lcom/google/android/gms/internal/clearcut/m2;->j:I

    .line 432
    .line 433
    iget-object v12, v0, Lcom/google/android/gms/internal/clearcut/l2;->a:Lcom/google/android/gms/internal/clearcut/x1;

    .line 434
    .line 435
    iget-object v14, v1, Lcom/google/android/gms/internal/clearcut/m2;->m:[I

    .line 436
    .line 437
    move-object v6, v2

    .line 438
    move v9, v13

    .line 439
    move/from16 v10, v20

    .line 440
    .line 441
    move/from16 v13, v19

    .line 442
    .line 443
    move-object/from16 v17, p1

    .line 444
    .line 445
    move-object/from16 v18, p2

    .line 446
    .line 447
    move-object/from16 v19, p3

    .line 448
    .line 449
    move-object/from16 v20, p4

    .line 450
    .line 451
    move-object/from16 v21, p5

    .line 452
    .line 453
    invoke-direct/range {v6 .. v21}, Lcom/google/android/gms/internal/clearcut/b2;-><init>([I[Ljava/lang/Object;IIILcom/google/android/gms/internal/clearcut/x1;Z[I[I[ILcom/google/android/gms/internal/clearcut/e2;Lcom/google/android/gms/internal/clearcut/k1;Lcom/google/android/gms/internal/clearcut/a3;Lcom/google/android/gms/internal/clearcut/j0;Lcom/google/android/gms/internal/clearcut/s1;)V

    .line 454
    .line 455
    .line 456
    return-object v2

    .line 457
    :cond_1b
    check-cast v0, Lcom/google/android/gms/internal/clearcut/y2;

    .line 458
    .line 459
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/y2;->a()I

    .line 460
    .line 461
    .line 462
    throw v2
.end method

.method public static q(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/e0;->n(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/clearcut/x;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/clearcut/f0;->d(ILcom/google/android/gms/internal/clearcut/x;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A(I)I
    .locals 7

    const/4 v0, -0x1

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->c:I

    if-lt p1, v1, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/b2;->e:I

    if-ge p1, v3, :cond_1

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x2

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget v4, p0, Lcom/google/android/gms/internal/clearcut/b2;->d:I

    if-gt p1, v4, :cond_4

    sub-int/2addr v3, v1

    array-length v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v3, v1, :cond_4

    add-int v4, v1, v3

    ushr-int/lit8 v4, v4, 0x1

    shl-int/lit8 v5, v4, 0x2

    aget v6, v2, v5

    if-ne p1, v6, :cond_2

    return v5

    :cond_2
    if-ge p1, v6, :cond_3

    add-int/lit8 v1, v4, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final B(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/g3;->i(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final C(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    add-int/lit8 p1, p1, 0x2

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 9
    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    ushr-int/lit8 v0, p1, 0x14

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    shl-int v0, v1, v0

    .line 16
    .line 17
    const v1, 0xfffff

    .line 18
    .line 19
    .line 20
    and-int/2addr p1, v1

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    or-int/2addr p1, v0

    .line 27
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/clearcut/g3;->i(IJLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final D(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    aget v1, v1, p1

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, p3}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object p3

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->B(IILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->B(IILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final E(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-boolean v4, v0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/n0;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/n0;->c()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    check-cast v6, Ljava/util/Map$Entry;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 37
    .line 38
    array-length v8, v7

    .line 39
    const/4 v10, -0x1

    .line 40
    const/4 v11, 0x0

    .line 41
    const/4 v12, 0x0

    .line 42
    :goto_1
    if-ge v11, v8, :cond_7

    .line 43
    .line 44
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 45
    .line 46
    .line 47
    move-result v13

    .line 48
    aget v14, v7, v11

    .line 49
    .line 50
    const/high16 v15, 0xff00000

    .line 51
    .line 52
    and-int/2addr v15, v13

    .line 53
    ushr-int/lit8 v15, v15, 0x14

    .line 54
    .line 55
    iget-boolean v9, v0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 56
    .line 57
    const v16, 0xfffff

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    .line 61
    .line 62
    if-nez v9, :cond_2

    .line 63
    .line 64
    const/16 v9, 0x11

    .line 65
    .line 66
    if-gt v15, v9, :cond_2

    .line 67
    .line 68
    add-int/lit8 v9, v11, 0x2

    .line 69
    .line 70
    aget v9, v7, v9

    .line 71
    .line 72
    move-object/from16 v17, v6

    .line 73
    .line 74
    and-int v6, v9, v16

    .line 75
    .line 76
    move-object/from16 v18, v7

    .line 77
    .line 78
    move/from16 v19, v8

    .line 79
    .line 80
    if-eq v6, v10, :cond_1

    .line 81
    .line 82
    int-to-long v7, v6

    .line 83
    invoke-virtual {v3, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    move v10, v6

    .line 88
    :cond_1
    ushr-int/lit8 v6, v9, 0x14

    .line 89
    .line 90
    const/4 v7, 0x1

    .line 91
    shl-int v6, v7, v6

    .line 92
    .line 93
    move v7, v6

    .line 94
    move-object/from16 v6, v17

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object/from16 v17, v6

    .line 98
    .line 99
    move-object/from16 v18, v7

    .line 100
    .line 101
    move/from16 v19, v8

    .line 102
    .line 103
    move-object/from16 v6, v17

    .line 104
    .line 105
    const/4 v7, 0x0

    .line 106
    :goto_2
    if-eqz v6, :cond_4

    .line 107
    .line 108
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->b(Ljava/util/Map$Entry;)V

    .line 109
    .line 110
    .line 111
    if-ltz v14, :cond_4

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->c(Ljava/util/Map$Entry;)V

    .line 114
    .line 115
    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Ljava/util/Map$Entry;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const/4 v6, 0x0

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    and-int v8, v13, v16

    .line 132
    .line 133
    int-to-long v8, v8

    .line 134
    packed-switch v15, :pswitch_data_0

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_3
    const/4 v13, 0x0

    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :pswitch_0
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    if-eqz v7, :cond_5

    .line 145
    .line 146
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/android/gms/internal/clearcut/f0;->h(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_1
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_5

    .line 163
    .line 164
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v7

    .line 168
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->g(IJ)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :pswitch_2
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->m(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :pswitch_3
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_5

    .line 191
    .line 192
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->p(IJ)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :pswitch_4
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_5

    .line 205
    .line 206
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->q(II)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :pswitch_5
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_5

    .line 219
    .line 220
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->r(II)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :pswitch_6
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_5

    .line 233
    .line 234
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->l(II)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :pswitch_7
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_5

    .line 247
    .line 248
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    check-cast v3, Lcom/google/android/gms/internal/clearcut/x;

    .line 253
    .line 254
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->d(ILcom/google/android/gms/internal/clearcut/x;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :pswitch_8
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    if-eqz v7, :cond_5

    .line 263
    .line 264
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/android/gms/internal/clearcut/f0;->e(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :pswitch_9
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v7

    .line 281
    if-eqz v7, :cond_5

    .line 282
    .line 283
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/clearcut/b2;->q(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :pswitch_a
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_5

    .line 297
    .line 298
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Ljava/lang/Boolean;

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->i(IZ)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :pswitch_b
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_5

    .line 318
    .line 319
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->n(II)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :pswitch_c
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_5

    .line 333
    .line 334
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 335
    .line 336
    .line 337
    move-result-wide v7

    .line 338
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->k(IJ)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_3

    .line 342
    .line 343
    :pswitch_d
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_5

    .line 348
    .line 349
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->j(II)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_e
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_5

    .line 363
    .line 364
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v7

    .line 368
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->c(IJ)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :pswitch_f
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-eqz v3, :cond_5

    .line 378
    .line 379
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v7

    .line 383
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->o(IJ)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :pswitch_10
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_5

    .line 393
    .line 394
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    check-cast v3, Ljava/lang/Float;

    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/internal/clearcut/f0;->a(FI)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :pswitch_11
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_5

    .line 414
    .line 415
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    check-cast v3, Ljava/lang/Double;

    .line 420
    .line 421
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 422
    .line 423
    .line 424
    move-result-wide v7

    .line 425
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->b(ID)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_3

    .line 429
    .line 430
    :pswitch_12
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v0, v2, v14, v3, v11}, Lcom/google/android/gms/internal/clearcut/b2;->s(Lcom/google/android/gms/internal/clearcut/f0;ILjava/lang/Object;I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_3

    .line 438
    .line 439
    :pswitch_13
    aget v7, v18, v11

    .line 440
    .line 441
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    check-cast v3, Ljava/util/List;

    .line 446
    .line 447
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-static {v7, v3, v2, v8}, Lcom/google/android/gms/internal/clearcut/q2;->i(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Lcom/google/android/gms/internal/clearcut/o2;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_3

    .line 455
    .line 456
    :pswitch_14
    aget v7, v18, v11

    .line 457
    .line 458
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    check-cast v3, Ljava/util/List;

    .line 463
    .line 464
    const/4 v13, 0x1

    .line 465
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->w(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 466
    .line 467
    .line 468
    goto/16 :goto_3

    .line 469
    .line 470
    :pswitch_15
    const/4 v13, 0x1

    .line 471
    aget v7, v18, v11

    .line 472
    .line 473
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    check-cast v3, Ljava/util/List;

    .line 478
    .line 479
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->G(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_3

    .line 483
    .line 484
    :pswitch_16
    const/4 v13, 0x1

    .line 485
    aget v7, v18, v11

    .line 486
    .line 487
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    check-cast v3, Ljava/util/List;

    .line 492
    .line 493
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->A(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_3

    .line 497
    .line 498
    :pswitch_17
    const/4 v13, 0x1

    .line 499
    aget v7, v18, v11

    .line 500
    .line 501
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v3

    .line 505
    check-cast v3, Ljava/util/List;

    .line 506
    .line 507
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->I(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 508
    .line 509
    .line 510
    goto/16 :goto_3

    .line 511
    .line 512
    :pswitch_18
    const/4 v13, 0x1

    .line 513
    aget v7, v18, v11

    .line 514
    .line 515
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v3

    .line 519
    check-cast v3, Ljava/util/List;

    .line 520
    .line 521
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->J(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_3

    .line 525
    .line 526
    :pswitch_19
    const/4 v13, 0x1

    .line 527
    aget v7, v18, v11

    .line 528
    .line 529
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    check-cast v3, Ljava/util/List;

    .line 534
    .line 535
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->E(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_3

    .line 539
    .line 540
    :pswitch_1a
    const/4 v13, 0x1

    .line 541
    aget v7, v18, v11

    .line 542
    .line 543
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    check-cast v3, Ljava/util/List;

    .line 548
    .line 549
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->K(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 550
    .line 551
    .line 552
    goto/16 :goto_3

    .line 553
    .line 554
    :pswitch_1b
    const/4 v13, 0x1

    .line 555
    aget v7, v18, v11

    .line 556
    .line 557
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    check-cast v3, Ljava/util/List;

    .line 562
    .line 563
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->H(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_3

    .line 567
    .line 568
    :pswitch_1c
    const/4 v13, 0x1

    .line 569
    aget v7, v18, v11

    .line 570
    .line 571
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 572
    .line 573
    .line 574
    move-result-object v3

    .line 575
    check-cast v3, Ljava/util/List;

    .line 576
    .line 577
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->y(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 578
    .line 579
    .line 580
    goto/16 :goto_3

    .line 581
    .line 582
    :pswitch_1d
    const/4 v13, 0x1

    .line 583
    aget v7, v18, v11

    .line 584
    .line 585
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 586
    .line 587
    .line 588
    move-result-object v3

    .line 589
    check-cast v3, Ljava/util/List;

    .line 590
    .line 591
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->C(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_3

    .line 595
    .line 596
    :pswitch_1e
    const/4 v13, 0x1

    .line 597
    aget v7, v18, v11

    .line 598
    .line 599
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    check-cast v3, Ljava/util/List;

    .line 604
    .line 605
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->t(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 606
    .line 607
    .line 608
    goto/16 :goto_3

    .line 609
    .line 610
    :pswitch_1f
    const/4 v13, 0x1

    .line 611
    aget v7, v18, v11

    .line 612
    .line 613
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 614
    .line 615
    .line 616
    move-result-object v3

    .line 617
    check-cast v3, Ljava/util/List;

    .line 618
    .line 619
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->o(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 620
    .line 621
    .line 622
    goto/16 :goto_3

    .line 623
    .line 624
    :pswitch_20
    const/4 v13, 0x1

    .line 625
    aget v7, v18, v11

    .line 626
    .line 627
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    check-cast v3, Ljava/util/List;

    .line 632
    .line 633
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->j(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_3

    .line 637
    .line 638
    :pswitch_21
    const/4 v13, 0x1

    .line 639
    aget v7, v18, v11

    .line 640
    .line 641
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    check-cast v3, Ljava/util/List;

    .line 646
    .line 647
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->e(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_3

    .line 651
    .line 652
    :pswitch_22
    aget v7, v18, v11

    .line 653
    .line 654
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    check-cast v3, Ljava/util/List;

    .line 659
    .line 660
    const/4 v13, 0x0

    .line 661
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->w(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 662
    .line 663
    .line 664
    goto/16 :goto_4

    .line 665
    .line 666
    :pswitch_23
    const/4 v13, 0x0

    .line 667
    aget v7, v18, v11

    .line 668
    .line 669
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v3

    .line 673
    check-cast v3, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->G(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_4

    .line 679
    .line 680
    :pswitch_24
    const/4 v13, 0x0

    .line 681
    aget v7, v18, v11

    .line 682
    .line 683
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object v3

    .line 687
    check-cast v3, Ljava/util/List;

    .line 688
    .line 689
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->A(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 690
    .line 691
    .line 692
    goto/16 :goto_4

    .line 693
    .line 694
    :pswitch_25
    const/4 v13, 0x0

    .line 695
    aget v7, v18, v11

    .line 696
    .line 697
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v3

    .line 701
    check-cast v3, Ljava/util/List;

    .line 702
    .line 703
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->I(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_4

    .line 707
    .line 708
    :pswitch_26
    const/4 v13, 0x0

    .line 709
    aget v7, v18, v11

    .line 710
    .line 711
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v3

    .line 715
    check-cast v3, Ljava/util/List;

    .line 716
    .line 717
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->J(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 718
    .line 719
    .line 720
    goto/16 :goto_4

    .line 721
    .line 722
    :pswitch_27
    const/4 v13, 0x0

    .line 723
    aget v7, v18, v11

    .line 724
    .line 725
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    check-cast v3, Ljava/util/List;

    .line 730
    .line 731
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->E(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_4

    .line 735
    .line 736
    :pswitch_28
    aget v7, v18, v11

    .line 737
    .line 738
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 739
    .line 740
    .line 741
    move-result-object v3

    .line 742
    check-cast v3, Ljava/util/List;

    .line 743
    .line 744
    invoke-static {v7, v3, v2}, Lcom/google/android/gms/internal/clearcut/q2;->h(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 745
    .line 746
    .line 747
    goto/16 :goto_3

    .line 748
    .line 749
    :pswitch_29
    aget v7, v18, v11

    .line 750
    .line 751
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v3

    .line 755
    check-cast v3, Ljava/util/List;

    .line 756
    .line 757
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 758
    .line 759
    .line 760
    move-result-object v8

    .line 761
    invoke-static {v7, v3, v2, v8}, Lcom/google/android/gms/internal/clearcut/q2;->d(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Lcom/google/android/gms/internal/clearcut/o2;)V

    .line 762
    .line 763
    .line 764
    goto/16 :goto_3

    .line 765
    .line 766
    :pswitch_2a
    aget v7, v18, v11

    .line 767
    .line 768
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    check-cast v3, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v7, v3, v2}, Lcom/google/android/gms/internal/clearcut/q2;->c(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_3

    .line 778
    .line 779
    :pswitch_2b
    aget v7, v18, v11

    .line 780
    .line 781
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    check-cast v3, Ljava/util/List;

    .line 786
    .line 787
    const/4 v13, 0x0

    .line 788
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->K(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_4

    .line 792
    .line 793
    :pswitch_2c
    const/4 v13, 0x0

    .line 794
    aget v7, v18, v11

    .line 795
    .line 796
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    check-cast v3, Ljava/util/List;

    .line 801
    .line 802
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->H(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_4

    .line 806
    .line 807
    :pswitch_2d
    const/4 v13, 0x0

    .line 808
    aget v7, v18, v11

    .line 809
    .line 810
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v3

    .line 814
    check-cast v3, Ljava/util/List;

    .line 815
    .line 816
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->y(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 817
    .line 818
    .line 819
    goto/16 :goto_4

    .line 820
    .line 821
    :pswitch_2e
    const/4 v13, 0x0

    .line 822
    aget v7, v18, v11

    .line 823
    .line 824
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v3

    .line 828
    check-cast v3, Ljava/util/List;

    .line 829
    .line 830
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->C(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 831
    .line 832
    .line 833
    goto/16 :goto_4

    .line 834
    .line 835
    :pswitch_2f
    const/4 v13, 0x0

    .line 836
    aget v7, v18, v11

    .line 837
    .line 838
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    check-cast v3, Ljava/util/List;

    .line 843
    .line 844
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->t(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 845
    .line 846
    .line 847
    goto/16 :goto_4

    .line 848
    .line 849
    :pswitch_30
    const/4 v13, 0x0

    .line 850
    aget v7, v18, v11

    .line 851
    .line 852
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 853
    .line 854
    .line 855
    move-result-object v3

    .line 856
    check-cast v3, Ljava/util/List;

    .line 857
    .line 858
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->o(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 859
    .line 860
    .line 861
    goto/16 :goto_4

    .line 862
    .line 863
    :pswitch_31
    const/4 v13, 0x0

    .line 864
    aget v7, v18, v11

    .line 865
    .line 866
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    check-cast v3, Ljava/util/List;

    .line 871
    .line 872
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->j(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_4

    .line 876
    .line 877
    :pswitch_32
    const/4 v13, 0x0

    .line 878
    aget v7, v18, v11

    .line 879
    .line 880
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    check-cast v3, Ljava/util/List;

    .line 885
    .line 886
    invoke-static {v7, v3, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->e(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_4

    .line 890
    .line 891
    :pswitch_33
    const/4 v13, 0x0

    .line 892
    and-int/2addr v7, v12

    .line 893
    if-eqz v7, :cond_6

    .line 894
    .line 895
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v3

    .line 899
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 900
    .line 901
    .line 902
    move-result-object v7

    .line 903
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/android/gms/internal/clearcut/f0;->h(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_4

    .line 907
    .line 908
    :pswitch_34
    const/4 v13, 0x0

    .line 909
    and-int/2addr v7, v12

    .line 910
    if-eqz v7, :cond_6

    .line 911
    .line 912
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 913
    .line 914
    .line 915
    move-result-wide v7

    .line 916
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->g(IJ)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_4

    .line 920
    .line 921
    :pswitch_35
    const/4 v13, 0x0

    .line 922
    and-int/2addr v7, v12

    .line 923
    if-eqz v7, :cond_6

    .line 924
    .line 925
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->m(II)V

    .line 930
    .line 931
    .line 932
    goto/16 :goto_4

    .line 933
    .line 934
    :pswitch_36
    const/4 v13, 0x0

    .line 935
    and-int/2addr v7, v12

    .line 936
    if-eqz v7, :cond_6

    .line 937
    .line 938
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 939
    .line 940
    .line 941
    move-result-wide v7

    .line 942
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->p(IJ)V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_4

    .line 946
    .line 947
    :pswitch_37
    const/4 v13, 0x0

    .line 948
    and-int/2addr v7, v12

    .line 949
    if-eqz v7, :cond_6

    .line 950
    .line 951
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->q(II)V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_4

    .line 959
    .line 960
    :pswitch_38
    const/4 v13, 0x0

    .line 961
    and-int/2addr v7, v12

    .line 962
    if-eqz v7, :cond_6

    .line 963
    .line 964
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->r(II)V

    .line 969
    .line 970
    .line 971
    goto/16 :goto_4

    .line 972
    .line 973
    :pswitch_39
    const/4 v13, 0x0

    .line 974
    and-int/2addr v7, v12

    .line 975
    if-eqz v7, :cond_6

    .line 976
    .line 977
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 978
    .line 979
    .line 980
    move-result v3

    .line 981
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->l(II)V

    .line 982
    .line 983
    .line 984
    goto/16 :goto_4

    .line 985
    .line 986
    :pswitch_3a
    const/4 v13, 0x0

    .line 987
    and-int/2addr v7, v12

    .line 988
    if-eqz v7, :cond_6

    .line 989
    .line 990
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v3

    .line 994
    check-cast v3, Lcom/google/android/gms/internal/clearcut/x;

    .line 995
    .line 996
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->d(ILcom/google/android/gms/internal/clearcut/x;)V

    .line 997
    .line 998
    .line 999
    goto/16 :goto_4

    .line 1000
    .line 1001
    :pswitch_3b
    const/4 v13, 0x0

    .line 1002
    and-int/2addr v7, v12

    .line 1003
    if-eqz v7, :cond_6

    .line 1004
    .line 1005
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v3

    .line 1009
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v7

    .line 1013
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/android/gms/internal/clearcut/f0;->e(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_4

    .line 1017
    .line 1018
    :pswitch_3c
    const/4 v13, 0x0

    .line 1019
    and-int/2addr v7, v12

    .line 1020
    if-eqz v7, :cond_6

    .line 1021
    .line 1022
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v3

    .line 1026
    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/clearcut/b2;->q(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 1027
    .line 1028
    .line 1029
    goto :goto_4

    .line 1030
    :pswitch_3d
    const/4 v13, 0x0

    .line 1031
    and-int v3, v7, v12

    .line 1032
    .line 1033
    if-eqz v3, :cond_6

    .line 1034
    .line 1035
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v3

    .line 1039
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->i(IZ)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_4

    .line 1043
    :pswitch_3e
    const/4 v13, 0x0

    .line 1044
    and-int/2addr v7, v12

    .line 1045
    if-eqz v7, :cond_6

    .line 1046
    .line 1047
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1048
    .line 1049
    .line 1050
    move-result v3

    .line 1051
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->n(II)V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_4

    .line 1055
    :pswitch_3f
    const/4 v13, 0x0

    .line 1056
    and-int/2addr v7, v12

    .line 1057
    if-eqz v7, :cond_6

    .line 1058
    .line 1059
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1060
    .line 1061
    .line 1062
    move-result-wide v7

    .line 1063
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->k(IJ)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_4

    .line 1067
    :pswitch_40
    const/4 v13, 0x0

    .line 1068
    and-int/2addr v7, v12

    .line 1069
    if-eqz v7, :cond_6

    .line 1070
    .line 1071
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {v2, v14, v3}, Lcom/google/android/gms/internal/clearcut/f0;->j(II)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_4

    .line 1079
    :pswitch_41
    const/4 v13, 0x0

    .line 1080
    and-int/2addr v7, v12

    .line 1081
    if-eqz v7, :cond_6

    .line 1082
    .line 1083
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v7

    .line 1087
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->c(IJ)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_4

    .line 1091
    :pswitch_42
    const/4 v13, 0x0

    .line 1092
    and-int/2addr v7, v12

    .line 1093
    if-eqz v7, :cond_6

    .line 1094
    .line 1095
    invoke-virtual {v3, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1096
    .line 1097
    .line 1098
    move-result-wide v7

    .line 1099
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->o(IJ)V

    .line 1100
    .line 1101
    .line 1102
    goto :goto_4

    .line 1103
    :pswitch_43
    const/4 v13, 0x0

    .line 1104
    and-int v3, v7, v12

    .line 1105
    .line 1106
    if-eqz v3, :cond_6

    .line 1107
    .line 1108
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->u(JLjava/lang/Object;)F

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    invoke-virtual {v2, v3, v14}, Lcom/google/android/gms/internal/clearcut/f0;->a(FI)V

    .line 1113
    .line 1114
    .line 1115
    goto :goto_4

    .line 1116
    :pswitch_44
    const/4 v13, 0x0

    .line 1117
    and-int v3, v7, v12

    .line 1118
    .line 1119
    if-eqz v3, :cond_6

    .line 1120
    .line 1121
    invoke-static {v8, v9, v1}, Lcom/google/android/gms/internal/clearcut/g3;->v(JLjava/lang/Object;)D

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v7

    .line 1125
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/android/gms/internal/clearcut/f0;->b(ID)V

    .line 1126
    .line 1127
    .line 1128
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x4

    .line 1129
    .line 1130
    move-object/from16 v7, v18

    .line 1131
    .line 1132
    move/from16 v8, v19

    .line 1133
    .line 1134
    goto/16 :goto_1

    .line 1135
    .line 1136
    :cond_7
    move-object/from16 v17, v6

    .line 1137
    .line 1138
    :goto_5
    if-eqz v6, :cond_9

    .line 1139
    .line 1140
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->c(Ljava/util/Map$Entry;)V

    .line 1141
    .line 1142
    .line 1143
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1144
    .line 1145
    .line 1146
    move-result v3

    .line 1147
    if-eqz v3, :cond_8

    .line 1148
    .line 1149
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    move-object v6, v3

    .line 1154
    check-cast v6, Ljava/util/Map$Entry;

    .line 1155
    .line 1156
    goto :goto_5

    .line 1157
    :cond_8
    const/4 v6, 0x0

    .line 1158
    goto :goto_5

    .line 1159
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    .line 1160
    .line 1161
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/clearcut/a3;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 1166
    .line 1167
    .line 1168
    return-void

    .line 1169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final F(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->j:[I

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/clearcut/s1;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, p1, v6}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->k:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget v3, v1, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/clearcut/b2;->m:Lcom/google/android/gms/internal/clearcut/k1;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6, p1}, Lcom/google/android/gms/internal/clearcut/k1;->a(JLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->c(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->e(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    const/4 v4, 0x1

    .line 7
    if-ge v3, v1, :cond_3

    .line 8
    .line 9
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const v6, 0xfffff

    .line 14
    .line 15
    .line 16
    and-int v7, v5, v6

    .line 17
    .line 18
    int-to-long v7, v7

    .line 19
    const/high16 v9, 0xff00000

    .line 20
    .line 21
    and-int/2addr v5, v9

    .line 22
    ushr-int/lit8 v5, v5, 0x14

    .line 23
    .line 24
    packed-switch v5, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    .line 30
    .line 31
    aget v5, v0, v5

    .line 32
    .line 33
    and-int/2addr v5, v6

    .line 34
    int-to-long v5, v5

    .line 35
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v9, v5, :cond_0

    .line 44
    .line 45
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_1

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_1

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v7

    .line 111
    cmp-long v9, v5, v7

    .line 112
    .line 113
    if-eqz v9, :cond_1

    .line 114
    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_0

    .line 122
    .line 123
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eq v5, v6, :cond_1

    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_0

    .line 140
    .line 141
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v7

    .line 149
    cmp-long v9, v5, v7

    .line 150
    .line 151
    if-eqz v9, :cond_1

    .line 152
    .line 153
    goto/16 :goto_1

    .line 154
    .line 155
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_0

    .line 160
    .line 161
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result v6

    .line 169
    if-eq v5, v6, :cond_1

    .line 170
    .line 171
    goto/16 :goto_1

    .line 172
    .line 173
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_0

    .line 178
    .line 179
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eq v5, v6, :cond_1

    .line 188
    .line 189
    goto/16 :goto_1

    .line 190
    .line 191
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_0

    .line 196
    .line 197
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eq v5, v6, :cond_1

    .line 206
    .line 207
    goto/16 :goto_1

    .line 208
    .line 209
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_0

    .line 214
    .line 215
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_1

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_0

    .line 236
    .line 237
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v5

    .line 249
    if-nez v5, :cond_1

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_0

    .line 258
    .line 259
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/clearcut/q2;->u(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-nez v5, :cond_1

    .line 272
    .line 273
    goto/16 :goto_1

    .line 274
    .line 275
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_0

    .line 280
    .line 281
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    if-eq v5, v6, :cond_1

    .line 290
    .line 291
    goto/16 :goto_1

    .line 292
    .line 293
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_0

    .line 298
    .line 299
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eq v5, v6, :cond_1

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_0

    .line 316
    .line 317
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v5

    .line 321
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v7

    .line 325
    cmp-long v9, v5, v7

    .line 326
    .line 327
    if-eqz v9, :cond_1

    .line 328
    .line 329
    goto :goto_1

    .line 330
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_0

    .line 335
    .line 336
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    if-eq v5, v6, :cond_1

    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_0

    .line 352
    .line 353
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 354
    .line 355
    .line 356
    move-result-wide v5

    .line 357
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 358
    .line 359
    .line 360
    move-result-wide v7

    .line 361
    cmp-long v9, v5, v7

    .line 362
    .line 363
    if-eqz v9, :cond_1

    .line 364
    .line 365
    goto :goto_1

    .line 366
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_0

    .line 371
    .line 372
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v7

    .line 380
    cmp-long v9, v5, v7

    .line 381
    .line 382
    if-eqz v9, :cond_1

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_0

    .line 390
    .line 391
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    if-eq v5, v6, :cond_1

    .line 400
    .line 401
    goto :goto_1

    .line 402
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->F(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_0

    .line 407
    .line 408
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 409
    .line 410
    .line 411
    move-result-wide v5

    .line 412
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 413
    .line 414
    .line 415
    move-result-wide v7

    .line 416
    cmp-long v9, v5, v7

    .line 417
    .line 418
    if-eqz v9, :cond_1

    .line 419
    .line 420
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .line 421
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 422
    .line 423
    return v2

    .line 424
    :cond_2
    add-int/lit8 v3, v3, 0x4

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    .line 429
    .line 430
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/b3;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-nez v0, :cond_4

    .line 443
    .line 444
    return v2

    .line 445
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 446
    .line 447
    if-eqz v0, :cond_5

    .line 448
    .line 449
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 450
    .line 451
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 452
    .line 453
    .line 454
    move-result-object p1

    .line 455
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 456
    .line 457
    .line 458
    move-result-object p2

    .line 459
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/n0;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result p1

    .line 463
    return p1

    .line 464
    :cond_5
    return v4

    .line 465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->l:Lcom/google/android/gms/internal/clearcut/e2;

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->f:Lcom/google/android/gms/internal/clearcut/x1;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/e2;->a(Lcom/google/android/gms/internal/clearcut/x1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    aget v5, v0, v2

    .line 13
    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v6, v4

    .line 18
    int-to-long v6, v6

    .line 19
    const/high16 v8, 0xff00000

    .line 20
    .line 21
    and-int/2addr v4, v8

    .line 22
    ushr-int/lit8 v4, v4, 0x14

    .line 23
    .line 24
    packed-switch v4, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    goto/16 :goto_e

    .line 28
    .line 29
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_1

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 86
    .line 87
    goto/16 :goto_4

    .line 88
    .line 89
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    mul-int/lit8 v3, v3, 0x35

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_1

    .line 108
    .line 109
    goto/16 :goto_8

    .line 110
    .line 111
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_1

    .line 116
    .line 117
    mul-int/lit8 v3, v3, 0x35

    .line 118
    .line 119
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    check-cast v4, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    goto/16 :goto_9

    .line 130
    .line 131
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_1

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-eqz v4, :cond_1

    .line 150
    .line 151
    :goto_2
    mul-int/lit8 v3, v3, 0x35

    .line 152
    .line 153
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto/16 :goto_d

    .line 158
    .line 159
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-eqz v4, :cond_1

    .line 171
    .line 172
    :goto_3
    mul-int/lit8 v3, v3, 0x35

    .line 173
    .line 174
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    goto/16 :goto_c

    .line 179
    .line 180
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_1

    .line 185
    .line 186
    mul-int/lit8 v3, v3, 0x35

    .line 187
    .line 188
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Ljava/lang/Float;

    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    goto :goto_a

    .line 199
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v4

    .line 203
    if-eqz v4, :cond_1

    .line 204
    .line 205
    mul-int/lit8 v3, v3, 0x35

    .line 206
    .line 207
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    check-cast v4, Ljava/lang/Double;

    .line 212
    .line 213
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 214
    .line 215
    .line 216
    move-result-wide v4

    .line 217
    goto :goto_b

    .line 218
    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    if-eqz v4, :cond_0

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :goto_4
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 226
    .line 227
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    goto :goto_d

    .line 236
    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    if-eqz v4, :cond_0

    .line 241
    .line 242
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    goto :goto_7

    .line 247
    :cond_0
    const/16 v4, 0x25

    .line 248
    .line 249
    :goto_7
    mul-int/lit8 v3, v3, 0x35

    .line 250
    .line 251
    add-int/2addr v3, v4

    .line 252
    goto :goto_e

    .line 253
    :goto_8
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 254
    .line 255
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    check-cast v4, Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    goto :goto_d

    .line 266
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 267
    .line 268
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/x0;->b(Z)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    goto :goto_d

    .line 277
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 278
    .line 279
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    goto :goto_d

    .line 284
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 285
    .line 286
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 287
    .line 288
    .line 289
    move-result-wide v4

    .line 290
    goto :goto_c

    .line 291
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 292
    .line 293
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->u(JLjava/lang/Object;)F

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    :goto_a
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    goto :goto_d

    .line 302
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 303
    .line 304
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/clearcut/g3;->v(JLjava/lang/Object;)D

    .line 305
    .line 306
    .line 307
    move-result-wide v4

    .line 308
    :goto_b
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 309
    .line 310
    .line 311
    move-result-wide v4

    .line 312
    :goto_c
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/x0;->c(J)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    :goto_d
    add-int/2addr v4, v3

    .line 317
    move v3, v4

    .line 318
    :cond_1
    :goto_e
    add-int/lit8 v2, v2, 0x4

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_2
    mul-int/lit8 v3, v3, 0x35

    .line 323
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/b3;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    add-int/2addr v0, v3

    .line 335
    iget-boolean v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 336
    .line 337
    if-eqz v1, :cond_3

    .line 338
    .line 339
    mul-int/lit8 v0, v0, 0x35

    .line 340
    .line 341
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 342
    .line 343
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/n0;->hashCode()I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    add-int/2addr v0, p1

    .line 352
    :cond_3
    return v0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int/2addr v3, v2

    .line 18
    int-to-long v3, v3

    .line 19
    aget v1, v1, v0

    .line 20
    .line 21
    const/high16 v5, 0xff00000

    .line 22
    .line 23
    and-int/2addr v2, v5

    .line 24
    ushr-int/lit8 v2, v2, 0x14

    .line 25
    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_6

    .line 30
    .line 31
    :pswitch_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->D(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :pswitch_2
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    :goto_1
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/clearcut/b2;->B(IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 62
    .line 63
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v5, p0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    .line 72
    .line 73
    invoke-interface {v5, v1, v2}, Lcom/google/android/gms/internal/clearcut/s1;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->m:Lcom/google/android/gms/internal/clearcut/k1;

    .line 83
    .line 84
    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/clearcut/k1;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_0

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    goto :goto_3

    .line 126
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_0

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->r(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    :goto_2
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_0

    .line 164
    .line 165
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->g(Ljava/lang/Object;JZ)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    .line 193
    :goto_3
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/clearcut/g3;->i(IJLjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_0

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    :goto_4
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->f(Ljava/lang/Object;JJ)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    .line 228
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->u(JLjava/lang/Object;)F

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->e(Ljava/lang/Object;JF)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    .line 242
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/clearcut/g3;->v(JLjava/lang/Object;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/clearcut/g3;->d(Ljava/lang/Object;JD)V

    .line 247
    .line 248
    .line 249
    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/clearcut/b2;->C(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x4

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 257
    .line 258
    if-nez v0, :cond_2

    .line 259
    .line 260
    sget-object v0, Lcom/google/android/gms/internal/clearcut/q2;->a:Ljava/lang/Class;

    .line 261
    .line 262
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    .line 263
    .line 264
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/clearcut/a3;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/clearcut/a3;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 280
    .line 281
    if-eqz v0, :cond_2

    .line 282
    .line 283
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 284
    .line 285
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/clearcut/q2;->f(Lcom/google/android/gms/internal/clearcut/j0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    :cond_2
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_c
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0xff00000

    const v3, 0xfffff

    iget-boolean v5, v0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    sget-object v8, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v11

    and-int v12, v11, v2

    ushr-int/lit8 v12, v12, 0x14

    aget v13, v9, v5

    and-int/2addr v11, v3

    int-to-long v14, v11

    sget-object v11, Lcom/google/android/gms/internal/clearcut/r0;->h:Lcom/google/android/gms/internal/clearcut/r0;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/clearcut/r0;->n()I

    move-result v11

    if-lt v12, v11, :cond_0

    sget-object v11, Lcom/google/android/gms/internal/clearcut/r0;->k:Lcom/google/android/gms/internal/clearcut/r0;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/clearcut/r0;->n()I

    move-result v11

    if-gt v12, v11, :cond_0

    add-int/lit8 v11, v5, 0x2

    aget v11, v9, v11

    :cond_0
    packed-switch v12, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v12, :cond_1

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_d

    :pswitch_c
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_e

    :pswitch_d
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_10

    :pswitch_f
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_12

    :pswitch_11
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_13

    :pswitch_12
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    invoke-interface {v6, v11}, Lcom/google/android/gms/internal/clearcut/s1;->b(Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto/16 :goto_14

    :pswitch_13
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/q2;->q(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_14
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->n(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->z(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->r(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->x(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->F(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1b
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1c
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->v(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->g(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->a(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_20
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_21
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result v12

    invoke-static {v11}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v11

    add-int/2addr v10, v13

    goto/16 :goto_15

    :pswitch_22
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->N(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_23
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->R(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_24
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->O(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_25
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->Q(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_26
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->p(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_27
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/q2;->m(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_28
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->l(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_29
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->U(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2a
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->P(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2b
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->M(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2c
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->L(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2d
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->S(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2e
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/b2;->G(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/q2;->T(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2f
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/clearcut/x1;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/e0;->A(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_30
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_3
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/e0;->H(IJ)I

    move-result v11

    goto/16 :goto_14

    :pswitch_31
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    move-result v11

    :goto_4
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->P(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_32
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_5
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->M(I)I

    move-result v11

    goto/16 :goto_14

    :pswitch_33
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_6
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->R(I)I

    move-result v11

    goto/16 :goto_14

    :pswitch_34
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    move-result v11

    :goto_7
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->S(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_35
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    move-result v11

    :goto_8
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->N(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_36
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_9
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_b

    :pswitch_37
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_a
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v12

    invoke-static {v13, v12, v11}, Lcom/google/android/gms/internal/clearcut/q2;->k(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_38
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v12, :cond_1

    :goto_b
    check-cast v11, Lcom/google/android/gms/internal/clearcut/x;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->z(ILcom/google/android/gms/internal/clearcut/x;)I

    move-result v11

    goto/16 :goto_14

    :cond_1
    check-cast v11, Ljava/lang/String;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->r(ILjava/lang/String;)I

    move-result v11

    goto :goto_14

    :pswitch_39
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_c
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->y(I)I

    move-result v11

    goto :goto_14

    :pswitch_3a
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_d
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->Q(I)I

    move-result v11

    goto :goto_14

    :pswitch_3b
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_e
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->K(I)I

    move-result v11

    goto :goto_14

    :pswitch_3c
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    move-result v11

    :goto_f
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/clearcut/e0;->L(II)I

    move-result v11

    goto :goto_14

    :pswitch_3d
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_10
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/e0;->G(IJ)I

    move-result v11

    goto :goto_14

    :pswitch_3e
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_11
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/clearcut/e0;->D(IJ)I

    move-result v11

    goto :goto_14

    :pswitch_3f
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_12
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->x(I)I

    move-result v11

    goto :goto_14

    :pswitch_40
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_13
    invoke-static {v13}, Lcom/google/android/gms/internal/clearcut/e0;->q(I)I

    move-result v11

    :goto_14
    add-int/2addr v10, v11

    :cond_2
    :goto_15
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_0

    .line 1
    :cond_3
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/clearcut/a3;->h(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v10

    return v1

    :cond_4
    const/4 v5, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2
    :goto_16
    array-length v13, v9

    if-ge v10, v13, :cond_a

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v13

    aget v14, v9, v10

    and-int v15, v13, v2

    ushr-int/lit8 v15, v15, 0x14

    const/16 v2, 0x11

    if-gt v15, v2, :cond_5

    add-int/lit8 v2, v10, 0x2

    aget v2, v9, v2

    and-int v4, v2, v3

    ushr-int/lit8 v2, v2, 0x14

    const/16 v16, 0x1

    shl-int v2, v16, v2

    move/from16 v16, v11

    if-eq v4, v5, :cond_6

    int-to-long v11, v4

    invoke-virtual {v8, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v4

    goto :goto_17

    :cond_5
    move/from16 v16, v11

    const/4 v2, 0x0

    :cond_6
    :goto_17
    and-int v4, v13, v3

    int-to-long v3, v4

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_26

    :pswitch_41
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_19

    :pswitch_42
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_1a

    :pswitch_43
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_44
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1c

    :pswitch_45
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1d

    :pswitch_46
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1e

    :pswitch_47
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1f

    :pswitch_48
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_20

    :pswitch_49
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_21

    :pswitch_4a
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v3, :cond_7

    goto/16 :goto_22

    :pswitch_4b
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->y(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4c
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->Q(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4d
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->K(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4e
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->L(II)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4f
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->G(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_50
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->D(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_51
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->x(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_52
    invoke-virtual {v0, v14, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->q(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_53
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    invoke-interface {v6, v2}, Lcom/google/android/gms/internal/clearcut/s1;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_23

    :pswitch_54
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/q2;->q(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_55
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->n(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_56
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->z(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_57
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_58
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_59
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->r(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_5a
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->x(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_5b
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->F(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5c
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5d
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5e
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->v(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5f
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->g(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_60
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->a(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_61
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_62
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/q2;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    :goto_18
    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->W(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/clearcut/e0;->Y(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int v2, v4, v16

    goto/16 :goto_25

    :pswitch_63
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->N(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_64
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->R(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_65
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->O(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_66
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->Q(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_67
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->p(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_68
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/q2;->m(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_69
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->l(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6a
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->U(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6b
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->P(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6c
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->M(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6d
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->L(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6e
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->S(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6f
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/q2;->T(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_70
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    :goto_19
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/clearcut/x1;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->A(ILcom/google/android/gms/internal/clearcut/x1;Lcom/google/android/gms/internal/clearcut/o2;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_71
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    :goto_1a
    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->H(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_72
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1b
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->P(II)I

    move-result v2

    goto/16 :goto_23

    :pswitch_73
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    :goto_1c
    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->M(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_74
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    :goto_1d
    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->R(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_75
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1e
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->S(II)I

    move-result v2

    goto/16 :goto_23

    :pswitch_76
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1f
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->N(II)I

    move-result v2

    goto/16 :goto_23

    :pswitch_77
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    :goto_20
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_22

    :pswitch_78
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    :goto_21
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v3

    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/clearcut/q2;->k(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)I

    move-result v2

    goto :goto_23

    :pswitch_79
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/clearcut/x;

    if-eqz v3, :cond_7

    :goto_22
    check-cast v2, Lcom/google/android/gms/internal/clearcut/x;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->z(ILcom/google/android/gms/internal/clearcut/x;)I

    move-result v2

    goto :goto_23

    :cond_7
    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->r(ILjava/lang/String;)I

    move-result v2

    goto :goto_23

    :pswitch_7a
    and-int/2addr v2, v12

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->y(I)I

    move-result v2

    goto :goto_24

    :pswitch_7b
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->Q(I)I

    move-result v2

    goto :goto_24

    :pswitch_7c
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->K(I)I

    move-result v2

    goto :goto_24

    :pswitch_7d
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/clearcut/e0;->L(II)I

    move-result v2

    goto :goto_23

    :pswitch_7e
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->G(IJ)I

    move-result v2

    goto :goto_23

    :pswitch_7f
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/clearcut/e0;->D(IJ)I

    move-result v2

    :goto_23
    add-int v2, v16, v2

    goto :goto_25

    :pswitch_80
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->x(I)I

    move-result v2

    goto :goto_24

    :pswitch_81
    and-int/2addr v2, v12

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/clearcut/e0;->q(I)I

    move-result v2

    :goto_24
    add-int v2, v2, v16

    :goto_25
    move/from16 v16, v2

    goto :goto_27

    :cond_8
    :goto_26
    move/from16 v2, v16

    goto :goto_25

    :cond_9
    :goto_27
    add-int/lit8 v10, v10, 0x4

    move/from16 v11, v16

    const/high16 v2, 0xff00000

    const v3, 0xfffff

    goto/16 :goto_16

    :cond_a
    move/from16 v16, v11

    .line 3
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/clearcut/a3;->h(Ljava/lang/Object;)I

    move-result v2

    add-int v2, v2, v16

    .line 4
    iget-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n0;->g()I

    move-result v1

    add-int/2addr v2, v1

    :cond_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2e
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_2d
        :pswitch_2e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6f
        :pswitch_6e
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_6e
        :pswitch_6f
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/clearcut/t;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p4

    .line 8
    .line 9
    move-object/from16 v11, p5

    .line 10
    .line 11
    iget-boolean v0, v15, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 12
    .line 13
    if-eqz v0, :cond_10

    .line 14
    .line 15
    sget-object v9, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    .line 16
    .line 17
    move/from16 v0, p3

    .line 18
    .line 19
    :goto_0
    if-ge v0, v13, :cond_e

    .line 20
    .line 21
    add-int/lit8 v1, v0, 0x1

    .line 22
    .line 23
    aget-byte v0, v12, v0

    .line 24
    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0, v12, v1, v11}, Lcom/google/android/gms/internal/clearcut/s;->d(I[BILcom/google/android/gms/internal/clearcut/t;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 32
    .line 33
    move v10, v0

    .line 34
    move/from16 v16, v1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    move/from16 v16, v0

    .line 38
    .line 39
    move v10, v1

    .line 40
    :goto_1
    ushr-int/lit8 v6, v16, 0x3

    .line 41
    .line 42
    and-int/lit8 v7, v16, 0x7

    .line 43
    .line 44
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/b2;->A(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ltz v8, :cond_b

    .line 49
    .line 50
    add-int/lit8 v0, v8, 0x1

    .line 51
    .line 52
    iget-object v1, v15, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 53
    .line 54
    aget v5, v1, v0

    .line 55
    .line 56
    const/high16 v0, 0xff00000

    .line 57
    .line 58
    and-int/2addr v0, v5

    .line 59
    ushr-int/lit8 v4, v0, 0x14

    .line 60
    .line 61
    const v0, 0xfffff

    .line 62
    .line 63
    .line 64
    and-int/2addr v0, v5

    .line 65
    int-to-long v2, v0

    .line 66
    const/16 v0, 0x11

    .line 67
    .line 68
    const/4 v1, 0x2

    .line 69
    if-gt v4, v0, :cond_4

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    const/4 v6, 0x5

    .line 73
    packed-switch v4, :pswitch_data_0

    .line 74
    .line 75
    .line 76
    goto/16 :goto_c

    .line 77
    .line 78
    :pswitch_0
    if-nez v7, :cond_b

    .line 79
    .line 80
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-wide v4, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    .line 85
    .line 86
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/d0;->D(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :pswitch_1
    if-nez v7, :cond_b

    .line 93
    .line 94
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 99
    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/d0;->F(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :pswitch_2
    if-nez v7, :cond_b

    .line 107
    .line 108
    goto/16 :goto_5

    .line 109
    .line 110
    :pswitch_3
    if-ne v7, v1, :cond_b

    .line 111
    .line 112
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->n([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    goto :goto_2

    .line 117
    :pswitch_4
    if-ne v7, v1, :cond_b

    .line 118
    .line 119
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {v0, v12, v10, v13, v11}, Lcom/google/android/gms/internal/clearcut/b2;->l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-nez v1, :cond_1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    iget-object v4, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    .line 135
    .line 136
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    goto :goto_3

    .line 141
    :pswitch_5
    if-ne v7, v1, :cond_b

    .line 142
    .line 143
    const/high16 v0, 0x20000000

    .line 144
    .line 145
    and-int/2addr v0, v5

    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->j([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->k([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    :goto_2
    iget-object v1, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    .line 158
    .line 159
    :goto_3
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :pswitch_6
    if-nez v7, :cond_b

    .line 165
    .line 166
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    iget-wide v4, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    .line 171
    .line 172
    const-wide/16 v6, 0x0

    .line 173
    .line 174
    cmp-long v8, v4, v6

    .line 175
    .line 176
    if-eqz v8, :cond_3

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_3
    const/4 v0, 0x0

    .line 180
    :goto_4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/clearcut/g3;->g(Ljava/lang/Object;JZ)V

    .line 181
    .line 182
    .line 183
    move v0, v1

    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :pswitch_7
    if-ne v7, v6, :cond_b

    .line 187
    .line 188
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/s;->i(I[B)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 193
    .line 194
    .line 195
    goto :goto_8

    .line 196
    :pswitch_8
    if-ne v7, v0, :cond_b

    .line 197
    .line 198
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/s;->l(I[B)J

    .line 199
    .line 200
    .line 201
    move-result-wide v4

    .line 202
    move-object v0, v9

    .line 203
    move-object/from16 v1, p1

    .line 204
    .line 205
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 206
    .line 207
    .line 208
    goto :goto_9

    .line 209
    :pswitch_9
    if-nez v7, :cond_b

    .line 210
    .line 211
    :goto_5
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    .line 216
    .line 217
    :goto_6
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_a
    if-nez v7, :cond_b

    .line 223
    .line 224
    invoke-static {v12, v10, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    iget-wide v4, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    .line 229
    .line 230
    :goto_7
    move v6, v0

    .line 231
    move-object v0, v9

    .line 232
    move-object/from16 v1, p1

    .line 233
    .line 234
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 235
    .line 236
    .line 237
    move v0, v6

    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :pswitch_b
    if-ne v7, v6, :cond_b

    .line 241
    .line 242
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/s;->o(I[B)F

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/clearcut/g3;->e(Ljava/lang/Object;JF)V

    .line 247
    .line 248
    .line 249
    :goto_8
    add-int/lit8 v0, v10, 0x4

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :pswitch_c
    if-ne v7, v0, :cond_b

    .line 254
    .line 255
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/clearcut/s;->m(I[B)D

    .line 256
    .line 257
    .line 258
    move-result-wide v0

    .line 259
    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/clearcut/g3;->d(Ljava/lang/Object;JD)V

    .line 260
    .line 261
    .line 262
    :goto_9
    add-int/lit8 v0, v10, 0x8

    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_4
    const/16 v0, 0x1b

    .line 267
    .line 268
    if-ne v4, v0, :cond_7

    .line 269
    .line 270
    if-ne v7, v1, :cond_b

    .line 271
    .line 272
    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Lcom/google/android/gms/internal/clearcut/a1;

    .line 277
    .line 278
    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/a1;->q()Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_6

    .line 283
    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-nez v1, :cond_5

    .line 289
    .line 290
    const/16 v1, 0xa

    .line 291
    .line 292
    goto :goto_a

    .line 293
    :cond_5
    shl-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    :goto_a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/a1;->W(I)Lcom/google/android/gms/internal/clearcut/a1;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    :cond_6
    move-object v5, v0

    .line 303
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    move/from16 v1, v16

    .line 308
    .line 309
    move-object/from16 v2, p2

    .line 310
    .line 311
    move v3, v10

    .line 312
    move/from16 v4, p4

    .line 313
    .line 314
    move-object/from16 v6, p5

    .line 315
    .line 316
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/b2;->j(Lcom/google/android/gms/internal/clearcut/o2;I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_7
    const/16 v0, 0x31

    .line 323
    .line 324
    if-gt v4, v0, :cond_8

    .line 325
    .line 326
    int-to-long v0, v5

    .line 327
    move-wide/from16 v17, v0

    .line 328
    .line 329
    move-object/from16 v0, p0

    .line 330
    .line 331
    move-object/from16 v1, p1

    .line 332
    .line 333
    move-wide/from16 v19, v2

    .line 334
    .line 335
    move-object/from16 v2, p2

    .line 336
    .line 337
    move v3, v10

    .line 338
    move v5, v4

    .line 339
    move/from16 v4, p4

    .line 340
    .line 341
    move/from16 p3, v5

    .line 342
    .line 343
    move/from16 v5, v16

    .line 344
    .line 345
    move-object/from16 v21, v9

    .line 346
    .line 347
    move v15, v10

    .line 348
    move-wide/from16 v9, v17

    .line 349
    .line 350
    move/from16 v11, p3

    .line 351
    .line 352
    move-wide/from16 v12, v19

    .line 353
    .line 354
    move-object/from16 v14, p5

    .line 355
    .line 356
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/b2;->n(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/t;)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-ne v0, v15, :cond_d

    .line 361
    .line 362
    goto :goto_b

    .line 363
    :cond_8
    move-wide/from16 v19, v2

    .line 364
    .line 365
    move/from16 p3, v4

    .line 366
    .line 367
    move-object/from16 v21, v9

    .line 368
    .line 369
    move v15, v10

    .line 370
    const/16 v0, 0x32

    .line 371
    .line 372
    move/from16 v9, p3

    .line 373
    .line 374
    if-ne v9, v0, :cond_a

    .line 375
    .line 376
    if-eq v7, v1, :cond_9

    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_9
    move-object/from16 v0, p0

    .line 380
    .line 381
    move-object/from16 v1, p1

    .line 382
    .line 383
    move-object/from16 v2, p2

    .line 384
    .line 385
    move v3, v15

    .line 386
    move/from16 v4, p4

    .line 387
    .line 388
    move v5, v8

    .line 389
    move-wide/from16 v6, v19

    .line 390
    .line 391
    move-object/from16 v8, p5

    .line 392
    .line 393
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/clearcut/b2;->t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/t;)V

    .line 394
    .line 395
    .line 396
    const/4 v0, 0x0

    .line 397
    throw v0

    .line 398
    :cond_a
    move-object/from16 v0, p0

    .line 399
    .line 400
    move-object/from16 v1, p1

    .line 401
    .line 402
    move-object/from16 v2, p2

    .line 403
    .line 404
    move v3, v15

    .line 405
    move/from16 v4, p4

    .line 406
    .line 407
    move v10, v5

    .line 408
    move/from16 v5, v16

    .line 409
    .line 410
    move v12, v8

    .line 411
    move v8, v10

    .line 412
    move-wide/from16 v10, v19

    .line 413
    .line 414
    move-object/from16 v13, p5

    .line 415
    .line 416
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/b2;->m(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/t;)I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    if-ne v0, v15, :cond_d

    .line 421
    .line 422
    :goto_b
    move v2, v0

    .line 423
    goto :goto_e

    .line 424
    :cond_b
    :goto_c
    move-object/from16 v21, v9

    .line 425
    .line 426
    move v15, v10

    .line 427
    :goto_d
    move v2, v15

    .line 428
    :goto_e
    move-object/from16 v0, p1

    .line 429
    .line 430
    check-cast v0, Lcom/google/android/gms/internal/clearcut/v0;

    .line 431
    .line 432
    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    .line 433
    .line 434
    sget-object v3, Lcom/google/android/gms/internal/clearcut/b3;->f:Lcom/google/android/gms/internal/clearcut/b3;

    .line 435
    .line 436
    if-ne v1, v3, :cond_c

    .line 437
    .line 438
    new-instance v1, Lcom/google/android/gms/internal/clearcut/b3;

    .line 439
    .line 440
    invoke-direct {v1}, Lcom/google/android/gms/internal/clearcut/b3;-><init>()V

    .line 441
    .line 442
    .line 443
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    .line 444
    .line 445
    :cond_c
    move-object v4, v1

    .line 446
    move/from16 v0, v16

    .line 447
    .line 448
    move-object/from16 v1, p2

    .line 449
    .line 450
    move/from16 v3, p4

    .line 451
    .line 452
    move-object/from16 v5, p5

    .line 453
    .line 454
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/s;->c(I[BIILcom/google/android/gms/internal/clearcut/b3;Lcom/google/android/gms/internal/clearcut/t;)I

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    :cond_d
    move-object/from16 v15, p0

    .line 459
    .line 460
    move-object/from16 v14, p1

    .line 461
    .line 462
    move-object/from16 v12, p2

    .line 463
    .line 464
    move/from16 v13, p4

    .line 465
    .line 466
    move-object/from16 v11, p5

    .line 467
    .line 468
    move-object/from16 v9, v21

    .line 469
    .line 470
    goto/16 :goto_0

    .line 471
    .line 472
    :cond_e
    move v4, v13

    .line 473
    if-ne v0, v4, :cond_f

    .line 474
    .line 475
    return-void

    .line 476
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->b()Lcom/google/android/gms/internal/clearcut/b1;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    throw v0

    .line 481
    :cond_10
    move v4, v13

    .line 482
    const/4 v5, 0x0

    .line 483
    move-object/from16 v0, p0

    .line 484
    .line 485
    move-object/from16 v1, p1

    .line 486
    .line 487
    move-object/from16 v2, p2

    .line 488
    .line 489
    move/from16 v3, p3

    .line 490
    .line 491
    move/from16 v4, p4

    .line 492
    .line 493
    move-object/from16 v6, p5

    .line 494
    .line 495
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/b2;->o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    .line 496
    .line 497
    .line 498
    return-void

    .line 499
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-boolean v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 11
    .line 12
    if-eqz v3, :cond_8

    .line 13
    .line 14
    iget-boolean v4, v0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 15
    .line 16
    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/n0;->a()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/internal/clearcut/n0;->c()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Ljava/util/Map$Entry;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v4, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 44
    .line 45
    array-length v8, v7

    .line 46
    const/4 v9, 0x0

    .line 47
    const/4 v10, 0x0

    .line 48
    :goto_1
    if-ge v10, v8, :cond_5

    .line 49
    .line 50
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    aget v12, v7, v10

    .line 55
    .line 56
    :goto_2
    if-eqz v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->b(Ljava/util/Map$Entry;)V

    .line 59
    .line 60
    .line 61
    if-ltz v12, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->c(Ljava/util/Map$Entry;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/util/Map$Entry;

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_1
    const/4 v6, 0x0

    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/high16 v13, 0xff00000

    .line 82
    .line 83
    and-int/2addr v13, v11

    .line 84
    ushr-int/lit8 v13, v13, 0x14

    .line 85
    .line 86
    const/4 v14, 0x1

    .line 87
    const v15, 0xfffff

    .line 88
    .line 89
    .line 90
    packed-switch v13, :pswitch_data_0

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_3
    move-object/from16 v16, v4

    .line 94
    .line 95
    goto/16 :goto_4

    .line 96
    .line 97
    :pswitch_0
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_3

    .line 102
    .line 103
    and-int/2addr v11, v15

    .line 104
    int-to-long v13, v11

    .line 105
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/android/gms/internal/clearcut/f0;->h(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :pswitch_1
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-eqz v13, :cond_3

    .line 122
    .line 123
    and-int/2addr v11, v15

    .line 124
    int-to-long v13, v11

    .line 125
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v13

    .line 129
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->g(IJ)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :pswitch_2
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v13

    .line 137
    if-eqz v13, :cond_3

    .line 138
    .line 139
    and-int/2addr v11, v15

    .line 140
    int-to-long v13, v11

    .line 141
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->m(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :pswitch_3
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v13

    .line 153
    if-eqz v13, :cond_3

    .line 154
    .line 155
    and-int/2addr v11, v15

    .line 156
    int-to-long v13, v11

    .line 157
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v13

    .line 161
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->p(IJ)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_4
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v13

    .line 169
    if-eqz v13, :cond_3

    .line 170
    .line 171
    and-int/2addr v11, v15

    .line 172
    int-to-long v13, v11

    .line 173
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->q(II)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :pswitch_5
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v13

    .line 185
    if-eqz v13, :cond_3

    .line 186
    .line 187
    and-int/2addr v11, v15

    .line 188
    int-to-long v13, v11

    .line 189
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->r(II)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_6
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v13

    .line 201
    if-eqz v13, :cond_3

    .line 202
    .line 203
    and-int/2addr v11, v15

    .line 204
    int-to-long v13, v11

    .line 205
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->l(II)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :pswitch_7
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_3

    .line 218
    .line 219
    and-int/2addr v11, v15

    .line 220
    int-to-long v13, v11

    .line 221
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Lcom/google/android/gms/internal/clearcut/x;

    .line 226
    .line 227
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->d(ILcom/google/android/gms/internal/clearcut/x;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :pswitch_8
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v13

    .line 236
    if-eqz v13, :cond_3

    .line 237
    .line 238
    and-int/2addr v11, v15

    .line 239
    int-to-long v13, v11

    .line 240
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/android/gms/internal/clearcut/f0;->e(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :pswitch_9
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    if-eqz v13, :cond_3

    .line 258
    .line 259
    and-int/2addr v11, v15

    .line 260
    int-to-long v13, v11

    .line 261
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/clearcut/b2;->q(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :pswitch_a
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    if-eqz v13, :cond_3

    .line 275
    .line 276
    and-int/2addr v11, v15

    .line 277
    int-to-long v13, v11

    .line 278
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v11

    .line 282
    check-cast v11, Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 285
    .line 286
    .line 287
    move-result v11

    .line 288
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->i(IZ)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :pswitch_b
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v13

    .line 297
    if-eqz v13, :cond_3

    .line 298
    .line 299
    and-int/2addr v11, v15

    .line 300
    int-to-long v13, v11

    .line 301
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->n(II)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_c
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v13

    .line 314
    if-eqz v13, :cond_3

    .line 315
    .line 316
    and-int/2addr v11, v15

    .line 317
    int-to-long v13, v11

    .line 318
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v13

    .line 322
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->k(IJ)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    .line 327
    :pswitch_d
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    if-eqz v13, :cond_3

    .line 332
    .line 333
    and-int/2addr v11, v15

    .line 334
    int-to-long v13, v11

    .line 335
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->H(JLjava/lang/Object;)I

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/clearcut/f0;->j(II)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_e
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v13

    .line 348
    if-eqz v13, :cond_3

    .line 349
    .line 350
    and-int/2addr v11, v15

    .line 351
    int-to-long v13, v11

    .line 352
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v13

    .line 356
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->c(IJ)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :pswitch_f
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    move-result v13

    .line 365
    if-eqz v13, :cond_3

    .line 366
    .line 367
    and-int/2addr v11, v15

    .line 368
    int-to-long v13, v11

    .line 369
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/b2;->I(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v13

    .line 373
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->o(IJ)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :pswitch_10
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v13

    .line 382
    if-eqz v13, :cond_3

    .line 383
    .line 384
    and-int/2addr v11, v15

    .line 385
    int-to-long v13, v11

    .line 386
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v11

    .line 390
    check-cast v11, Ljava/lang/Float;

    .line 391
    .line 392
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 393
    .line 394
    .line 395
    move-result v11

    .line 396
    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/clearcut/f0;->a(FI)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :pswitch_11
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    if-eqz v13, :cond_3

    .line 406
    .line 407
    and-int/2addr v11, v15

    .line 408
    int-to-long v13, v11

    .line 409
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v11

    .line 413
    check-cast v11, Ljava/lang/Double;

    .line 414
    .line 415
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 416
    .line 417
    .line 418
    move-result-wide v13

    .line 419
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/clearcut/f0;->b(ID)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :pswitch_12
    and-int/2addr v11, v15

    .line 425
    int-to-long v13, v11

    .line 426
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-virtual {v0, v2, v12, v11, v10}, Lcom/google/android/gms/internal/clearcut/b2;->s(Lcom/google/android/gms/internal/clearcut/f0;ILjava/lang/Object;I)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_3

    .line 434
    .line 435
    :pswitch_13
    aget v12, v7, v10

    .line 436
    .line 437
    and-int/2addr v11, v15

    .line 438
    int-to-long v13, v11

    .line 439
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    check-cast v11, Ljava/util/List;

    .line 444
    .line 445
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 446
    .line 447
    .line 448
    move-result-object v13

    .line 449
    invoke-static {v12, v11, v2, v13}, Lcom/google/android/gms/internal/clearcut/q2;->i(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Lcom/google/android/gms/internal/clearcut/o2;)V

    .line 450
    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :pswitch_14
    aget v12, v7, v10

    .line 455
    .line 456
    and-int/2addr v11, v15

    .line 457
    move-object/from16 v16, v4

    .line 458
    .line 459
    int-to-long v3, v11

    .line 460
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Ljava/util/List;

    .line 465
    .line 466
    invoke-static {v12, v3, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->w(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 467
    .line 468
    .line 469
    goto/16 :goto_4

    .line 470
    .line 471
    :pswitch_15
    move-object/from16 v16, v4

    .line 472
    .line 473
    aget v3, v7, v10

    .line 474
    .line 475
    and-int v4, v11, v15

    .line 476
    .line 477
    int-to-long v11, v4

    .line 478
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Ljava/util/List;

    .line 483
    .line 484
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->G(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 485
    .line 486
    .line 487
    goto/16 :goto_4

    .line 488
    .line 489
    :pswitch_16
    move-object/from16 v16, v4

    .line 490
    .line 491
    aget v3, v7, v10

    .line 492
    .line 493
    and-int v4, v11, v15

    .line 494
    .line 495
    int-to-long v11, v4

    .line 496
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Ljava/util/List;

    .line 501
    .line 502
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->A(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_4

    .line 506
    .line 507
    :pswitch_17
    move-object/from16 v16, v4

    .line 508
    .line 509
    aget v3, v7, v10

    .line 510
    .line 511
    and-int v4, v11, v15

    .line 512
    .line 513
    int-to-long v11, v4

    .line 514
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/util/List;

    .line 519
    .line 520
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->I(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_4

    .line 524
    .line 525
    :pswitch_18
    move-object/from16 v16, v4

    .line 526
    .line 527
    aget v3, v7, v10

    .line 528
    .line 529
    and-int v4, v11, v15

    .line 530
    .line 531
    int-to-long v11, v4

    .line 532
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Ljava/util/List;

    .line 537
    .line 538
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->J(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 539
    .line 540
    .line 541
    goto/16 :goto_4

    .line 542
    .line 543
    :pswitch_19
    move-object/from16 v16, v4

    .line 544
    .line 545
    aget v3, v7, v10

    .line 546
    .line 547
    and-int v4, v11, v15

    .line 548
    .line 549
    int-to-long v11, v4

    .line 550
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Ljava/util/List;

    .line 555
    .line 556
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->E(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 557
    .line 558
    .line 559
    goto/16 :goto_4

    .line 560
    .line 561
    :pswitch_1a
    move-object/from16 v16, v4

    .line 562
    .line 563
    aget v3, v7, v10

    .line 564
    .line 565
    and-int v4, v11, v15

    .line 566
    .line 567
    int-to-long v11, v4

    .line 568
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    check-cast v4, Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->K(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 575
    .line 576
    .line 577
    goto/16 :goto_4

    .line 578
    .line 579
    :pswitch_1b
    move-object/from16 v16, v4

    .line 580
    .line 581
    aget v3, v7, v10

    .line 582
    .line 583
    and-int v4, v11, v15

    .line 584
    .line 585
    int-to-long v11, v4

    .line 586
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    check-cast v4, Ljava/util/List;

    .line 591
    .line 592
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->H(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 593
    .line 594
    .line 595
    goto/16 :goto_4

    .line 596
    .line 597
    :pswitch_1c
    move-object/from16 v16, v4

    .line 598
    .line 599
    aget v3, v7, v10

    .line 600
    .line 601
    and-int v4, v11, v15

    .line 602
    .line 603
    int-to-long v11, v4

    .line 604
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    check-cast v4, Ljava/util/List;

    .line 609
    .line 610
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->y(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_4

    .line 614
    .line 615
    :pswitch_1d
    move-object/from16 v16, v4

    .line 616
    .line 617
    aget v3, v7, v10

    .line 618
    .line 619
    and-int v4, v11, v15

    .line 620
    .line 621
    int-to-long v11, v4

    .line 622
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Ljava/util/List;

    .line 627
    .line 628
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->C(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 629
    .line 630
    .line 631
    goto/16 :goto_4

    .line 632
    .line 633
    :pswitch_1e
    move-object/from16 v16, v4

    .line 634
    .line 635
    aget v3, v7, v10

    .line 636
    .line 637
    and-int v4, v11, v15

    .line 638
    .line 639
    int-to-long v11, v4

    .line 640
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    check-cast v4, Ljava/util/List;

    .line 645
    .line 646
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->t(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 647
    .line 648
    .line 649
    goto/16 :goto_4

    .line 650
    .line 651
    :pswitch_1f
    move-object/from16 v16, v4

    .line 652
    .line 653
    aget v3, v7, v10

    .line 654
    .line 655
    and-int v4, v11, v15

    .line 656
    .line 657
    int-to-long v11, v4

    .line 658
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    check-cast v4, Ljava/util/List;

    .line 663
    .line 664
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->o(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_4

    .line 668
    .line 669
    :pswitch_20
    move-object/from16 v16, v4

    .line 670
    .line 671
    aget v3, v7, v10

    .line 672
    .line 673
    and-int v4, v11, v15

    .line 674
    .line 675
    int-to-long v11, v4

    .line 676
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    check-cast v4, Ljava/util/List;

    .line 681
    .line 682
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->j(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_4

    .line 686
    .line 687
    :pswitch_21
    move-object/from16 v16, v4

    .line 688
    .line 689
    aget v3, v7, v10

    .line 690
    .line 691
    and-int v4, v11, v15

    .line 692
    .line 693
    int-to-long v11, v4

    .line 694
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    check-cast v4, Ljava/util/List;

    .line 699
    .line 700
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/clearcut/q2;->e(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_4

    .line 704
    .line 705
    :pswitch_22
    move-object/from16 v16, v4

    .line 706
    .line 707
    aget v3, v7, v10

    .line 708
    .line 709
    and-int v4, v11, v15

    .line 710
    .line 711
    int-to-long v11, v4

    .line 712
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    check-cast v4, Ljava/util/List;

    .line 717
    .line 718
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->w(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_4

    .line 722
    .line 723
    :pswitch_23
    move-object/from16 v16, v4

    .line 724
    .line 725
    aget v3, v7, v10

    .line 726
    .line 727
    and-int v4, v11, v15

    .line 728
    .line 729
    int-to-long v11, v4

    .line 730
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    check-cast v4, Ljava/util/List;

    .line 735
    .line 736
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->G(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 737
    .line 738
    .line 739
    goto/16 :goto_4

    .line 740
    .line 741
    :pswitch_24
    move-object/from16 v16, v4

    .line 742
    .line 743
    aget v3, v7, v10

    .line 744
    .line 745
    and-int v4, v11, v15

    .line 746
    .line 747
    int-to-long v11, v4

    .line 748
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    check-cast v4, Ljava/util/List;

    .line 753
    .line 754
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->A(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 755
    .line 756
    .line 757
    goto/16 :goto_4

    .line 758
    .line 759
    :pswitch_25
    move-object/from16 v16, v4

    .line 760
    .line 761
    aget v3, v7, v10

    .line 762
    .line 763
    and-int v4, v11, v15

    .line 764
    .line 765
    int-to-long v11, v4

    .line 766
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    check-cast v4, Ljava/util/List;

    .line 771
    .line 772
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->I(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_4

    .line 776
    .line 777
    :pswitch_26
    move-object/from16 v16, v4

    .line 778
    .line 779
    aget v3, v7, v10

    .line 780
    .line 781
    and-int v4, v11, v15

    .line 782
    .line 783
    int-to-long v11, v4

    .line 784
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    check-cast v4, Ljava/util/List;

    .line 789
    .line 790
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->J(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_4

    .line 794
    .line 795
    :pswitch_27
    move-object/from16 v16, v4

    .line 796
    .line 797
    aget v3, v7, v10

    .line 798
    .line 799
    and-int v4, v11, v15

    .line 800
    .line 801
    int-to-long v11, v4

    .line 802
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    check-cast v4, Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->E(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_4

    .line 812
    .line 813
    :pswitch_28
    move-object/from16 v16, v4

    .line 814
    .line 815
    aget v3, v7, v10

    .line 816
    .line 817
    and-int v4, v11, v15

    .line 818
    .line 819
    int-to-long v11, v4

    .line 820
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    check-cast v4, Ljava/util/List;

    .line 825
    .line 826
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/clearcut/q2;->h(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_4

    .line 830
    .line 831
    :pswitch_29
    move-object/from16 v16, v4

    .line 832
    .line 833
    aget v3, v7, v10

    .line 834
    .line 835
    and-int v4, v11, v15

    .line 836
    .line 837
    int-to-long v11, v4

    .line 838
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Ljava/util/List;

    .line 843
    .line 844
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    invoke-static {v3, v4, v2, v11}, Lcom/google/android/gms/internal/clearcut/q2;->d(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Lcom/google/android/gms/internal/clearcut/o2;)V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_4

    .line 852
    .line 853
    :pswitch_2a
    move-object/from16 v16, v4

    .line 854
    .line 855
    aget v3, v7, v10

    .line 856
    .line 857
    and-int v4, v11, v15

    .line 858
    .line 859
    int-to-long v11, v4

    .line 860
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    check-cast v4, Ljava/util/List;

    .line 865
    .line 866
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/clearcut/q2;->c(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 867
    .line 868
    .line 869
    goto/16 :goto_4

    .line 870
    .line 871
    :pswitch_2b
    move-object/from16 v16, v4

    .line 872
    .line 873
    aget v3, v7, v10

    .line 874
    .line 875
    and-int v4, v11, v15

    .line 876
    .line 877
    int-to-long v11, v4

    .line 878
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v4

    .line 882
    check-cast v4, Ljava/util/List;

    .line 883
    .line 884
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->K(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_4

    .line 888
    .line 889
    :pswitch_2c
    move-object/from16 v16, v4

    .line 890
    .line 891
    aget v3, v7, v10

    .line 892
    .line 893
    and-int v4, v11, v15

    .line 894
    .line 895
    int-to-long v11, v4

    .line 896
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Ljava/util/List;

    .line 901
    .line 902
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->H(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 903
    .line 904
    .line 905
    goto/16 :goto_4

    .line 906
    .line 907
    :pswitch_2d
    move-object/from16 v16, v4

    .line 908
    .line 909
    aget v3, v7, v10

    .line 910
    .line 911
    and-int v4, v11, v15

    .line 912
    .line 913
    int-to-long v11, v4

    .line 914
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    check-cast v4, Ljava/util/List;

    .line 919
    .line 920
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->y(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 921
    .line 922
    .line 923
    goto/16 :goto_4

    .line 924
    .line 925
    :pswitch_2e
    move-object/from16 v16, v4

    .line 926
    .line 927
    aget v3, v7, v10

    .line 928
    .line 929
    and-int v4, v11, v15

    .line 930
    .line 931
    int-to-long v11, v4

    .line 932
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    check-cast v4, Ljava/util/List;

    .line 937
    .line 938
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->C(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 939
    .line 940
    .line 941
    goto/16 :goto_4

    .line 942
    .line 943
    :pswitch_2f
    move-object/from16 v16, v4

    .line 944
    .line 945
    aget v3, v7, v10

    .line 946
    .line 947
    and-int v4, v11, v15

    .line 948
    .line 949
    int-to-long v11, v4

    .line 950
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    check-cast v4, Ljava/util/List;

    .line 955
    .line 956
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->t(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 957
    .line 958
    .line 959
    goto/16 :goto_4

    .line 960
    .line 961
    :pswitch_30
    move-object/from16 v16, v4

    .line 962
    .line 963
    aget v3, v7, v10

    .line 964
    .line 965
    and-int v4, v11, v15

    .line 966
    .line 967
    int-to-long v11, v4

    .line 968
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    check-cast v4, Ljava/util/List;

    .line 973
    .line 974
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->o(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 975
    .line 976
    .line 977
    goto/16 :goto_4

    .line 978
    .line 979
    :pswitch_31
    move-object/from16 v16, v4

    .line 980
    .line 981
    aget v3, v7, v10

    .line 982
    .line 983
    and-int v4, v11, v15

    .line 984
    .line 985
    int-to-long v11, v4

    .line 986
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    check-cast v4, Ljava/util/List;

    .line 991
    .line 992
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->j(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 993
    .line 994
    .line 995
    goto/16 :goto_4

    .line 996
    .line 997
    :pswitch_32
    move-object/from16 v16, v4

    .line 998
    .line 999
    aget v3, v7, v10

    .line 1000
    .line 1001
    and-int v4, v11, v15

    .line 1002
    .line 1003
    int-to-long v11, v4

    .line 1004
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    check-cast v4, Ljava/util/List;

    .line 1009
    .line 1010
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/clearcut/q2;->e(ILjava/util/List;Lcom/google/android/gms/internal/clearcut/f0;Z)V

    .line 1011
    .line 1012
    .line 1013
    goto/16 :goto_4

    .line 1014
    .line 1015
    :pswitch_33
    move-object/from16 v16, v4

    .line 1016
    .line 1017
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1018
    .line 1019
    .line 1020
    move-result v3

    .line 1021
    if-eqz v3, :cond_4

    .line 1022
    .line 1023
    and-int v3, v11, v15

    .line 1024
    .line 1025
    int-to-long v3, v3

    .line 1026
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v4

    .line 1034
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/android/gms/internal/clearcut/f0;->h(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 1035
    .line 1036
    .line 1037
    goto/16 :goto_4

    .line 1038
    .line 1039
    :pswitch_34
    move-object/from16 v16, v4

    .line 1040
    .line 1041
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v3

    .line 1045
    if-eqz v3, :cond_4

    .line 1046
    .line 1047
    and-int v3, v11, v15

    .line 1048
    .line 1049
    int-to-long v3, v3

    .line 1050
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v3

    .line 1054
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->g(IJ)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_4

    .line 1058
    .line 1059
    :pswitch_35
    move-object/from16 v16, v4

    .line 1060
    .line 1061
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    move-result v3

    .line 1065
    if-eqz v3, :cond_4

    .line 1066
    .line 1067
    and-int v3, v11, v15

    .line 1068
    .line 1069
    int-to-long v3, v3

    .line 1070
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1071
    .line 1072
    .line 1073
    move-result v3

    .line 1074
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->m(II)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_4

    .line 1078
    .line 1079
    :pswitch_36
    move-object/from16 v16, v4

    .line 1080
    .line 1081
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    move-result v3

    .line 1085
    if-eqz v3, :cond_4

    .line 1086
    .line 1087
    and-int v3, v11, v15

    .line 1088
    .line 1089
    int-to-long v3, v3

    .line 1090
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v3

    .line 1094
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->p(IJ)V

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_4

    .line 1098
    .line 1099
    :pswitch_37
    move-object/from16 v16, v4

    .line 1100
    .line 1101
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1102
    .line 1103
    .line 1104
    move-result v3

    .line 1105
    if-eqz v3, :cond_4

    .line 1106
    .line 1107
    and-int v3, v11, v15

    .line 1108
    .line 1109
    int-to-long v3, v3

    .line 1110
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1111
    .line 1112
    .line 1113
    move-result v3

    .line 1114
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->q(II)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_4

    .line 1118
    .line 1119
    :pswitch_38
    move-object/from16 v16, v4

    .line 1120
    .line 1121
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v3

    .line 1125
    if-eqz v3, :cond_4

    .line 1126
    .line 1127
    and-int v3, v11, v15

    .line 1128
    .line 1129
    int-to-long v3, v3

    .line 1130
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->r(II)V

    .line 1135
    .line 1136
    .line 1137
    goto/16 :goto_4

    .line 1138
    .line 1139
    :pswitch_39
    move-object/from16 v16, v4

    .line 1140
    .line 1141
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1142
    .line 1143
    .line 1144
    move-result v3

    .line 1145
    if-eqz v3, :cond_4

    .line 1146
    .line 1147
    and-int v3, v11, v15

    .line 1148
    .line 1149
    int-to-long v3, v3

    .line 1150
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->l(II)V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_4

    .line 1158
    .line 1159
    :pswitch_3a
    move-object/from16 v16, v4

    .line 1160
    .line 1161
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    if-eqz v3, :cond_4

    .line 1166
    .line 1167
    and-int v3, v11, v15

    .line 1168
    .line 1169
    int-to-long v3, v3

    .line 1170
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    check-cast v3, Lcom/google/android/gms/internal/clearcut/x;

    .line 1175
    .line 1176
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->d(ILcom/google/android/gms/internal/clearcut/x;)V

    .line 1177
    .line 1178
    .line 1179
    goto/16 :goto_4

    .line 1180
    .line 1181
    :pswitch_3b
    move-object/from16 v16, v4

    .line 1182
    .line 1183
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v3

    .line 1187
    if-eqz v3, :cond_4

    .line 1188
    .line 1189
    and-int v3, v11, v15

    .line 1190
    .line 1191
    int-to-long v3, v3

    .line 1192
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v3

    .line 1196
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v4

    .line 1200
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/android/gms/internal/clearcut/f0;->e(ILcom/google/android/gms/internal/clearcut/o2;Ljava/lang/Object;)V

    .line 1201
    .line 1202
    .line 1203
    goto/16 :goto_4

    .line 1204
    .line 1205
    :pswitch_3c
    move-object/from16 v16, v4

    .line 1206
    .line 1207
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v3

    .line 1211
    if-eqz v3, :cond_4

    .line 1212
    .line 1213
    and-int v3, v11, v15

    .line 1214
    .line 1215
    int-to-long v3, v3

    .line 1216
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    invoke-static {v12, v3, v2}, Lcom/google/android/gms/internal/clearcut/b2;->q(ILjava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 1221
    .line 1222
    .line 1223
    goto/16 :goto_4

    .line 1224
    .line 1225
    :pswitch_3d
    move-object/from16 v16, v4

    .line 1226
    .line 1227
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1228
    .line 1229
    .line 1230
    move-result v3

    .line 1231
    if-eqz v3, :cond_4

    .line 1232
    .line 1233
    and-int v3, v11, v15

    .line 1234
    .line 1235
    int-to-long v3, v3

    .line 1236
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v3

    .line 1240
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->i(IZ)V

    .line 1241
    .line 1242
    .line 1243
    goto/16 :goto_4

    .line 1244
    .line 1245
    :pswitch_3e
    move-object/from16 v16, v4

    .line 1246
    .line 1247
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1248
    .line 1249
    .line 1250
    move-result v3

    .line 1251
    if-eqz v3, :cond_4

    .line 1252
    .line 1253
    and-int v3, v11, v15

    .line 1254
    .line 1255
    int-to-long v3, v3

    .line 1256
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1257
    .line 1258
    .line 1259
    move-result v3

    .line 1260
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->n(II)V

    .line 1261
    .line 1262
    .line 1263
    goto/16 :goto_4

    .line 1264
    .line 1265
    :pswitch_3f
    move-object/from16 v16, v4

    .line 1266
    .line 1267
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v3

    .line 1271
    if-eqz v3, :cond_4

    .line 1272
    .line 1273
    and-int v3, v11, v15

    .line 1274
    .line 1275
    int-to-long v3, v3

    .line 1276
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 1277
    .line 1278
    .line 1279
    move-result-wide v3

    .line 1280
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->k(IJ)V

    .line 1281
    .line 1282
    .line 1283
    goto :goto_4

    .line 1284
    :pswitch_40
    move-object/from16 v16, v4

    .line 1285
    .line 1286
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1287
    .line 1288
    .line 1289
    move-result v3

    .line 1290
    if-eqz v3, :cond_4

    .line 1291
    .line 1292
    and-int v3, v11, v15

    .line 1293
    .line 1294
    int-to-long v3, v3

    .line 1295
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/clearcut/f0;->j(II)V

    .line 1300
    .line 1301
    .line 1302
    goto :goto_4

    .line 1303
    :pswitch_41
    move-object/from16 v16, v4

    .line 1304
    .line 1305
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1306
    .line 1307
    .line 1308
    move-result v3

    .line 1309
    if-eqz v3, :cond_4

    .line 1310
    .line 1311
    and-int v3, v11, v15

    .line 1312
    .line 1313
    int-to-long v3, v3

    .line 1314
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v3

    .line 1318
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->c(IJ)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_4

    .line 1322
    :pswitch_42
    move-object/from16 v16, v4

    .line 1323
    .line 1324
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    if-eqz v3, :cond_4

    .line 1329
    .line 1330
    and-int v3, v11, v15

    .line 1331
    .line 1332
    int-to-long v3, v3

    .line 1333
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v3

    .line 1337
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->o(IJ)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_4

    .line 1341
    :pswitch_43
    move-object/from16 v16, v4

    .line 1342
    .line 1343
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1344
    .line 1345
    .line 1346
    move-result v3

    .line 1347
    if-eqz v3, :cond_4

    .line 1348
    .line 1349
    and-int v3, v11, v15

    .line 1350
    .line 1351
    int-to-long v3, v3

    .line 1352
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->u(JLjava/lang/Object;)F

    .line 1353
    .line 1354
    .line 1355
    move-result v3

    .line 1356
    invoke-virtual {v2, v3, v12}, Lcom/google/android/gms/internal/clearcut/f0;->a(FI)V

    .line 1357
    .line 1358
    .line 1359
    goto :goto_4

    .line 1360
    :pswitch_44
    move-object/from16 v16, v4

    .line 1361
    .line 1362
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 1363
    .line 1364
    .line 1365
    move-result v3

    .line 1366
    if-eqz v3, :cond_4

    .line 1367
    .line 1368
    and-int v3, v11, v15

    .line 1369
    .line 1370
    int-to-long v3, v3

    .line 1371
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/clearcut/g3;->v(JLjava/lang/Object;)D

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v3

    .line 1375
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/clearcut/f0;->b(ID)V

    .line 1376
    .line 1377
    .line 1378
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x4

    .line 1379
    .line 1380
    move-object/from16 v4, v16

    .line 1381
    .line 1382
    goto/16 :goto_1

    .line 1383
    .line 1384
    :cond_5
    move-object/from16 v16, v4

    .line 1385
    .line 1386
    :goto_5
    if-eqz v6, :cond_7

    .line 1387
    .line 1388
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/clearcut/j0;->c(Ljava/util/Map$Entry;)V

    .line 1389
    .line 1390
    .line 1391
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 1392
    .line 1393
    .line 1394
    move-result v3

    .line 1395
    if-eqz v3, :cond_6

    .line 1396
    .line 1397
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v3

    .line 1401
    move-object v6, v3

    .line 1402
    check-cast v6, Ljava/util/Map$Entry;

    .line 1403
    .line 1404
    goto :goto_5

    .line 1405
    :cond_6
    const/4 v6, 0x0

    .line 1406
    goto :goto_5

    .line 1407
    :cond_7
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    .line 1408
    .line 1409
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/clearcut/a3;->i(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/b3;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v1

    .line 1413
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/clearcut/a3;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 1414
    .line 1415
    .line 1416
    return-void

    .line 1417
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/clearcut/b2;->E(Ljava/lang/Object;Lcom/google/android/gms/internal/clearcut/f0;)V

    .line 1418
    .line 1419
    .line 1420
    return-void

    .line 1421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->i:[I

    .line 7
    .line 8
    if-eqz v3, :cond_13

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_8

    .line 14
    .line 15
    :cond_0
    array-length v4, v3

    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, -0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    :goto_0
    if-ge v7, v4, :cond_11

    .line 21
    .line 22
    aget v9, v3, v7

    .line 23
    .line 24
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/clearcut/b2;->A(I)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 29
    .line 30
    .line 31
    move-result v11

    .line 32
    const v12, 0xfffff

    .line 33
    .line 34
    .line 35
    iget-boolean v13, v0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 36
    .line 37
    if-nez v13, :cond_2

    .line 38
    .line 39
    add-int/lit8 v14, v10, 0x2

    .line 40
    .line 41
    iget-object v15, v0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 42
    .line 43
    aget v14, v15, v14

    .line 44
    .line 45
    and-int v15, v14, v12

    .line 46
    .line 47
    ushr-int/lit8 v14, v14, 0x14

    .line 48
    .line 49
    shl-int v14, v2, v14

    .line 50
    .line 51
    if-eq v15, v6, :cond_1

    .line 52
    .line 53
    sget-object v6, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    .line 54
    .line 55
    move-object/from16 v16, v3

    .line 56
    .line 57
    int-to-long v2, v15

    .line 58
    invoke-virtual {v6, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    move v6, v15

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object/from16 v16, v3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object/from16 v16, v3

    .line 68
    .line 69
    const/4 v14, 0x0

    .line 70
    :goto_1
    const/high16 v2, 0x10000000

    .line 71
    .line 72
    and-int/2addr v2, v11

    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 v2, 0x0

    .line 78
    :goto_2
    if-eqz v2, :cond_6

    .line 79
    .line 80
    if-eqz v13, :cond_4

    .line 81
    .line 82
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    goto :goto_3

    .line 87
    :cond_4
    and-int v2, v8, v14

    .line 88
    .line 89
    if-eqz v2, :cond_5

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 v2, 0x0

    .line 94
    :goto_3
    if-nez v2, :cond_6

    .line 95
    .line 96
    return v5

    .line 97
    :cond_6
    const/high16 v2, 0xff00000

    .line 98
    .line 99
    and-int/2addr v2, v11

    .line 100
    ushr-int/lit8 v2, v2, 0x14

    .line 101
    .line 102
    const/16 v3, 0x9

    .line 103
    .line 104
    if-eq v2, v3, :cond_d

    .line 105
    .line 106
    const/16 v3, 0x11

    .line 107
    .line 108
    if-eq v2, v3, :cond_d

    .line 109
    .line 110
    const/16 v3, 0x1b

    .line 111
    .line 112
    if-eq v2, v3, :cond_a

    .line 113
    .line 114
    const/16 v3, 0x3c

    .line 115
    .line 116
    if-eq v2, v3, :cond_9

    .line 117
    .line 118
    const/16 v3, 0x44

    .line 119
    .line 120
    if-eq v2, v3, :cond_9

    .line 121
    .line 122
    const/16 v3, 0x31

    .line 123
    .line 124
    if-eq v2, v3, :cond_a

    .line 125
    .line 126
    const/16 v3, 0x32

    .line 127
    .line 128
    if-eq v2, v3, :cond_7

    .line 129
    .line 130
    goto/16 :goto_7

    .line 131
    .line 132
    :cond_7
    and-int v2, v11, v12

    .line 133
    .line 134
    int-to-long v2, v2

    .line 135
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-object v3, v0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    .line 140
    .line 141
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/clearcut/s1;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    goto/16 :goto_7

    .line 152
    .line 153
    :cond_8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    invoke-interface {v3}, Lcom/google/android/gms/internal/clearcut/s1;->o()V

    .line 157
    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    throw v1

    .line 161
    :cond_9
    invoke-virtual {v0, v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->u(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    if-eqz v2, :cond_10

    .line 166
    .line 167
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    and-int v3, v11, v12

    .line 172
    .line 173
    int-to-long v9, v3

    .line 174
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/o2;->i(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-nez v2, :cond_10

    .line 183
    .line 184
    return v5

    .line 185
    :cond_a
    and-int v2, v11, v12

    .line 186
    .line 187
    int-to-long v2, v2

    .line 188
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    check-cast v2, Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-nez v3, :cond_c

    .line 199
    .line 200
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const/4 v9, 0x0

    .line 205
    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-ge v9, v10, :cond_c

    .line 210
    .line 211
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v10

    .line 215
    invoke-interface {v3, v10}, Lcom/google/android/gms/internal/clearcut/o2;->i(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v10

    .line 219
    if-nez v10, :cond_b

    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    goto :goto_5

    .line 223
    :cond_b
    add-int/lit8 v9, v9, 0x1

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_c
    const/4 v2, 0x1

    .line 227
    :goto_5
    if-nez v2, :cond_10

    .line 228
    .line 229
    return v5

    .line 230
    :cond_d
    if-eqz v13, :cond_e

    .line 231
    .line 232
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    goto :goto_6

    .line 237
    :cond_e
    and-int v2, v8, v14

    .line 238
    .line 239
    if-eqz v2, :cond_f

    .line 240
    .line 241
    const/4 v2, 0x1

    .line 242
    goto :goto_6

    .line 243
    :cond_f
    const/4 v2, 0x0

    .line 244
    :goto_6
    if-eqz v2, :cond_10

    .line 245
    .line 246
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    and-int v3, v11, v12

    .line 251
    .line 252
    int-to-long v9, v3

    .line 253
    invoke-static {v9, v10, v1}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/clearcut/o2;->i(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    if-nez v2, :cond_10

    .line 262
    .line 263
    return v5

    .line 264
    :cond_10
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 265
    .line 266
    move-object/from16 v3, v16

    .line 267
    .line 268
    const/4 v2, 0x1

    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_11
    iget-boolean v2, v0, Lcom/google/android/gms/internal/clearcut/b2;->g:Z

    .line 272
    .line 273
    if-eqz v2, :cond_12

    .line 274
    .line 275
    iget-object v2, v0, Lcom/google/android/gms/internal/clearcut/b2;->o:Lcom/google/android/gms/internal/clearcut/j0;

    .line 276
    .line 277
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/clearcut/j0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/n0;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/n0;->b()Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_12

    .line 286
    .line 287
    return v5

    .line 288
    :cond_12
    const/4 v1, 0x1

    .line 289
    return v1

    .line 290
    :cond_13
    :goto_8
    const/4 v1, 0x1

    .line 291
    return v1
.end method

.method public final m(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/t;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    add-int/lit8 v7, v6, 0x2

    iget-object v12, v0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    aget v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v7, v12

    int-to-long v12, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    sget-object v14, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_d

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_b

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/b2;->k(Lcom/google/android/gms/internal/clearcut/o2;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_0

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_6

    goto/16 :goto_3

    :pswitch_1
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/d0;->D(J)J

    move-result-wide v3

    goto/16 :goto_8

    :pswitch_2
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/clearcut/d0;->F(I)I

    move-result v3

    goto/16 :goto_7

    :pswitch_3
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/b2;->y(I)Lcom/google/android/gms/internal/clearcut/z0;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/clearcut/z0;->j(I)Lcom/google/android/gms/internal/clearcut/y0;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1
    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/clearcut/v0;

    iget-object v5, v1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/b3;->f:Lcom/google/android/gms/internal/clearcut/b3;

    if-ne v5, v6, :cond_2

    .line 2
    new-instance v5, Lcom/google/android/gms/internal/clearcut/b3;

    invoke-direct {v5}, Lcom/google/android/gms/internal/clearcut/b3;-><init>()V

    .line 3
    iput-object v5, v1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    :cond_2
    int-to-long v6, v4

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v2, v1}, Lcom/google/android/gms/internal/clearcut/b3;->c(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_e

    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_c

    :pswitch_4
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v4, :cond_4

    sget-object v3, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    goto/16 :goto_9

    :cond_4
    invoke-static {v3, v2, v4}, Lcom/google/android/gms/internal/clearcut/x;->u([BII)Lcom/google/android/gms/internal/clearcut/c0;

    move-result-object v3

    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    :pswitch_5
    if-ne v5, v15, :cond_b

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/clearcut/b2;->l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_5

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    :goto_3
    iget-object v3, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_6
    iget-object v4, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object v3

    goto/16 :goto_9

    :pswitch_6
    if-ne v5, v15, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v4, :cond_7

    const-string v3, ""

    goto :goto_9

    :cond_7
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_9

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/clearcut/i3;->c([BII)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->c()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_9
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v14, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_5
    add-int/2addr v2, v4

    goto/16 :goto_c

    :pswitch_7
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    const-wide/16 v5, 0x0

    cmp-long v11, v3, v5

    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    :goto_6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_9

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->i(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_a

    :pswitch_9
    if-ne v5, v7, :cond_b

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->l(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_b

    :pswitch_a
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_9

    :pswitch_b
    if-nez v5, :cond_b

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    :goto_8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_9
    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_b

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->o(I[B)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_a
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_c

    :pswitch_d
    if-ne v5, v7, :cond_b

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->m(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_b
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_c
    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_e

    :cond_b
    :goto_d
    move v2, v4

    :goto_e
    return v2

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/t;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/clearcut/a1;

    invoke-interface {v12}, Lcom/google/android/gms/internal/clearcut/a1;->q()Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    shl-int/2addr v13, v14

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/clearcut/a1;->W(I)Lcom/google/android/gms/internal/clearcut/a1;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const-wide/16 v9, 0x0

    const/4 v11, 0x5

    const/4 v13, 0x2

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_1f

    :pswitch_0
    const/4 v1, 0x3

    if-ne v6, v1, :cond_29

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/b2;->k(Lcom/google/android/gms/internal/clearcut/o2;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    :goto_1
    iget-object v8, v7, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_29

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v9, :cond_29

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/clearcut/b2;->k(Lcom/google/android/gms/internal/clearcut/o2;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    goto :goto_1

    :pswitch_1
    if-ne v6, v13, :cond_4

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/clearcut/d0;->D(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_20

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    :goto_3
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/clearcut/d0;->D(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_3

    :pswitch_2
    if-ne v6, v13, :cond_7

    check-cast v12, Lcom/google/android/gms/internal/clearcut/w0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/d0;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/clearcut/w0;->l(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_20

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/w0;

    :goto_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/clearcut/d0;->F(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/clearcut/w0;->l(I)V

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_5

    :pswitch_3
    if-ne v6, v13, :cond_8

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/clearcut/s;->f([BILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_29

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/s;->b(I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/clearcut/v0;

    iget-object v3, v1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/b3;->f:Lcom/google/android/gms/internal/clearcut/b3;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/b2;->y(I)Lcom/google/android/gms/internal/clearcut/z0;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/clearcut/q2;->b(ILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/z0;Lcom/google/android/gms/internal/clearcut/b3;Lcom/google/android/gms/internal/clearcut/a3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/clearcut/b3;

    if-eqz v3, :cond_a

    iput-object v3, v1, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_20

    :pswitch_4
    if-ne v6, v13, :cond_29

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/clearcut/x;->u([BII)Lcom/google/android/gms/internal/clearcut/c0;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v4, :cond_b

    :goto_9
    sget-object v4, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :pswitch_5
    if-ne v6, v13, :cond_29

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/clearcut/b2;->j(Lcom/google/android/gms/internal/clearcut/o2;I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    goto/16 :goto_20

    :pswitch_6
    if-ne v6, v13, :cond_29

    const-wide/32 v13, 0x20000000

    and-long v13, p9, v13

    const-string v1, ""

    cmp-long v6, v13, v9

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    if-nez v6, :cond_e

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v6, :cond_c

    goto :goto_c

    :cond_c
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_a
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_29

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v8, :cond_29

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v6, :cond_d

    :goto_c
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_d
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_a

    :cond_e
    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v6, :cond_f

    :goto_d
    move v8, v4

    goto :goto_10

    :cond_f
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/clearcut/i3;->c([BII)Z

    move-result v9

    if-eqz v9, :cond_13

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_e
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    if-ge v8, v5, :cond_12

    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_12

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-nez v6, :cond_10

    goto :goto_d

    :goto_10
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_10
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/clearcut/i3;->c([BII)Z

    move-result v9

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/clearcut/x0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_e

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->c()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_12
    move v4, v8

    goto/16 :goto_1f

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->c()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v13, :cond_17

    check-cast v12, Lcom/google/android/gms/internal/clearcut/u;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v4, v2

    :goto_11
    if-ge v2, v4, :cond_15

    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    cmp-long v8, v5, v9

    if-eqz v8, :cond_14

    const/4 v5, 0x1

    goto :goto_12

    :cond_14
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/clearcut/u;->l(Z)V

    goto :goto_11

    :cond_15
    if-ne v2, v4, :cond_16

    goto/16 :goto_7

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_17
    if-nez v6, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/u;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget-wide v14, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    cmp-long v6, v14, v9

    if-eqz v6, :cond_18

    goto :goto_14

    :cond_18
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/clearcut/u;->l(Z)V

    if-ge v4, v5, :cond_29

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v6

    iget v11, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v11, :cond_29

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget-wide v13, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    cmp-long v6, v13, v9

    if-eqz v6, :cond_18

    :goto_14
    const/4 v6, 0x1

    goto :goto_13

    :pswitch_8
    if-ne v6, v13, :cond_1b

    check-cast v12, Lcom/google/android/gms/internal/clearcut/w0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_19

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/s;->i(I[B)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/clearcut/w0;->l(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_15

    :cond_19
    if-ne v1, v2, :cond_1a

    goto/16 :goto_20

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_1b
    if-ne v6, v11, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/w0;

    :goto_16
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->i(I[B)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/w0;->l(I)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_16

    :pswitch_9
    if-ne v6, v13, :cond_1e

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_1c

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/s;->l(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_17

    :cond_1c
    if-ne v1, v2, :cond_1d

    goto/16 :goto_20

    :cond_1d
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_1e
    const/4 v1, 0x1

    if-ne v6, v1, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    :goto_18
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->l(I[B)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_18

    :pswitch_a
    if-ne v6, v13, :cond_1f

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/clearcut/s;->f([BILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    goto/16 :goto_20

    :cond_1f
    if-nez v6, :cond_29

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/clearcut/s;->b(I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    goto/16 :goto_20

    :pswitch_b
    if-ne v6, v13, :cond_22

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_20

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    goto :goto_19

    :cond_20
    if-ne v1, v2, :cond_21

    goto/16 :goto_20

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_22
    if-nez v6, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/n1;

    :goto_1a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/n1;->u(J)V

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_1a

    :pswitch_c
    if-ne v6, v13, :cond_25

    check-cast v12, Lcom/google/android/gms/internal/clearcut/t0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_23

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/s;->o(I[B)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/clearcut/t0;->l(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1b

    :cond_23
    if-ne v1, v2, :cond_24

    goto :goto_20

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_25
    if-ne v6, v11, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/t0;

    :goto_1c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->o(I[B)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/clearcut/t0;->l(F)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_1c

    :pswitch_d
    if-ne v6, v13, :cond_28

    check-cast v12, Lcom/google/android/gms/internal/clearcut/g0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    add-int/2addr v2, v1

    :goto_1d
    if-ge v1, v2, :cond_26

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/clearcut/s;->m(I[B)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/clearcut/g0;->l(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1d

    :cond_26
    if-ne v1, v2, :cond_27

    goto :goto_20

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v1

    throw v1

    :cond_28
    const/4 v1, 0x1

    if-ne v6, v1, :cond_29

    check-cast v12, Lcom/google/android/gms/internal/clearcut/g0;

    :goto_1e
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/clearcut/s;->m(I[B)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/clearcut/g0;->l(D)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_2a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ne v2, v6, :cond_2a

    goto :goto_1e

    :cond_29
    :goto_1f
    move v1, v4

    :cond_2a
    :goto_20
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/clearcut/t;)I
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/clearcut/t;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p6

    sget-object v9, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    const/4 v10, -0x1

    move/from16 v0, p3

    move/from16 v1, p5

    move-object v6, v11

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    :goto_0
    const/16 v17, 0x0

    iget-object v5, v15, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    const v18, 0xfffff

    if-ge v0, v13, :cond_1d

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_0

    invoke-static {v0, v12, v2, v6}, Lcom/google/android/gms/internal/clearcut/s;->d(I[BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget v2, v6, Lcom/google/android/gms/internal/clearcut/t;->a:I

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    ushr-int/lit8 v3, v4, 0x3

    and-int/lit8 v0, v4, 0x7

    move-object/from16 p3, v6

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/clearcut/b2;->A(I)I

    move-result v6

    move/from16 v19, v4

    sget-object v4, Lcom/google/android/gms/internal/clearcut/b3;->f:Lcom/google/android/gms/internal/clearcut/b3;

    if-eq v6, v10, :cond_19

    add-int/lit8 v1, v6, 0x1

    aget v1, v5, v1

    const/high16 v20, 0xff00000

    and-int v20, v1, v20

    ushr-int/lit8 v10, v20, 0x14

    and-int v13, v1, v18

    int-to-long v12, v13

    move/from16 v20, v1

    const/16 v1, 0x11

    move-object/from16 v22, v4

    if-gt v10, v1, :cond_10

    add-int/lit8 v1, v6, 0x2

    aget v1, v5, v1

    ushr-int/lit8 v23, v1, 0x14

    const/4 v4, 0x1

    shl-int v23, v4, v23

    and-int v1, v1, v18

    move-wide/from16 v24, v12

    if-eq v1, v7, :cond_2

    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    int-to-long v12, v7

    invoke-virtual {v9, v14, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1
    int-to-long v7, v1

    invoke-virtual {v9, v14, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v1

    :cond_2
    const/4 v1, 0x5

    packed-switch v10, :pswitch_data_0

    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    :goto_2
    move-object/from16 v10, v22

    :cond_3
    :goto_3
    move-object/from16 v19, v5

    goto/16 :goto_11

    :pswitch_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v4, v0, 0x4

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v12, v19

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/b2;->k(Lcom/google/android/gms/internal/clearcut/o2;[BIIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    and-int v1, v8, v23

    if-nez v1, :cond_4

    iget-object v1, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    move-wide/from16 v3, v24

    goto :goto_4

    :cond_4
    move-wide/from16 v3, v24

    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object v1

    :goto_4
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v1, v8, v23

    move-object/from16 v13, p2

    goto/16 :goto_8

    :cond_5
    move/from16 v12, v19

    move-object/from16 v13, p2

    move/from16 v6, p4

    move-object/from16 v19, v5

    move-object/from16 v10, v22

    goto/16 :goto_11

    :pswitch_1
    move/from16 v12, v19

    move-wide/from16 v3, v24

    move-object/from16 v13, p2

    if-nez v0, :cond_6

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v6

    iget-wide v0, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/d0;->D(J)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v8, v8, v23

    move v0, v6

    goto/16 :goto_e

    :pswitch_2
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v24

    if-nez v0, :cond_6

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-static {v1}, Lcom/google/android/gms/internal/clearcut/d0;->F(I)I

    move-result v1

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_7

    :cond_6
    move/from16 v6, p4

    goto :goto_2

    :pswitch_3
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-wide/from16 v3, v24

    if-nez v0, :cond_a

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/b2;->y(I)Lcom/google/android/gms/internal/clearcut/z0;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/clearcut/z0;->j(I)Lcom/google/android/gms/internal/clearcut/y0;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_5

    .line 1
    :cond_7
    move-object v2, v14

    check-cast v2, Lcom/google/android/gms/internal/clearcut/v0;

    iget-object v3, v2, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    move-object/from16 v10, v22

    if-ne v3, v10, :cond_8

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/clearcut/b3;

    invoke-direct {v3}, Lcom/google/android/gms/internal/clearcut/b3;-><init>()V

    .line 3
    iput-object v3, v2, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    :cond_8
    int-to-long v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v12, v1}, Lcom/google/android/gms/internal/clearcut/b3;->c(ILjava/lang/Object;)V

    goto :goto_6

    :cond_9
    :goto_5
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v8, v8, v23

    :goto_6
    move/from16 v6, p4

    goto/16 :goto_e

    :cond_a
    move-object/from16 v10, v22

    goto :goto_a

    :pswitch_4
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-wide/from16 v3, v24

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->n([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_7
    or-int v1, v8, v23

    :goto_8
    move/from16 v6, p4

    goto/16 :goto_10

    :pswitch_5
    move-object/from16 v13, p2

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-wide/from16 v3, v24

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v0

    move/from16 v6, p4

    invoke-static {v0, v13, v2, v6, v11}, Lcom/google/android/gms/internal/clearcut/b2;->l(Lcom/google/android/gms/internal/clearcut/o2;[BIILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    and-int v1, v8, v23

    if-nez v1, :cond_b

    :goto_9
    iget-object v1, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    goto :goto_b

    :cond_b
    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v11, Lcom/google/android/gms/internal/clearcut/t;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object v1

    goto :goto_b

    :cond_c
    :goto_a
    move/from16 v6, p4

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-wide/from16 v3, v24

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_d

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->j([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    goto :goto_9

    :cond_d
    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->k([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    goto :goto_9

    :goto_b
    invoke-virtual {v9, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-nez v0, :cond_f

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget-wide v1, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    const-wide/16 v17, 0x0

    cmp-long v3, v1, v17

    if-eqz v3, :cond_e

    const/4 v1, 0x1

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    invoke-static {v14, v4, v5, v1}, Lcom/google/android/gms/internal/clearcut/g3;->g(Ljava/lang/Object;JZ)V

    goto/16 :goto_f

    :pswitch_8
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-ne v0, v1, :cond_f

    invoke-static {v2, v13}, Lcom/google/android/gms/internal/clearcut/s;->i(I[B)I

    move-result v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_d

    :pswitch_9
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    const/4 v1, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-ne v0, v1, :cond_f

    invoke-static {v2, v13}, Lcom/google/android/gms/internal/clearcut/s;->l(I[B)J

    move-result-wide v17

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v2, v10, 0x8

    :goto_d
    move v0, v2

    or-int v8, v8, v23

    move/from16 v1, p5

    move v2, v12

    move-object v12, v13

    const/4 v10, -0x1

    move v13, v6

    move-object v6, v11

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-nez v0, :cond_f

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/clearcut/t;->a:I

    invoke-virtual {v9, v14, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :pswitch_b
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-nez v0, :cond_f

    invoke-static {v13, v2, v11}, Lcom/google/android/gms/internal/clearcut/s;->h([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result v10

    iget-wide v2, v11, Lcom/google/android/gms/internal/clearcut/t;->b:J

    move-object v0, v9

    move-object/from16 v1, p1

    move-wide/from16 v17, v2

    move-wide v2, v4

    move-wide/from16 v4, v17

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v8, v8, v23

    move v0, v10

    :goto_e
    move-object v6, v11

    goto/16 :goto_13

    :pswitch_c
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-ne v0, v1, :cond_f

    invoke-static {v2, v13}, Lcom/google/android/gms/internal/clearcut/s;->o(I[B)F

    move-result v0

    invoke-static {v14, v4, v5, v0}, Lcom/google/android/gms/internal/clearcut/g3;->e(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_f

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 v6, p4

    move/from16 v12, v19

    move-object/from16 v10, v22

    const/4 v1, 0x1

    move-object/from16 v19, v5

    move-wide/from16 v4, v24

    if-ne v0, v1, :cond_f

    invoke-static {v2, v13}, Lcom/google/android/gms/internal/clearcut/s;->m(I[B)D

    move-result-wide v0

    invoke-static {v14, v4, v5, v0, v1}, Lcom/google/android/gms/internal/clearcut/g3;->d(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_f
    or-int v1, v8, v23

    :goto_10
    move v8, v1

    goto :goto_e

    :cond_f
    :goto_11
    move/from16 v6, p5

    move-object/from16 v30, v9

    move-object/from16 v21, v10

    move v9, v12

    move-object v15, v14

    goto/16 :goto_18

    :cond_10
    move-wide/from16 v31, v12

    move-object/from16 v13, p2

    move/from16 v12, v19

    move-object/from16 v19, v5

    move-wide/from16 v4, v31

    const/16 v1, 0x1b

    if-ne v10, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    invoke-virtual {v9, v14, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/a1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/clearcut/a1;->q()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0xa

    goto :goto_12

    :cond_11
    shl-int/lit8 v1, v1, 0x1

    :goto_12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/clearcut/a1;->W(I)Lcom/google/android/gms/internal/clearcut/a1;

    move-result-object v0

    invoke-virtual {v9, v14, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_12
    move-object v5, v0

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/clearcut/b2;->w(I)Lcom/google/android/gms/internal/clearcut/o2;

    move-result-object v0

    move v1, v12

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v10, p3

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/clearcut/b2;->j(Lcom/google/android/gms/internal/clearcut/o2;I[BIILcom/google/android/gms/internal/clearcut/a1;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    move-object v6, v10

    :goto_13
    move/from16 v1, p5

    move v2, v12

    move-object v12, v13

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_0

    :cond_13
    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v20, v12

    move-object v15, v14

    move-object/from16 v21, v22

    move v14, v2

    goto/16 :goto_14

    :cond_14
    const/16 v1, 0x31

    if-gt v10, v1, :cond_15

    move/from16 p3, v10

    move/from16 v1, v20

    move-object/from16 v20, v9

    int-to-long v9, v1

    move v1, v0

    move-object/from16 v0, p0

    move/from16 v23, v1

    move-object/from16 v1, p1

    move/from16 v24, v2

    move-object/from16 v2, p2

    move/from16 v25, v3

    move/from16 v3, v24

    move-wide/from16 v26, v4

    move-object/from16 v5, v22

    move/from16 v4, p4

    move-object v15, v5

    move v5, v12

    move/from16 v22, v6

    move/from16 v6, v25

    move/from16 v28, v7

    move/from16 v7, v23

    move/from16 v29, v8

    move/from16 v8, v22

    move-object/from16 v30, v20

    move/from16 v11, p3

    move/from16 v20, v12

    move-wide/from16 v12, v26

    move-object/from16 v21, v15

    move-object v15, v14

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/clearcut/b2;->n(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    move/from16 v14, v24

    if-ne v0, v14, :cond_18

    goto/16 :goto_15

    :cond_15
    move/from16 v23, v0

    move/from16 v25, v3

    move-wide/from16 v26, v4

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 p3, v10

    move-object v15, v14

    move/from16 v1, v20

    move-object/from16 v21, v22

    move v14, v2

    move/from16 v22, v6

    move/from16 v20, v12

    const/16 v0, 0x32

    move/from16 v9, p3

    move/from16 v7, v23

    if-ne v9, v0, :cond_17

    const/4 v0, 0x2

    if-eq v7, v0, :cond_16

    :goto_14
    move/from16 v1, p5

    goto :goto_16

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v22

    move-wide/from16 v6, v26

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/clearcut/b2;->t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/t;)V

    throw v17

    :cond_17
    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v14

    move/from16 v4, p4

    move/from16 v5, v20

    move/from16 v6, v25

    move-wide/from16 v10, v26

    move/from16 v12, v22

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/clearcut/b2;->m(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    if-ne v0, v14, :cond_18

    :goto_15
    move v2, v0

    move/from16 v1, p5

    goto :goto_17

    :cond_18
    move/from16 v1, p5

    move/from16 v9, v20

    move/from16 v7, v28

    move/from16 v8, v29

    goto :goto_1a

    :cond_19
    move-object/from16 v21, v4

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v9

    move-object v15, v14

    move/from16 v20, v19

    move v14, v2

    move-object/from16 v19, v5

    :goto_16
    move v2, v14

    :goto_17
    move v6, v1

    move/from16 v9, v20

    move/from16 v7, v28

    move/from16 v8, v29

    :goto_18
    if-ne v9, v6, :cond_1b

    if-nez v6, :cond_1a

    goto :goto_19

    :cond_1a
    move v0, v2

    move v1, v6

    move v2, v9

    goto :goto_1b

    .line 5
    :cond_1b
    :goto_19
    move-object v0, v15

    check-cast v0, Lcom/google/android/gms/internal/clearcut/v0;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    move-object/from16 v3, v21

    if-ne v1, v3, :cond_1c

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/clearcut/b3;

    invoke-direct {v1}, Lcom/google/android/gms/internal/clearcut/b3;-><init>()V

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/internal/clearcut/v0;->zzjp:Lcom/google/android/gms/internal/clearcut/b3;

    :cond_1c
    move-object v4, v1

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/clearcut/s;->c(I[BIILcom/google/android/gms/internal/clearcut/b3;Lcom/google/android/gms/internal/clearcut/t;)I

    move-result v0

    move v1, v6

    :goto_1a
    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v6, p6

    move-object v11, v6

    move v2, v9

    move-object v14, v15

    move-object/from16 v9, v30

    const/4 v10, -0x1

    move-object/from16 v15, p0

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v19, v5

    move/from16 v28, v7

    move/from16 v29, v8

    move-object/from16 v30, v9

    move-object v15, v14

    :goto_1b
    const/4 v3, -0x1

    if-eq v7, v3, :cond_1e

    int-to-long v3, v7

    move-object/from16 v5, v30

    .line 9
    invoke-virtual {v5, v15, v3, v4, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1e
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/android/gms/internal/clearcut/b2;->j:[I

    if-eqz v4, :cond_23

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v5, :cond_23

    aget v7, v4, v6

    aget v8, v19, v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v8

    and-int v8, v8, v18

    int-to-long v8, v8

    invoke-static {v8, v9, v15}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1f

    goto :goto_1e

    :cond_1f
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/clearcut/b2;->y(I)Lcom/google/android/gms/internal/clearcut/z0;

    move-result-object v9

    if-nez v9, :cond_20

    goto :goto_1e

    :cond_20
    iget-object v10, v3, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    invoke-interface {v10, v8}, Lcom/google/android/gms/internal/clearcut/s1;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    move-result-object v8

    .line 10
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    invoke-interface {v10}, Lcom/google/android/gms/internal/clearcut/s1;->o()V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/clearcut/r1;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/google/android/gms/internal/clearcut/z0;->j(I)Lcom/google/android/gms/internal/clearcut/y0;

    move-result-object v10

    if-eqz v10, :cond_21

    goto :goto_1d

    :cond_21
    iget-object v0, v3, Lcom/google/android/gms/internal/clearcut/b2;->n:Lcom/google/android/gms/internal/clearcut/a3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/a3;->e()Lcom/google/android/gms/internal/clearcut/b3;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 11
    throw v17

    :cond_22
    :goto_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_23
    if-nez v1, :cond_25

    move/from16 v4, p4

    if-ne v0, v4, :cond_24

    goto :goto_1f

    .line 12
    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->b()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v0

    throw v0

    :cond_25
    move/from16 v4, p4

    if-gt v0, v4, :cond_26

    if-ne v2, v1, :cond_26

    :goto_1f
    return v0

    :cond_26
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->b()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/clearcut/b2;->v(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {v2, p3}, Lcom/google/android/gms/internal/clearcut/x0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/v0;

    move-result-object p3

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->C(ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/clearcut/g3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/clearcut/b2;->C(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/clearcut/f0;ILjava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object p4, p0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    .line 7
    .line 8
    invoke-interface {p4}, Lcom/google/android/gms/internal/clearcut/s1;->o()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p4, p3}, Lcom/google/android/gms/internal/clearcut/s1;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/clearcut/r1;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p4

    .line 30
    if-nez p4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Ljava/util/Map$Entry;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/google/android/gms/internal/clearcut/f0;->a:Lcom/google/android/gms/internal/clearcut/e0;

    .line 40
    .line 41
    const/4 p4, 0x2

    .line 42
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/clearcut/e0;->s(II)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public final t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/clearcut/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/clearcut/b2;->x(I)Ljava/lang/Object;

    sget-object p5, Lcom/google/android/gms/internal/clearcut/b2;->q:Lsun/misc/Unsafe;

    invoke-virtual {p5, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/b2;->p:Lcom/google/android/gms/internal/clearcut/s1;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/s1;->r(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/s1;->f()Lcom/google/android/gms/internal/clearcut/r1;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/clearcut/s1;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    invoke-virtual {p5, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/clearcut/s1;->o()V

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/clearcut/s1;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/clearcut/r1;

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/clearcut/s;->e([BILcom/google/android/gms/internal/clearcut/t;)I

    move-result p1

    iget p2, p8, Lcom/google/android/gms/internal/clearcut/t;->a:I

    if-ltz p2, :cond_2

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/b1;->a()Lcom/google/android/gms/internal/clearcut/b1;

    move-result-object p1

    throw p1
.end method

.method public final u(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr p2, v0

    .line 11
    int-to-long v0, p2

    .line 12
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-ne p2, p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public final v(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->h:Z

    .line 2
    .line 3
    const v1, 0xfffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v0, :cond_14

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/b2;->z(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    and-int v0, p1, v1

    .line 15
    .line 16
    int-to-long v0, v0

    .line 17
    const/high16 v4, 0xff00000

    .line 18
    .line 19
    and-int/2addr p1, v4

    .line 20
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    return v3

    .line 40
    :cond_0
    return v2

    .line 41
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    cmp-long v0, p1, v4

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    return v2

    .line 51
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return v3

    .line 58
    :cond_2
    return v2

    .line 59
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    cmp-long v0, p1, v4

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    return v3

    .line 68
    :cond_3
    return v2

    .line 69
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    return v3

    .line 76
    :cond_4
    return v2

    .line 77
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    return v3

    .line 84
    :cond_5
    return v2

    .line 85
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    return v3

    .line 92
    :cond_6
    return v2

    .line 93
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    .line 94
    .line 95
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/clearcut/c0;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-nez p1, :cond_7

    .line 104
    .line 105
    return v3

    .line 106
    :cond_7
    return v2

    .line 107
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_8

    .line 112
    .line 113
    return v3

    .line 114
    :cond_8
    return v2

    .line 115
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->w(JLjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    instance-of p2, p1, Ljava/lang/String;

    .line 120
    .line 121
    if-eqz p2, :cond_a

    .line 122
    .line 123
    check-cast p1, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_9

    .line 130
    .line 131
    return v3

    .line 132
    :cond_9
    return v2

    .line 133
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/clearcut/x;

    .line 134
    .line 135
    if-eqz p2, :cond_c

    .line 136
    .line 137
    sget-object p2, Lcom/google/android/gms/internal/clearcut/x;->b:Lcom/google/android/gms/internal/clearcut/c0;

    .line 138
    .line 139
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/clearcut/c0;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-nez p1, :cond_b

    .line 144
    .line 145
    return v3

    .line 146
    :cond_b
    return v2

    .line 147
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->t(JLjava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    return p1

    .line 158
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_d

    .line 163
    .line 164
    return v3

    .line 165
    :cond_d
    return v2

    .line 166
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 167
    .line 168
    .line 169
    move-result-wide p1

    .line 170
    cmp-long v0, p1, v4

    .line 171
    .line 172
    if-eqz v0, :cond_e

    .line 173
    .line 174
    return v3

    .line 175
    :cond_e
    return v2

    .line 176
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_f

    .line 181
    .line 182
    return v3

    .line 183
    :cond_f
    return v2

    .line 184
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 185
    .line 186
    .line 187
    move-result-wide p1

    .line 188
    cmp-long v0, p1, v4

    .line 189
    .line 190
    if-eqz v0, :cond_10

    .line 191
    .line 192
    return v3

    .line 193
    :cond_10
    return v2

    .line 194
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->s(JLjava/lang/Object;)J

    .line 195
    .line 196
    .line 197
    move-result-wide p1

    .line 198
    cmp-long v0, p1, v4

    .line 199
    .line 200
    if-eqz v0, :cond_11

    .line 201
    .line 202
    return v3

    .line 203
    :cond_11
    return v2

    .line 204
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->u(JLjava/lang/Object;)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    const/4 p2, 0x0

    .line 209
    cmpl-float p1, p1, p2

    .line 210
    .line 211
    if-eqz p1, :cond_12

    .line 212
    .line 213
    return v3

    .line 214
    :cond_12
    return v2

    .line 215
    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/clearcut/g3;->v(JLjava/lang/Object;)D

    .line 216
    .line 217
    .line 218
    move-result-wide p1

    .line 219
    const-wide/16 v0, 0x0

    .line 220
    .line 221
    cmpl-double v4, p1, v0

    .line 222
    .line 223
    if-eqz v4, :cond_13

    .line 224
    .line 225
    return v3

    .line 226
    :cond_13
    return v2

    .line 227
    :cond_14
    add-int/lit8 p1, p1, 0x2

    .line 228
    .line 229
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    .line 230
    .line 231
    aget p1, v0, p1

    .line 232
    .line 233
    ushr-int/lit8 v0, p1, 0x14

    .line 234
    .line 235
    shl-int v0, v3, v0

    .line 236
    .line 237
    and-int/2addr p1, v1

    .line 238
    int-to-long v4, p1

    .line 239
    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/clearcut/g3;->r(JLjava/lang/Object;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    and-int/2addr p1, v0

    .line 244
    if-eqz p1, :cond_15

    .line 245
    .line 246
    return v3

    .line 247
    :cond_15
    return v2

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(I)Lcom/google/android/gms/internal/clearcut/o2;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x4

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/clearcut/o2;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/j2;->c:Lcom/google/android/gms/internal/clearcut/j2;

    .line 15
    .line 16
    add-int/lit8 v2, p1, 0x1

    .line 17
    .line 18
    aget-object v2, v0, v2

    .line 19
    .line 20
    check-cast v2, Ljava/lang/Class;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/clearcut/j2;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/o2;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, v0, p1

    .line 27
    .line 28
    return-object v1
.end method

.method public final x(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final y(I)Lcom/google/android/gms/internal/clearcut/z0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/clearcut/z0<",
            "*>;"
        }
    .end annotation

    div-int/lit8 p1, p1, 0x4

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/clearcut/z0;

    return-object p1
.end method

.method public final z(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/b2;->a:[I

    aget p1, v0, p1

    return p1
.end method
