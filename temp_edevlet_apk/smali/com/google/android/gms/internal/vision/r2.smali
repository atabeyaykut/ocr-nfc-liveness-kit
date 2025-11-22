.class public final Lcom/google/android/gms/internal/vision/r2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/d3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/vision/d3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/vision/n2;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/vision/u2;

.field public final l:Lcom/google/android/gms/internal/vision/z1;

.field public final m:Lcom/google/android/gms/internal/vision/n3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/n3<",
            "**>;"
        }
    .end annotation
.end field

.field public final n:Lcom/google/android/gms/internal/vision/y0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/y0<",
            "*>;"
        }
    .end annotation
.end field

.field public final o:Lcom/google/android/gms/internal/vision/k2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/vision/r2;->p:[I

    invoke-static {}, Lcom/google/android/gms/internal/vision/t3;->m()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/n2;Z[IIILcom/google/android/gms/internal/vision/u2;Lcom/google/android/gms/internal/vision/z1;Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/k2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/vision/r2;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/vision/r2;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/vision/r2;->d:I

    instance-of p1, p5, Lcom/google/android/gms/internal/vision/i1;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/vision/r2;->g:Z

    if-eqz p13, :cond_0

    invoke-virtual {p13, p5}, Lcom/google/android/gms/internal/vision/y0;->d(Lcom/google/android/gms/internal/vision/n2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/vision/r2;->h:[I

    iput p8, p0, Lcom/google/android/gms/internal/vision/r2;->i:I

    iput p9, p0, Lcom/google/android/gms/internal/vision/r2;->j:I

    iput-object p10, p0, Lcom/google/android/gms/internal/vision/r2;->k:Lcom/google/android/gms/internal/vision/u2;

    iput-object p11, p0, Lcom/google/android/gms/internal/vision/r2;->l:Lcom/google/android/gms/internal/vision/z1;

    iput-object p12, p0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    iput-object p13, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    iput-object p5, p0, Lcom/google/android/gms/internal/vision/r2;->e:Lcom/google/android/gms/internal/vision/n2;

    iput-object p14, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    return-void
.end method

.method public static F(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static G(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/vision/i1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    .line 4
    .line 5
    sget-object v1, Lcom/google/android/gms/internal/vision/q3;->f:Lcom/google/android/gms/internal/vision/q3;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/vision/q3;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/q3;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static l(Lcom/google/android/gms/internal/vision/l2;Lcom/google/android/gms/internal/vision/u2;Lcom/google/android/gms/internal/vision/z1;Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/k2;)Lcom/google/android/gms/internal/vision/r2;
    .locals 33

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/b3;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/google/android/gms/internal/vision/b3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/b3;->a()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/b3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/android/gms/internal/vision/r2;->p:[I

    move/from16 v16, v5

    move-object v13, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v13

    move-object v13, v3

    move v3, v9

    move v9, v10

    :goto_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/b3;->e()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/b3;->c()Lcom/google/android/gms/internal/vision/n2;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    mul-int/lit8 v6, v12, 0x3

    new-array v6, v6, [I

    shl-int/2addr v12, v4

    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v7

    move/from16 v21, v15

    move/from16 v7, v16

    move/from16 v22, v19

    const/16 v16, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v7, v2, :cond_33

    add-int/lit8 v23, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_16

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_e

    :cond_17
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_e
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v25, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_f

    :cond_18
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_10

    :cond_19
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v9

    and-int/lit16 v9, v2, 0x400

    if-eqz v9, :cond_1a

    add-int/lit8 v9, v20, 0x1

    aput v16, v13, v20

    move/from16 v20, v9

    :cond_1a
    const/16 v9, 0x33

    move/from16 v29, v3

    sget-object v3, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    if-lt v15, v9, :cond_22

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v30, v9

    const v9, 0xd800

    if-lt v4, v9, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v9, v30

    const/16 v30, 0xd

    :goto_11
    add-int/lit8 v31, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move-object/from16 v32, v0

    const v0, 0xd800

    if-lt v9, v0, :cond_1b

    and-int/lit16 v0, v9, 0x1fff

    shl-int v0, v0, v30

    or-int/2addr v4, v0

    add-int/lit8 v30, v30, 0xd

    move/from16 v9, v31

    move-object/from16 v0, v32

    goto :goto_11

    :cond_1b
    shl-int v0, v9, v30

    or-int/2addr v4, v0

    move/from16 v9, v31

    goto :goto_12

    :cond_1c
    move-object/from16 v32, v0

    move/from16 v9, v30

    :goto_12
    add-int/lit8 v0, v15, -0x33

    move/from16 v30, v9

    const/16 v9, 0x9

    if-eq v0, v9, :cond_1f

    const/16 v9, 0x11

    if-ne v0, v9, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v9, 0xc

    if-ne v0, v9, :cond_1e

    if-nez v11, :cond_1e

    div-int/lit8 v0, v16, 0x3

    const/4 v9, 0x1

    shl-int/2addr v0, v9

    add-int/2addr v0, v9

    add-int/lit8 v9, v14, 0x1

    aget-object v14, v10, v14

    aput-object v14, v12, v0

    move v14, v9

    :cond_1e
    const/4 v9, 0x1

    goto :goto_14

    :cond_1f
    :goto_13
    div-int/lit8 v0, v16, 0x3

    const/4 v9, 0x1

    shl-int/2addr v0, v9

    add-int/2addr v0, v9

    add-int/lit8 v24, v14, 0x1

    aget-object v14, v10, v14

    aput-object v14, v12, v0

    move/from16 v14, v24

    :goto_14
    shl-int/lit8 v0, v4, 0x1

    aget-object v4, v10, v0

    instance-of v9, v4, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_20

    check-cast v4, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/google/android/gms/internal/vision/r2;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v10, v0

    :goto_15
    move-object v9, v6

    move/from16 v31, v7

    invoke-virtual {v3, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    add-int/lit8 v0, v0, 0x1

    aget-object v6, v10, v0

    instance-of v7, v6, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    check-cast v6, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/vision/r2;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    aput-object v6, v10, v0

    :goto_16
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v24, v14

    move/from16 v7, v30

    move-object v14, v1

    const/4 v1, 0x0

    goto/16 :goto_22

    :cond_22
    move-object/from16 v32, v0

    move-object v9, v6

    move/from16 v31, v7

    add-int/lit8 v0, v14, 0x1

    aget-object v6, v10, v14

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/vision/r2;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/16 v7, 0x31

    const/16 v14, 0x9

    if-eq v15, v14, :cond_2a

    const/16 v14, 0x11

    if-ne v15, v14, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v14, 0x1b

    if-eq v15, v14, :cond_29

    if-ne v15, v7, :cond_24

    goto :goto_19

    :cond_24
    const/16 v14, 0xc

    if-eq v15, v14, :cond_27

    const/16 v14, 0x1e

    if-eq v15, v14, :cond_27

    const/16 v14, 0x2c

    if-ne v15, v14, :cond_25

    goto :goto_18

    :cond_25
    const/16 v14, 0x32

    if-ne v15, v14, :cond_2b

    add-int/lit8 v14, v21, 0x1

    aput v16, v13, v21

    div-int/lit8 v21, v16, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v0, 0x1

    aget-object v0, v10, v0

    aput-object v0, v12, v21

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_26

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v0, v25, 0x1

    aget-object v25, v10, v25

    aput-object v25, v12, v21

    goto :goto_17

    :cond_26
    move/from16 v0, v25

    :goto_17
    move/from16 v21, v14

    goto :goto_1c

    :cond_27
    :goto_18
    if-nez v11, :cond_28

    div-int/lit8 v14, v16, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v25, v0, 0x1

    aget-object v0, v10, v0

    aput-object v0, v12, v14

    goto :goto_1a

    :cond_28
    const/16 v24, 0x1

    goto :goto_1c

    :cond_29
    :goto_19
    const/16 v24, 0x1

    div-int/lit8 v14, v16, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v25, v0, 0x1

    aget-object v0, v10, v0

    aput-object v0, v12, v14

    :goto_1a
    move-object v14, v8

    move/from16 v0, v25

    goto :goto_1d

    :cond_2a
    :goto_1b
    const/16 v24, 0x1

    div-int/lit8 v14, v16, 0x3

    shl-int/lit8 v14, v14, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v12, v14

    :cond_2b
    :goto_1c
    move-object v14, v8

    :goto_1d
    invoke-virtual {v3, v6}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v6, v7

    and-int/lit16 v7, v2, 0x1000

    const/16 v8, 0x1000

    if-ne v7, v8, :cond_2f

    const/16 v7, 0x11

    if-gt v15, v7, :cond_2f

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v8, 0xd800

    if-lt v4, v8, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    const/16 v17, 0xd

    :goto_1e
    add-int/lit8 v28, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2c

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v17

    or-int/2addr v4, v7

    add-int/lit8 v17, v17, 0xd

    move/from16 v7, v28

    goto :goto_1e

    :cond_2c
    shl-int v7, v7, v17

    or-int/2addr v4, v7

    goto :goto_1f

    :cond_2d
    move/from16 v28, v7

    :goto_1f
    const/4 v7, 0x1

    shl-int/lit8 v17, v5, 0x1

    div-int/lit8 v24, v4, 0x20

    add-int v24, v24, v17

    aget-object v7, v10, v24

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2e

    check-cast v7, Ljava/lang/reflect/Field;

    move/from16 v24, v0

    move-object v8, v14

    goto :goto_20

    :cond_2e
    check-cast v7, Ljava/lang/String;

    move-object v8, v14

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/vision/r2;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v10, v24

    move/from16 v24, v0

    :goto_20
    move-object v14, v1

    invoke-virtual {v3, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v4, v4, 0x20

    move v0, v1

    goto :goto_21

    :cond_2f
    move/from16 v24, v0

    move-object v8, v14

    move-object v14, v1

    const v0, 0xfffff

    move/from16 v28, v4

    const/4 v4, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v15, v1, :cond_30

    const/16 v1, 0x31

    if-gt v15, v1, :cond_30

    add-int/lit8 v1, v22, 0x1

    aput v6, v13, v22

    move/from16 v22, v1

    :cond_30
    move v1, v4

    move v4, v6

    move/from16 v7, v28

    :goto_22
    add-int/lit8 v3, v16, 0x1

    aput v31, v9, v16

    add-int/lit8 v6, v3, 0x1

    move/from16 v16, v5

    and-int/lit16 v5, v2, 0x200

    if-eqz v5, :cond_31

    const/high16 v5, 0x20000000

    goto :goto_23

    :cond_31
    const/4 v5, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_32
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v2, v5

    shl-int/lit8 v5, v15, 0x14

    or-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v9, v3

    add-int/lit8 v2, v6, 0x1

    shl-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    aput v0, v9, v6

    move-object v6, v9

    move-object v1, v14

    move/from16 v5, v16

    move/from16 v9, v23

    move/from16 v14, v24

    move/from16 v15, v27

    move/from16 v3, v29

    move-object/from16 v0, v32

    const/4 v4, 0x1

    move/from16 v16, v2

    move/from16 v2, v26

    goto/16 :goto_c

    :cond_33
    move-object/from16 v32, v0

    move/from16 v29, v3

    move/from16 v23, v9

    move/from16 v27, v15

    move-object v9, v6

    new-instance v0, Lcom/google/android/gms/internal/vision/r2;

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/gms/internal/vision/b3;->c()Lcom/google/android/gms/internal/vision/n2;

    move-result-object v10

    move-object v5, v0

    move-object v7, v12

    move/from16 v8, v29

    move/from16 v9, v23

    move-object v12, v13

    move/from16 v13, v27

    move/from16 v14, v19

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v5 .. v19}, Lcom/google/android/gms/internal/vision/r2;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/vision/n2;Z[IIILcom/google/android/gms/internal/vision/u2;Lcom/google/android/gms/internal/vision/z1;Lcom/google/android/gms/internal/vision/n3;Lcom/google/android/gms/internal/vision/y0;Lcom/google/android/gms/internal/vision/k2;)V

    return-object v0

    :cond_34
    check-cast v0, Lcom/google/android/gms/internal/vision/m3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/m3;->a()I

    const/4 v0, 0x0

    throw v0
.end method

.method public static n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static o(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V
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
    iget-object p2, p2, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/vision/t0;->n(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/vision/p0;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/vision/u0;->e(ILcom/google/android/gms/internal/vision/p0;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final A(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    aget v1, v1, p1

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, p3}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    invoke-static {v0, p3}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    move-result-object p3

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->y(IILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->y(IILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final B(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V
    .locals 21
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
    iget-boolean v4, v0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    iget-object v6, v4, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/c1;->i()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    check-cast v6, Ljava/util/Map$Entry;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 39
    .line 40
    array-length v8, v7

    .line 41
    const/4 v11, 0x0

    .line 42
    const v12, 0xfffff

    .line 43
    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    :goto_1
    if-ge v11, v8, :cond_7

    .line 47
    .line 48
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    .line 49
    .line 50
    .line 51
    move-result v14

    .line 52
    aget v15, v7, v11

    .line 53
    .line 54
    const/high16 v16, 0xff00000

    .line 55
    .line 56
    and-int v16, v14, v16

    .line 57
    .line 58
    ushr-int/lit8 v3, v16, 0x14

    .line 59
    .line 60
    const/16 v10, 0x11

    .line 61
    .line 62
    sget-object v9, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    .line 63
    .line 64
    if-gt v3, v10, :cond_2

    .line 65
    .line 66
    add-int/lit8 v10, v11, 0x2

    .line 67
    .line 68
    aget v10, v7, v10

    .line 69
    .line 70
    move-object/from16 v18, v6

    .line 71
    .line 72
    const v17, 0xfffff

    .line 73
    .line 74
    .line 75
    and-int v6, v10, v17

    .line 76
    .line 77
    if-eq v6, v12, :cond_1

    .line 78
    .line 79
    int-to-long v12, v6

    .line 80
    invoke-virtual {v9, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 81
    .line 82
    .line 83
    move-result v13

    .line 84
    move v12, v6

    .line 85
    :cond_1
    ushr-int/lit8 v6, v10, 0x14

    .line 86
    .line 87
    const/4 v10, 0x1

    .line 88
    shl-int v6, v10, v6

    .line 89
    .line 90
    move v10, v6

    .line 91
    move-object/from16 v6, v18

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object/from16 v18, v6

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    :goto_2
    if-eqz v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vision/y0;->c(Ljava/util/Map$Entry;)V

    .line 100
    .line 101
    .line 102
    if-ltz v15, :cond_4

    .line 103
    .line 104
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vision/y0;->e(Ljava/util/Map$Entry;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v6, :cond_3

    .line 112
    .line 113
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    check-cast v6, Ljava/util/Map$Entry;

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_3
    const/4 v6, 0x0

    .line 121
    goto :goto_2

    .line 122
    :cond_4
    const v17, 0xfffff

    .line 123
    .line 124
    .line 125
    and-int v14, v14, v17

    .line 126
    .line 127
    move-object/from16 v20, v4

    .line 128
    .line 129
    move-object/from16 v19, v5

    .line 130
    .line 131
    int-to-long v4, v14

    .line 132
    packed-switch v3, :pswitch_data_0

    .line 133
    .line 134
    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :pswitch_0
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_5

    .line 142
    .line 143
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v2, v15, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->k(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_9

    .line 155
    .line 156
    :pswitch_1
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_5

    .line 161
    .line 162
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 163
    .line 164
    .line 165
    move-result-wide v3

    .line 166
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->q(IJ)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_9

    .line 170
    .line 171
    :pswitch_2
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_5

    .line 176
    .line 177
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->r(II)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_9

    .line 185
    .line 186
    :pswitch_3
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_5

    .line 191
    .line 192
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v3

    .line 196
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->j(IJ)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_9

    .line 200
    .line 201
    :pswitch_4
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    if-eqz v3, :cond_5

    .line 206
    .line 207
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->c(II)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_9

    .line 215
    .line 216
    :pswitch_5
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    if-eqz v3, :cond_5

    .line 221
    .line 222
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->i(II)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_9

    .line 230
    .line 231
    :pswitch_6
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_5

    .line 236
    .line 237
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->p(II)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_9

    .line 245
    .line 246
    :pswitch_7
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_5

    .line 251
    .line 252
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    check-cast v3, Lcom/google/android/gms/internal/vision/p0;

    .line 257
    .line 258
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->e(ILcom/google/android/gms/internal/vision/p0;)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_9

    .line 262
    .line 263
    :pswitch_8
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_5

    .line 268
    .line 269
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-virtual {v2, v15, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->f(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_9

    .line 281
    .line 282
    :pswitch_9
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    if-eqz v3, :cond_5

    .line 287
    .line 288
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    invoke-static {v15, v3, v2}, Lcom/google/android/gms/internal/vision/r2;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_9

    .line 296
    .line 297
    :pswitch_a
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    if-eqz v3, :cond_5

    .line 302
    .line 303
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    check-cast v3, Ljava/lang/Boolean;

    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    .line 311
    .line 312
    move-result v3

    .line 313
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->h(IZ)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_9

    .line 317
    .line 318
    :pswitch_b
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    if-eqz v3, :cond_5

    .line 323
    .line 324
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->n(II)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_9

    .line 332
    .line 333
    :pswitch_c
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v3

    .line 337
    if-eqz v3, :cond_5

    .line 338
    .line 339
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v3

    .line 343
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->o(IJ)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :pswitch_d
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-eqz v3, :cond_5

    .line 353
    .line 354
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 355
    .line 356
    .line 357
    move-result v3

    .line 358
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->l(II)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_9

    .line 362
    .line 363
    :pswitch_e
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    if-eqz v3, :cond_5

    .line 368
    .line 369
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->m(IJ)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_9

    .line 377
    .line 378
    :pswitch_f
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v3

    .line 382
    if-eqz v3, :cond_5

    .line 383
    .line 384
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v3

    .line 388
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->d(IJ)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_9

    .line 392
    .line 393
    :pswitch_10
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result v3

    .line 397
    if-eqz v3, :cond_5

    .line 398
    .line 399
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    check-cast v3, Ljava/lang/Float;

    .line 404
    .line 405
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 406
    .line 407
    .line 408
    move-result v3

    .line 409
    invoke-virtual {v2, v3, v15}, Lcom/google/android/gms/internal/vision/u0;->a(FI)V

    .line 410
    .line 411
    .line 412
    goto/16 :goto_9

    .line 413
    .line 414
    :pswitch_11
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    if-eqz v3, :cond_5

    .line 419
    .line 420
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v3

    .line 424
    check-cast v3, Ljava/lang/Double;

    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 427
    .line 428
    .line 429
    move-result-wide v3

    .line 430
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->b(ID)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_9

    .line 434
    .line 435
    :pswitch_12
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {v0, v2, v15, v3, v11}, Lcom/google/android/gms/internal/vision/r2;->s(Lcom/google/android/gms/internal/vision/u0;ILjava/lang/Object;I)V

    .line 440
    .line 441
    .line 442
    goto/16 :goto_9

    .line 443
    .line 444
    :pswitch_13
    aget v3, v7, v11

    .line 445
    .line 446
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    check-cast v4, Ljava/util/List;

    .line 451
    .line 452
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 453
    .line 454
    .line 455
    move-result-object v5

    .line 456
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/vision/e3;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Lcom/google/android/gms/internal/vision/d3;)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_9

    .line 460
    .line 461
    :pswitch_14
    aget v3, v7, v11

    .line 462
    .line 463
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v4

    .line 467
    check-cast v4, Ljava/util/List;

    .line 468
    .line 469
    const/4 v10, 0x1

    .line 470
    goto/16 :goto_3

    .line 471
    .line 472
    :pswitch_15
    const/4 v10, 0x1

    .line 473
    aget v3, v7, v11

    .line 474
    .line 475
    goto/16 :goto_4

    .line 476
    .line 477
    :pswitch_16
    const/4 v10, 0x1

    .line 478
    aget v3, v7, v11

    .line 479
    .line 480
    goto/16 :goto_5

    .line 481
    .line 482
    :pswitch_17
    const/4 v10, 0x1

    .line 483
    aget v3, v7, v11

    .line 484
    .line 485
    goto/16 :goto_6

    .line 486
    .line 487
    :pswitch_18
    const/4 v10, 0x1

    .line 488
    aget v3, v7, v11

    .line 489
    .line 490
    goto/16 :goto_7

    .line 491
    .line 492
    :pswitch_19
    const/4 v10, 0x1

    .line 493
    aget v3, v7, v11

    .line 494
    .line 495
    goto/16 :goto_8

    .line 496
    .line 497
    :pswitch_1a
    const/4 v10, 0x1

    .line 498
    aget v3, v7, v11

    .line 499
    .line 500
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v4

    .line 504
    check-cast v4, Ljava/util/List;

    .line 505
    .line 506
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_9

    .line 510
    .line 511
    :pswitch_1b
    const/4 v10, 0x1

    .line 512
    aget v3, v7, v11

    .line 513
    .line 514
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/util/List;

    .line 519
    .line 520
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_9

    .line 524
    .line 525
    :pswitch_1c
    const/4 v10, 0x1

    .line 526
    aget v3, v7, v11

    .line 527
    .line 528
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v4

    .line 532
    check-cast v4, Ljava/util/List;

    .line 533
    .line 534
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 535
    .line 536
    .line 537
    goto/16 :goto_9

    .line 538
    .line 539
    :pswitch_1d
    const/4 v10, 0x1

    .line 540
    aget v3, v7, v11

    .line 541
    .line 542
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v4

    .line 546
    check-cast v4, Ljava/util/List;

    .line 547
    .line 548
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 549
    .line 550
    .line 551
    goto/16 :goto_9

    .line 552
    .line 553
    :pswitch_1e
    const/4 v10, 0x1

    .line 554
    aget v3, v7, v11

    .line 555
    .line 556
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    check-cast v4, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 563
    .line 564
    .line 565
    goto/16 :goto_9

    .line 566
    .line 567
    :pswitch_1f
    const/4 v10, 0x1

    .line 568
    aget v3, v7, v11

    .line 569
    .line 570
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    check-cast v4, Ljava/util/List;

    .line 575
    .line 576
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 577
    .line 578
    .line 579
    goto :goto_9

    .line 580
    :pswitch_20
    const/4 v10, 0x1

    .line 581
    aget v3, v7, v11

    .line 582
    .line 583
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    check-cast v4, Ljava/util/List;

    .line 588
    .line 589
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 590
    .line 591
    .line 592
    goto :goto_9

    .line 593
    :pswitch_21
    const/4 v10, 0x1

    .line 594
    aget v3, v7, v11

    .line 595
    .line 596
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    check-cast v4, Ljava/util/List;

    .line 601
    .line 602
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 603
    .line 604
    .line 605
    goto :goto_9

    .line 606
    :pswitch_22
    aget v3, v7, v11

    .line 607
    .line 608
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v4

    .line 612
    check-cast v4, Ljava/util/List;

    .line 613
    .line 614
    const/4 v10, 0x0

    .line 615
    :goto_3
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 616
    .line 617
    .line 618
    goto :goto_9

    .line 619
    :pswitch_23
    const/4 v10, 0x0

    .line 620
    aget v3, v7, v11

    .line 621
    .line 622
    :goto_4
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Ljava/util/List;

    .line 627
    .line 628
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 629
    .line 630
    .line 631
    goto :goto_9

    .line 632
    :pswitch_24
    const/4 v10, 0x0

    .line 633
    aget v3, v7, v11

    .line 634
    .line 635
    :goto_5
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    check-cast v4, Ljava/util/List;

    .line 640
    .line 641
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 642
    .line 643
    .line 644
    goto :goto_9

    .line 645
    :pswitch_25
    const/4 v10, 0x0

    .line 646
    aget v3, v7, v11

    .line 647
    .line 648
    :goto_6
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    check-cast v4, Ljava/util/List;

    .line 653
    .line 654
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :pswitch_26
    const/4 v10, 0x0

    .line 659
    aget v3, v7, v11

    .line 660
    .line 661
    :goto_7
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v4

    .line 665
    check-cast v4, Ljava/util/List;

    .line 666
    .line 667
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 668
    .line 669
    .line 670
    goto :goto_9

    .line 671
    :pswitch_27
    const/4 v10, 0x0

    .line 672
    aget v3, v7, v11

    .line 673
    .line 674
    :goto_8
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v4

    .line 678
    check-cast v4, Ljava/util/List;

    .line 679
    .line 680
    invoke-static {v3, v4, v2, v10}, Lcom/google/android/gms/internal/vision/e3;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 681
    .line 682
    .line 683
    :cond_5
    :goto_9
    const/4 v14, 0x0

    .line 684
    goto/16 :goto_a

    .line 685
    .line 686
    :pswitch_28
    aget v3, v7, v11

    .line 687
    .line 688
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 689
    .line 690
    .line 691
    move-result-object v4

    .line 692
    check-cast v4, Ljava/util/List;

    .line 693
    .line 694
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/vision/e3;->p(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;)V

    .line 695
    .line 696
    .line 697
    goto :goto_9

    .line 698
    :pswitch_29
    aget v3, v7, v11

    .line 699
    .line 700
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 701
    .line 702
    .line 703
    move-result-object v4

    .line 704
    check-cast v4, Ljava/util/List;

    .line 705
    .line 706
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    invoke-static {v3, v4, v2, v5}, Lcom/google/android/gms/internal/vision/e3;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Lcom/google/android/gms/internal/vision/d3;)V

    .line 711
    .line 712
    .line 713
    goto :goto_9

    .line 714
    :pswitch_2a
    aget v3, v7, v11

    .line 715
    .line 716
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v4

    .line 720
    check-cast v4, Ljava/util/List;

    .line 721
    .line 722
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/vision/e3;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;)V

    .line 723
    .line 724
    .line 725
    goto :goto_9

    .line 726
    :pswitch_2b
    aget v3, v7, v11

    .line 727
    .line 728
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    check-cast v4, Ljava/util/List;

    .line 733
    .line 734
    const/4 v14, 0x0

    .line 735
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 736
    .line 737
    .line 738
    goto/16 :goto_a

    .line 739
    .line 740
    :pswitch_2c
    const/4 v14, 0x0

    .line 741
    aget v3, v7, v11

    .line 742
    .line 743
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    check-cast v4, Ljava/util/List;

    .line 748
    .line 749
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 750
    .line 751
    .line 752
    goto/16 :goto_a

    .line 753
    .line 754
    :pswitch_2d
    const/4 v14, 0x0

    .line 755
    aget v3, v7, v11

    .line 756
    .line 757
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    check-cast v4, Ljava/util/List;

    .line 762
    .line 763
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 764
    .line 765
    .line 766
    goto/16 :goto_a

    .line 767
    .line 768
    :pswitch_2e
    const/4 v14, 0x0

    .line 769
    aget v3, v7, v11

    .line 770
    .line 771
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v4

    .line 775
    check-cast v4, Ljava/util/List;

    .line 776
    .line 777
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 778
    .line 779
    .line 780
    goto/16 :goto_a

    .line 781
    .line 782
    :pswitch_2f
    const/4 v14, 0x0

    .line 783
    aget v3, v7, v11

    .line 784
    .line 785
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    check-cast v4, Ljava/util/List;

    .line 790
    .line 791
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 792
    .line 793
    .line 794
    goto/16 :goto_a

    .line 795
    .line 796
    :pswitch_30
    const/4 v14, 0x0

    .line 797
    aget v3, v7, v11

    .line 798
    .line 799
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    check-cast v4, Ljava/util/List;

    .line 804
    .line 805
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 806
    .line 807
    .line 808
    goto/16 :goto_a

    .line 809
    .line 810
    :pswitch_31
    const/4 v14, 0x0

    .line 811
    aget v3, v7, v11

    .line 812
    .line 813
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    check-cast v4, Ljava/util/List;

    .line 818
    .line 819
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 820
    .line 821
    .line 822
    goto/16 :goto_a

    .line 823
    .line 824
    :pswitch_32
    const/4 v14, 0x0

    .line 825
    aget v3, v7, v11

    .line 826
    .line 827
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v4

    .line 831
    check-cast v4, Ljava/util/List;

    .line 832
    .line 833
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 834
    .line 835
    .line 836
    goto/16 :goto_a

    .line 837
    .line 838
    :pswitch_33
    const/4 v14, 0x0

    .line 839
    and-int v3, v10, v13

    .line 840
    .line 841
    if-eqz v3, :cond_6

    .line 842
    .line 843
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v3

    .line 847
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 848
    .line 849
    .line 850
    move-result-object v4

    .line 851
    invoke-virtual {v2, v15, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->k(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 852
    .line 853
    .line 854
    goto/16 :goto_a

    .line 855
    .line 856
    :pswitch_34
    const/4 v14, 0x0

    .line 857
    and-int v3, v10, v13

    .line 858
    .line 859
    if-eqz v3, :cond_6

    .line 860
    .line 861
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 862
    .line 863
    .line 864
    move-result-wide v3

    .line 865
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->q(IJ)V

    .line 866
    .line 867
    .line 868
    goto/16 :goto_a

    .line 869
    .line 870
    :pswitch_35
    const/4 v14, 0x0

    .line 871
    and-int v3, v10, v13

    .line 872
    .line 873
    if-eqz v3, :cond_6

    .line 874
    .line 875
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->r(II)V

    .line 880
    .line 881
    .line 882
    goto/16 :goto_a

    .line 883
    .line 884
    :pswitch_36
    const/4 v14, 0x0

    .line 885
    and-int v3, v10, v13

    .line 886
    .line 887
    if-eqz v3, :cond_6

    .line 888
    .line 889
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 890
    .line 891
    .line 892
    move-result-wide v3

    .line 893
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->j(IJ)V

    .line 894
    .line 895
    .line 896
    goto/16 :goto_a

    .line 897
    .line 898
    :pswitch_37
    const/4 v14, 0x0

    .line 899
    and-int v3, v10, v13

    .line 900
    .line 901
    if-eqz v3, :cond_6

    .line 902
    .line 903
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 904
    .line 905
    .line 906
    move-result v3

    .line 907
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->c(II)V

    .line 908
    .line 909
    .line 910
    goto/16 :goto_a

    .line 911
    .line 912
    :pswitch_38
    const/4 v14, 0x0

    .line 913
    and-int v3, v10, v13

    .line 914
    .line 915
    if-eqz v3, :cond_6

    .line 916
    .line 917
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 918
    .line 919
    .line 920
    move-result v3

    .line 921
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->i(II)V

    .line 922
    .line 923
    .line 924
    goto/16 :goto_a

    .line 925
    .line 926
    :pswitch_39
    const/4 v14, 0x0

    .line 927
    and-int v3, v10, v13

    .line 928
    .line 929
    if-eqz v3, :cond_6

    .line 930
    .line 931
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 932
    .line 933
    .line 934
    move-result v3

    .line 935
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->p(II)V

    .line 936
    .line 937
    .line 938
    goto/16 :goto_a

    .line 939
    .line 940
    :pswitch_3a
    const/4 v14, 0x0

    .line 941
    and-int v3, v10, v13

    .line 942
    .line 943
    if-eqz v3, :cond_6

    .line 944
    .line 945
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v3

    .line 949
    check-cast v3, Lcom/google/android/gms/internal/vision/p0;

    .line 950
    .line 951
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->e(ILcom/google/android/gms/internal/vision/p0;)V

    .line 952
    .line 953
    .line 954
    goto/16 :goto_a

    .line 955
    .line 956
    :pswitch_3b
    const/4 v14, 0x0

    .line 957
    and-int v3, v10, v13

    .line 958
    .line 959
    if-eqz v3, :cond_6

    .line 960
    .line 961
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    invoke-virtual {v2, v15, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->f(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 970
    .line 971
    .line 972
    goto/16 :goto_a

    .line 973
    .line 974
    :pswitch_3c
    const/4 v14, 0x0

    .line 975
    and-int v3, v10, v13

    .line 976
    .line 977
    if-eqz v3, :cond_6

    .line 978
    .line 979
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    move-result-object v3

    .line 983
    invoke-static {v15, v3, v2}, Lcom/google/android/gms/internal/vision/r2;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 984
    .line 985
    .line 986
    goto/16 :goto_a

    .line 987
    .line 988
    :pswitch_3d
    const/4 v14, 0x0

    .line 989
    and-int v3, v13, v10

    .line 990
    .line 991
    if-eqz v3, :cond_6

    .line 992
    .line 993
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result v3

    .line 997
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->h(IZ)V

    .line 998
    .line 999
    .line 1000
    goto :goto_a

    .line 1001
    :pswitch_3e
    const/4 v14, 0x0

    .line 1002
    and-int v3, v10, v13

    .line 1003
    .line 1004
    if-eqz v3, :cond_6

    .line 1005
    .line 1006
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1007
    .line 1008
    .line 1009
    move-result v3

    .line 1010
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->n(II)V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_a

    .line 1014
    :pswitch_3f
    const/4 v14, 0x0

    .line 1015
    and-int v3, v10, v13

    .line 1016
    .line 1017
    if-eqz v3, :cond_6

    .line 1018
    .line 1019
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1020
    .line 1021
    .line 1022
    move-result-wide v3

    .line 1023
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->o(IJ)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_a

    .line 1027
    :pswitch_40
    const/4 v14, 0x0

    .line 1028
    and-int v3, v10, v13

    .line 1029
    .line 1030
    if-eqz v3, :cond_6

    .line 1031
    .line 1032
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1033
    .line 1034
    .line 1035
    move-result v3

    .line 1036
    invoke-virtual {v2, v15, v3}, Lcom/google/android/gms/internal/vision/u0;->l(II)V

    .line 1037
    .line 1038
    .line 1039
    goto :goto_a

    .line 1040
    :pswitch_41
    const/4 v14, 0x0

    .line 1041
    and-int v3, v10, v13

    .line 1042
    .line 1043
    if-eqz v3, :cond_6

    .line 1044
    .line 1045
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v3

    .line 1049
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->m(IJ)V

    .line 1050
    .line 1051
    .line 1052
    goto :goto_a

    .line 1053
    :pswitch_42
    const/4 v14, 0x0

    .line 1054
    and-int v3, v10, v13

    .line 1055
    .line 1056
    if-eqz v3, :cond_6

    .line 1057
    .line 1058
    invoke-virtual {v9, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v3

    .line 1062
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->d(IJ)V

    .line 1063
    .line 1064
    .line 1065
    goto :goto_a

    .line 1066
    :pswitch_43
    const/4 v14, 0x0

    .line 1067
    and-int v3, v13, v10

    .line 1068
    .line 1069
    if-eqz v3, :cond_6

    .line 1070
    .line 1071
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {v2, v3, v15}, Lcom/google/android/gms/internal/vision/u0;->a(FI)V

    .line 1076
    .line 1077
    .line 1078
    goto :goto_a

    .line 1079
    :pswitch_44
    const/4 v14, 0x0

    .line 1080
    and-int v3, v13, v10

    .line 1081
    .line 1082
    if-eqz v3, :cond_6

    .line 1083
    .line 1084
    invoke-static {v4, v5, v1}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 1085
    .line 1086
    .line 1087
    move-result-wide v3

    .line 1088
    invoke-virtual {v2, v15, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->b(ID)V

    .line 1089
    .line 1090
    .line 1091
    :cond_6
    :goto_a
    add-int/lit8 v11, v11, 0x3

    .line 1092
    .line 1093
    move-object/from16 v5, v19

    .line 1094
    .line 1095
    move-object/from16 v4, v20

    .line 1096
    .line 1097
    goto/16 :goto_1

    .line 1098
    .line 1099
    :cond_7
    move-object/from16 v20, v4

    .line 1100
    .line 1101
    move-object/from16 v19, v5

    .line 1102
    .line 1103
    move-object/from16 v18, v6

    .line 1104
    .line 1105
    :goto_b
    if-eqz v6, :cond_9

    .line 1106
    .line 1107
    move-object/from16 v3, v19

    .line 1108
    .line 1109
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/vision/y0;->e(Ljava/util/Map$Entry;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 1113
    .line 1114
    .line 1115
    move-result v4

    .line 1116
    if-eqz v4, :cond_8

    .line 1117
    .line 1118
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v4

    .line 1122
    move-object v6, v4

    .line 1123
    check-cast v6, Ljava/util/Map$Entry;

    .line 1124
    .line 1125
    move-object/from16 v19, v3

    .line 1126
    .line 1127
    goto :goto_b

    .line 1128
    :cond_8
    move-object/from16 v19, v3

    .line 1129
    .line 1130
    const/4 v6, 0x0

    .line 1131
    goto :goto_b

    .line 1132
    :cond_9
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    .line 1133
    .line 1134
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/vision/n3;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 1139
    .line 1140
    .line 1141
    return-void

    .line 1142
    nop

    .line 1143
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

.method public final C(I)Lcom/google/android/gms/internal/vision/n1;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/vision/n1;

    return-object p1
.end method

.method public final D(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final E(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/vision/r2;->i:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->h:[I

    iget v2, p0, Lcom/google/android/gms/internal/vision/r2;->j:I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/vision/k2;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/vision/r2;->l:Lcom/google/android/gms/internal/vision/z1;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/vision/z1;->b(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->h(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->g(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/high16 v2, 0xff00000

    const v3, 0xfffff

    iget-boolean v5, v0, Lcom/google/android/gms/internal/vision/r2;->g:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    iget-object v7, v0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    sget-object v8, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    iget-object v9, v0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v11

    and-int v12, v11, v2

    ushr-int/lit8 v12, v12, 0x14

    aget v13, v9, v5

    and-int/2addr v11, v3

    int-to-long v14, v11

    sget-object v11, Lcom/google/android/gms/internal/vision/d1;->b:Lcom/google/android/gms/internal/vision/d1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/vision/d1;->a()I

    move-result v11

    if-lt v12, v11, :cond_0

    sget-object v11, Lcom/google/android/gms/internal/vision/d1;->c:Lcom/google/android/gms/internal/vision/d1;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/vision/d1;->a()I

    move-result v11

    if-gt v12, v11, :cond_0

    add-int/lit8 v11, v5, 0x2

    aget v11, v9, v11

    :cond_0
    packed-switch v12, :pswitch_data_0

    goto/16 :goto_15

    :pswitch_0
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/vision/p0;

    if-eqz v12, :cond_1

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_c

    :pswitch_b
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_d

    :pswitch_c
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_e

    :pswitch_d
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v11

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_10

    :pswitch_f
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v11

    goto/16 :goto_11

    :pswitch_10
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_12

    :pswitch_11
    invoke-virtual {v0, v13, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto/16 :goto_13

    :pswitch_12
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Lcom/google/android/gms/internal/vision/k2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto/16 :goto_14

    :pswitch_13
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/e3;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_14
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->u(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->G(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->x(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->D(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->P(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1b
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1c
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1d
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->A(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1e
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->o(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_1f
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->d(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_20
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    goto :goto_1

    :pswitch_21
    invoke-virtual {v8, v1, v14, v15}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v11

    if-lez v11, :cond_2

    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->F(I)I

    move-result v12

    invoke-static {v11}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v13, v11

    add-int/2addr v10, v13

    goto/16 :goto_15

    :pswitch_22
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->t(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_23
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->F(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_24
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->w(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_25
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->C(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_26
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->m(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_27
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/e3;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_28
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->b(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_29
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->O(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2a
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->z(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2b
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->s(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2c
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->l(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2d
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->I(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2e
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/r2;->o(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/e3;->L(ILjava/util/List;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_2f
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_2
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/vision/n2;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v12

    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/t0;->z(ILcom/google/android/gms/internal/vision/n2;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_30
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_3
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/t0;->L(IJ)I

    move-result v11

    goto/16 :goto_14

    :pswitch_31
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v11

    :goto_4
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->Q(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_32
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_5
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->P(I)I

    move-result v11

    goto/16 :goto_14

    :pswitch_33
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_6
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->S(I)I

    move-result v11

    goto/16 :goto_14

    :pswitch_34
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v11

    :goto_7
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->T(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_35
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v11

    :goto_8
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->N(II)I

    move-result v11

    goto/16 :goto_14

    :pswitch_36
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_9
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_b

    :pswitch_37
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_a
    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v12

    invoke-static {v13, v12, v11}, Lcom/google/android/gms/internal/vision/e3;->a(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)I

    move-result v11

    goto/16 :goto_14

    :pswitch_38
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/google/android/gms/internal/vision/p0;

    if-eqz v12, :cond_1

    :goto_b
    check-cast v11, Lcom/google/android/gms/internal/vision/p0;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->y(ILcom/google/android/gms/internal/vision/p0;)I

    move-result v11

    goto/16 :goto_14

    :cond_1
    check-cast v11, Ljava/lang/String;

    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->r(ILjava/lang/String;)I

    move-result v11

    goto :goto_14

    :pswitch_39
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_c
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->w(I)I

    move-result v11

    goto :goto_14

    :pswitch_3a
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_d
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->R(I)I

    move-result v11

    goto :goto_14

    :pswitch_3b
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_e
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->M(I)I

    move-result v11

    goto :goto_14

    :pswitch_3c
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    move-result v11

    :goto_f
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/vision/t0;->K(II)I

    move-result v11

    goto :goto_14

    :pswitch_3d
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_10
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/t0;->G(IJ)I

    move-result v11

    goto :goto_14

    :pswitch_3e
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v14, v15, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    move-result-wide v11

    :goto_11
    invoke-static {v13, v11, v12}, Lcom/google/android/gms/internal/vision/t0;->D(IJ)I

    move-result v11

    goto :goto_14

    :pswitch_3f
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_12
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->x(I)I

    move-result v11

    goto :goto_14

    :pswitch_40
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_13
    invoke-static {v13}, Lcom/google/android/gms/internal/vision/t0;->q(I)I

    move-result v11

    :goto_14
    add-int/2addr v10, v11

    :cond_2
    :goto_15
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_0

    .line 1
    :cond_3
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/vision/n3;->j(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v10

    return v1

    :cond_4
    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0xfffff

    .line 2
    :goto_16
    array-length v13, v9

    if-ge v5, v13, :cond_a

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v13

    aget v14, v9, v5

    and-int v15, v13, v2

    ushr-int/lit8 v15, v15, 0x14

    const/16 v2, 0x11

    if-gt v15, v2, :cond_5

    add-int/lit8 v2, v5, 0x2

    aget v2, v9, v2

    and-int v4, v2, v3

    ushr-int/lit8 v2, v2, 0x14

    const/16 v17, 0x1

    shl-int v2, v17, v2

    if-eq v4, v12, :cond_6

    int-to-long v11, v4

    invoke-virtual {v8, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v12, v4

    goto :goto_17

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_17
    and-int v4, v13, v3

    int-to-long v3, v4

    packed-switch v15, :pswitch_data_1

    goto/16 :goto_28

    :pswitch_41
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_19

    :pswitch_42
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_1a

    :pswitch_43
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1b

    :pswitch_44
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1c

    :pswitch_45
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_1d

    :pswitch_46
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1e

    :pswitch_47
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_1f

    :pswitch_48
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_20

    :pswitch_49
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_21

    :pswitch_4a
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/vision/p0;

    if-eqz v3, :cond_7

    goto/16 :goto_22

    :pswitch_4b
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->w(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4c
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->R(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4d
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->M(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4e
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    move-result v2

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->K(II)I

    move-result v2

    goto/16 :goto_23

    :pswitch_4f
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->G(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_50
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->D(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_51
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->x(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_52
    invoke-virtual {v0, v14, v5, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->q(I)I

    move-result v2

    goto/16 :goto_23

    :pswitch_53
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Lcom/google/android/gms/internal/vision/k2;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_23

    :pswitch_54
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/e3;->n(ILjava/util/List;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_55
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->u(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_56
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->G(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_57
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_58
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_59
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->x(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_5a
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto/16 :goto_18

    :pswitch_5b
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->P(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5c
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5d
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5e
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->A(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_5f
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->o(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_60
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->d(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_61
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->J(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    goto :goto_18

    :pswitch_62
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/e3;->M(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_8

    :goto_18
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->F(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/t0;->O(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    add-int/2addr v10, v4

    goto/16 :goto_28

    :pswitch_63
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->t(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_64
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->F(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_65
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->w(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_66
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->C(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_67
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->m(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_68
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/e3;->c(ILjava/util/List;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_69
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->b(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6a
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->O(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6b
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->z(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6c
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->s(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6d
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->l(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6e
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->I(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_6f
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/e3;->L(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_70
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    :goto_19
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/vision/n2;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->z(ILcom/google/android/gms/internal/vision/n2;Lcom/google/android/gms/internal/vision/d3;)I

    move-result v2

    goto/16 :goto_23

    :pswitch_71
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    :goto_1a
    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->L(IJ)I

    move-result v2

    goto/16 :goto_23

    :pswitch_72
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1b
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->Q(II)I

    move-result v2

    goto :goto_23

    :pswitch_73
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    :goto_1c
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->P(I)I

    move-result v2

    goto :goto_23

    :pswitch_74
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    :goto_1d
    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->S(I)I

    move-result v2

    goto :goto_23

    :pswitch_75
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1e
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->T(II)I

    move-result v2

    goto :goto_23

    :pswitch_76
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    :goto_1f
    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->N(II)I

    move-result v2

    goto :goto_23

    :pswitch_77
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    :goto_20
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_22

    :pswitch_78
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    :goto_21
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v3

    invoke-static {v14, v3, v2}, Lcom/google/android/gms/internal/vision/e3;->a(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)I

    move-result v2

    goto :goto_23

    :pswitch_79
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/vision/p0;

    if-eqz v3, :cond_7

    :goto_22
    check-cast v2, Lcom/google/android/gms/internal/vision/p0;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->y(ILcom/google/android/gms/internal/vision/p0;)I

    move-result v2

    goto :goto_23

    :cond_7
    check-cast v2, Ljava/lang/String;

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->r(ILjava/lang/String;)I

    move-result v2

    :goto_23
    add-int/2addr v10, v2

    goto :goto_28

    :pswitch_7a
    and-int/2addr v2, v11

    if-eqz v2, :cond_8

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->w(I)I

    move-result v2

    goto :goto_26

    :pswitch_7b
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->R(I)I

    move-result v2

    :goto_24
    add-int/2addr v10, v2

    goto :goto_29

    :pswitch_7c
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->M(I)I

    move-result v2

    goto :goto_24

    :pswitch_7d
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/vision/t0;->K(II)I

    move-result v2

    goto :goto_25

    :pswitch_7e
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->G(IJ)I

    move-result v2

    goto :goto_25

    :pswitch_7f
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {v14, v2, v3}, Lcom/google/android/gms/internal/vision/t0;->D(IJ)I

    move-result v2

    :goto_25
    add-int/2addr v10, v2

    goto :goto_29

    :pswitch_80
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->x(I)I

    move-result v2

    goto :goto_24

    :pswitch_81
    and-int/2addr v2, v11

    if-eqz v2, :cond_9

    invoke-static {v14}, Lcom/google/android/gms/internal/vision/t0;->q(I)I

    move-result v2

    :goto_26
    add-int/2addr v2, v10

    :goto_27
    move v10, v2

    goto :goto_29

    :cond_8
    :goto_28
    move v2, v10

    goto :goto_27

    :cond_9
    :goto_29
    add-int/lit8 v5, v5, 0x3

    const/high16 v2, 0xff00000

    const v3, 0xfffff

    goto/16 :goto_16

    .line 3
    :cond_a
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/vision/n3;->j(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v10

    .line 4
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    move-result-object v1

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_2a
    iget-object v3, v1, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/vision/g3;->e()I

    move-result v3

    iget-object v5, v1, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    if-ge v4, v3, :cond_b

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/vision/g3;->d(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/vision/e1;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/vision/c1;->g(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v3, v16

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/vision/g3;->g()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/vision/e1;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/c1;->g(Lcom/google/android/gms/internal/vision/e1;Ljava/lang/Object;)I

    move-result v3

    add-int v16, v3, v16

    goto :goto_2b

    :cond_c
    add-int v2, v2, v16

    :cond_d
    return v2

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

.method public final c(Ljava/lang/Object;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

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
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto/16 :goto_d

    .line 158
    .line 159
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    goto/16 :goto_c

    .line 179
    .line 180
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    :goto_9
    invoke-static {v4}, Lcom/google/android/gms/internal/vision/m1;->b(Z)I

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

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
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

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
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/m1;->a(J)I

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
    add-int/lit8 v2, v2, 0x3

    .line 319
    .line 320
    goto/16 :goto_0

    .line 321
    .line 322
    :cond_2
    mul-int/lit8 v3, v3, 0x35

    .line 323
    .line 324
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/q3;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    add-int/2addr v0, v3

    .line 335
    iget-boolean v1, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 336
    .line 337
    if-eqz v1, :cond_3

    .line 338
    .line 339
    mul-int/lit8 v0, v0, 0x35

    .line 340
    .line 341
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 342
    .line 343
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/c1;->hashCode()I

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

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

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
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

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
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-static {v5, v6, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v9, v5, :cond_0

    .line 44
    .line 45
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_0

    .line 122
    .line 123
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    if-eqz v5, :cond_0

    .line 140
    .line 141
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v5

    .line 159
    if-eqz v5, :cond_0

    .line 160
    .line 161
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_0

    .line 178
    .line 179
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_0

    .line 196
    .line 197
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_0

    .line 214
    .line 215
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_0

    .line 236
    .line 237
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_0

    .line 258
    .line 259
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/vision/e3;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_0

    .line 280
    .line 281
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_0

    .line 298
    .line 299
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v5

    .line 315
    if-eqz v5, :cond_0

    .line 316
    .line 317
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v5

    .line 321
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v5

    .line 334
    if-eqz v5, :cond_0

    .line 335
    .line 336
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    if-eqz v5, :cond_0

    .line 352
    .line 353
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 354
    .line 355
    .line 356
    move-result-wide v5

    .line 357
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-eqz v5, :cond_0

    .line 371
    .line 372
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v5

    .line 376
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

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
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-eqz v5, :cond_0

    .line 390
    .line 391
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-eq v5, v6, :cond_1

    .line 408
    .line 409
    goto :goto_1

    .line 410
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->D(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-eqz v5, :cond_0

    .line 415
    .line 416
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 417
    .line 418
    .line 419
    move-result-wide v5

    .line 420
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 421
    .line 422
    .line 423
    move-result-wide v5

    .line 424
    invoke-static {v7, v8, p2}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 425
    .line 426
    .line 427
    move-result-wide v7

    .line 428
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 429
    .line 430
    .line 431
    move-result-wide v7

    .line 432
    cmp-long v9, v5, v7

    .line 433
    .line 434
    if-eqz v9, :cond_1

    .line 435
    .line 436
    :cond_0
    :goto_1
    const/4 v4, 0x0

    .line 437
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 438
    .line 439
    return v2

    .line 440
    :cond_2
    add-int/lit8 v3, v3, 0x3

    .line 441
    .line 442
    goto/16 :goto_0

    .line 443
    .line 444
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    .line 445
    .line 446
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/q3;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_4

    .line 459
    .line 460
    return v2

    .line 461
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 462
    .line 463
    if-eqz v0, :cond_5

    .line 464
    .line 465
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 466
    .line 467
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 468
    .line 469
    .line 470
    move-result-object p1

    .line 471
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 472
    .line 473
    .line 474
    move-result-object p2

    .line 475
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/c1;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    return p1

    .line 480
    :cond_5
    return v4

    .line 481
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

.method public final e(Ljava/lang/Object;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    const v0, 0xfffff

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const v3, 0xfffff

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    iget v5, p0, Lcom/google/android/gms/internal/vision/r2;->i:I

    .line 11
    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v2, v5, :cond_10

    .line 14
    .line 15
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/r2;->h:[I

    .line 16
    .line 17
    aget v5, v5, v2

    .line 18
    .line 19
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 20
    .line 21
    aget v8, v7, v5

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    add-int/lit8 v10, v5, 0x2

    .line 28
    .line 29
    aget v7, v7, v10

    .line 30
    .line 31
    and-int v10, v7, v0

    .line 32
    .line 33
    ushr-int/lit8 v7, v7, 0x14

    .line 34
    .line 35
    shl-int v7, v6, v7

    .line 36
    .line 37
    if-eq v10, v3, :cond_1

    .line 38
    .line 39
    if-eq v10, v0, :cond_0

    .line 40
    .line 41
    sget-object v3, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    .line 42
    .line 43
    int-to-long v11, v10

    .line 44
    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    :cond_0
    move v3, v10

    .line 49
    :cond_1
    const/high16 v10, 0x10000000

    .line 50
    .line 51
    and-int/2addr v10, v9

    .line 52
    if-eqz v10, :cond_2

    .line 53
    .line 54
    const/4 v10, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v10, 0x0

    .line 57
    :goto_1
    if-eqz v10, :cond_5

    .line 58
    .line 59
    if-ne v3, v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    and-int v10, v4, v7

    .line 67
    .line 68
    if-eqz v10, :cond_4

    .line 69
    .line 70
    const/4 v10, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v10, 0x0

    .line 73
    :goto_2
    if-nez v10, :cond_5

    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    const/high16 v10, 0xff00000

    .line 77
    .line 78
    and-int/2addr v10, v9

    .line 79
    ushr-int/lit8 v10, v10, 0x14

    .line 80
    .line 81
    const/16 v11, 0x9

    .line 82
    .line 83
    if-eq v10, v11, :cond_c

    .line 84
    .line 85
    const/16 v11, 0x11

    .line 86
    .line 87
    if-eq v10, v11, :cond_c

    .line 88
    .line 89
    const/16 v7, 0x1b

    .line 90
    .line 91
    if-eq v10, v7, :cond_9

    .line 92
    .line 93
    const/16 v7, 0x3c

    .line 94
    .line 95
    if-eq v10, v7, :cond_8

    .line 96
    .line 97
    const/16 v7, 0x44

    .line 98
    .line 99
    if-eq v10, v7, :cond_8

    .line 100
    .line 101
    const/16 v7, 0x31

    .line 102
    .line 103
    if-eq v10, v7, :cond_9

    .line 104
    .line 105
    const/16 v6, 0x32

    .line 106
    .line 107
    if-eq v10, v6, :cond_6

    .line 108
    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_6
    and-int v6, v9, v0

    .line 112
    .line 113
    int-to-long v6, v6

    .line 114
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v7, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    .line 119
    .line 120
    invoke-interface {v7, v6}, Lcom/google/android/gms/internal/vision/k2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    if-eqz v6, :cond_7

    .line 129
    .line 130
    goto/16 :goto_6

    .line 131
    .line 132
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {v7, p1}, Lcom/google/android/gms/internal/vision/k2;->b(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x0

    .line 140
    throw p1

    .line 141
    :cond_8
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-eqz v6, :cond_f

    .line 146
    .line 147
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    and-int v6, v9, v0

    .line 152
    .line 153
    int-to-long v6, v6

    .line 154
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/d3;->e(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-nez v5, :cond_f

    .line 163
    .line 164
    return v1

    .line 165
    :cond_9
    and-int v7, v9, v0

    .line 166
    .line 167
    int-to-long v7, v7

    .line 168
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-nez v8, :cond_b

    .line 179
    .line 180
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const/4 v8, 0x0

    .line 185
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 186
    .line 187
    .line 188
    move-result v9

    .line 189
    if-ge v8, v9, :cond_b

    .line 190
    .line 191
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    invoke-interface {v5, v9}, Lcom/google/android/gms/internal/vision/d3;->e(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-nez v9, :cond_a

    .line 200
    .line 201
    const/4 v6, 0x0

    .line 202
    goto :goto_4

    .line 203
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_b
    :goto_4
    if-nez v6, :cond_f

    .line 207
    .line 208
    return v1

    .line 209
    :cond_c
    if-ne v3, v0, :cond_d

    .line 210
    .line 211
    invoke-virtual {p0, v5, p1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    goto :goto_5

    .line 216
    :cond_d
    and-int/2addr v7, v4

    .line 217
    if-eqz v7, :cond_e

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_e
    const/4 v6, 0x0

    .line 221
    :goto_5
    if-eqz v6, :cond_f

    .line 222
    .line 223
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    and-int v6, v9, v0

    .line 228
    .line 229
    int-to-long v6, v6

    .line 230
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/vision/d3;->e(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-nez v5, :cond_f

    .line 239
    .line 240
    return v1

    .line 241
    :cond_f
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 246
    .line 247
    if-eqz v0, :cond_11

    .line 248
    .line 249
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 250
    .line 251
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/c1;->k()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    if-nez p1, :cond_11

    .line 260
    .line 261
    return v1

    .line 262
    :cond_11
    return v6
.end method

.method public final f(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V
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
    iget-boolean v3, v0, Lcom/google/android/gms/internal/vision/r2;->g:Z

    .line 11
    .line 12
    if-eqz v3, :cond_8

    .line 13
    .line 14
    iget-boolean v4, v0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 15
    .line 16
    iget-object v5, v0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/vision/y0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/c1;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-object v6, v4, Lcom/google/android/gms/internal/vision/c1;->a:Lcom/google/android/gms/internal/vision/g3;

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/internal/vision/c1;->i()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Ljava/util/Map$Entry;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v4, 0x0

    .line 44
    const/4 v6, 0x0

    .line 45
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 46
    .line 47
    array-length v8, v7

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    :goto_1
    if-ge v10, v8, :cond_5

    .line 51
    .line 52
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    .line 53
    .line 54
    .line 55
    move-result v11

    .line 56
    aget v12, v7, v10

    .line 57
    .line 58
    :goto_2
    if-eqz v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vision/y0;->c(Ljava/util/Map$Entry;)V

    .line 61
    .line 62
    .line 63
    if-ltz v12, :cond_2

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vision/y0;->e(Ljava/util/Map$Entry;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    check-cast v6, Ljava/util/Map$Entry;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const/4 v6, 0x0

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const/high16 v13, 0xff00000

    .line 84
    .line 85
    and-int/2addr v13, v11

    .line 86
    ushr-int/lit8 v13, v13, 0x14

    .line 87
    .line 88
    const/4 v14, 0x1

    .line 89
    const v15, 0xfffff

    .line 90
    .line 91
    .line 92
    packed-switch v13, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_3
    move-object/from16 v16, v4

    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :pswitch_0
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    if-eqz v13, :cond_3

    .line 104
    .line 105
    and-int/2addr v11, v15

    .line 106
    int-to-long v13, v11

    .line 107
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/android/gms/internal/vision/u0;->k(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :pswitch_1
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-eqz v13, :cond_3

    .line 124
    .line 125
    and-int/2addr v11, v15

    .line 126
    int-to-long v13, v11

    .line 127
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v13

    .line 131
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->q(IJ)V

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :pswitch_2
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v13

    .line 139
    if-eqz v13, :cond_3

    .line 140
    .line 141
    and-int/2addr v11, v15

    .line 142
    int-to-long v13, v11

    .line 143
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->r(II)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :pswitch_3
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v13

    .line 155
    if-eqz v13, :cond_3

    .line 156
    .line 157
    and-int/2addr v11, v15

    .line 158
    int-to-long v13, v11

    .line 159
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 160
    .line 161
    .line 162
    move-result-wide v13

    .line 163
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->j(IJ)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :pswitch_4
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v13

    .line 171
    if-eqz v13, :cond_3

    .line 172
    .line 173
    and-int/2addr v11, v15

    .line 174
    int-to-long v13, v11

    .line 175
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->c(II)V

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :pswitch_5
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    if-eqz v13, :cond_3

    .line 188
    .line 189
    and-int/2addr v11, v15

    .line 190
    int-to-long v13, v11

    .line 191
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->i(II)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :pswitch_6
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_3

    .line 204
    .line 205
    and-int/2addr v11, v15

    .line 206
    int-to-long v13, v11

    .line 207
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v11

    .line 211
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->p(II)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :pswitch_7
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    if-eqz v13, :cond_3

    .line 220
    .line 221
    and-int/2addr v11, v15

    .line 222
    int-to-long v13, v11

    .line 223
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    check-cast v11, Lcom/google/android/gms/internal/vision/p0;

    .line 228
    .line 229
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->e(ILcom/google/android/gms/internal/vision/p0;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_3

    .line 233
    .line 234
    :pswitch_8
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_3

    .line 239
    .line 240
    and-int/2addr v11, v15

    .line 241
    int-to-long v13, v11

    .line 242
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/android/gms/internal/vision/u0;->f(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :pswitch_9
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-eqz v13, :cond_3

    .line 260
    .line 261
    and-int/2addr v11, v15

    .line 262
    int-to-long v13, v11

    .line 263
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v11

    .line 267
    invoke-static {v12, v11, v2}, Lcom/google/android/gms/internal/vision/r2;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 268
    .line 269
    .line 270
    goto/16 :goto_3

    .line 271
    .line 272
    :pswitch_a
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    if-eqz v13, :cond_3

    .line 277
    .line 278
    and-int/2addr v11, v15

    .line 279
    int-to-long v13, v11

    .line 280
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    check-cast v11, Ljava/lang/Boolean;

    .line 285
    .line 286
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 287
    .line 288
    .line 289
    move-result v11

    .line 290
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->h(IZ)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_3

    .line 294
    .line 295
    :pswitch_b
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-eqz v13, :cond_3

    .line 300
    .line 301
    and-int/2addr v11, v15

    .line 302
    int-to-long v13, v11

    .line 303
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->n(II)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :pswitch_c
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v13

    .line 316
    if-eqz v13, :cond_3

    .line 317
    .line 318
    and-int/2addr v11, v15

    .line 319
    int-to-long v13, v11

    .line 320
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 321
    .line 322
    .line 323
    move-result-wide v13

    .line 324
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->o(IJ)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_3

    .line 328
    .line 329
    :pswitch_d
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v13

    .line 333
    if-eqz v13, :cond_3

    .line 334
    .line 335
    and-int/2addr v11, v15

    .line 336
    int-to-long v13, v11

    .line 337
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->F(JLjava/lang/Object;)I

    .line 338
    .line 339
    .line 340
    move-result v11

    .line 341
    invoke-virtual {v2, v12, v11}, Lcom/google/android/gms/internal/vision/u0;->l(II)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :pswitch_e
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v13

    .line 350
    if-eqz v13, :cond_3

    .line 351
    .line 352
    and-int/2addr v11, v15

    .line 353
    int-to-long v13, v11

    .line 354
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v13

    .line 358
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->m(IJ)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_3

    .line 362
    .line 363
    :pswitch_f
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v13

    .line 367
    if-eqz v13, :cond_3

    .line 368
    .line 369
    and-int/2addr v11, v15

    .line 370
    int-to-long v13, v11

    .line 371
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/r2;->G(JLjava/lang/Object;)J

    .line 372
    .line 373
    .line 374
    move-result-wide v13

    .line 375
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->d(IJ)V

    .line 376
    .line 377
    .line 378
    goto/16 :goto_3

    .line 379
    .line 380
    :pswitch_10
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    if-eqz v13, :cond_3

    .line 385
    .line 386
    and-int/2addr v11, v15

    .line 387
    int-to-long v13, v11

    .line 388
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    check-cast v11, Ljava/lang/Float;

    .line 393
    .line 394
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    .line 395
    .line 396
    .line 397
    move-result v11

    .line 398
    invoke-virtual {v2, v11, v12}, Lcom/google/android/gms/internal/vision/u0;->a(FI)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_3

    .line 402
    .line 403
    :pswitch_11
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v13

    .line 407
    if-eqz v13, :cond_3

    .line 408
    .line 409
    and-int/2addr v11, v15

    .line 410
    int-to-long v13, v11

    .line 411
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    check-cast v11, Ljava/lang/Double;

    .line 416
    .line 417
    invoke-virtual {v11}, Ljava/lang/Double;->doubleValue()D

    .line 418
    .line 419
    .line 420
    move-result-wide v13

    .line 421
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/android/gms/internal/vision/u0;->b(ID)V

    .line 422
    .line 423
    .line 424
    goto/16 :goto_3

    .line 425
    .line 426
    :pswitch_12
    and-int/2addr v11, v15

    .line 427
    int-to-long v13, v11

    .line 428
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-virtual {v0, v2, v12, v11, v10}, Lcom/google/android/gms/internal/vision/r2;->s(Lcom/google/android/gms/internal/vision/u0;ILjava/lang/Object;I)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_3

    .line 436
    .line 437
    :pswitch_13
    aget v12, v7, v10

    .line 438
    .line 439
    and-int/2addr v11, v15

    .line 440
    int-to-long v13, v11

    .line 441
    invoke-static {v13, v14, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v11

    .line 445
    check-cast v11, Ljava/util/List;

    .line 446
    .line 447
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    invoke-static {v12, v11, v2, v13}, Lcom/google/android/gms/internal/vision/e3;->q(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Lcom/google/android/gms/internal/vision/d3;)V

    .line 452
    .line 453
    .line 454
    goto/16 :goto_3

    .line 455
    .line 456
    :pswitch_14
    aget v12, v7, v10

    .line 457
    .line 458
    and-int/2addr v11, v15

    .line 459
    move-object/from16 v16, v4

    .line 460
    .line 461
    int-to-long v3, v11

    .line 462
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    check-cast v3, Ljava/util/List;

    .line 467
    .line 468
    invoke-static {v12, v3, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_4

    .line 472
    .line 473
    :pswitch_15
    move-object/from16 v16, v4

    .line 474
    .line 475
    aget v3, v7, v10

    .line 476
    .line 477
    and-int v4, v11, v15

    .line 478
    .line 479
    int-to-long v11, v4

    .line 480
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v4

    .line 484
    check-cast v4, Ljava/util/List;

    .line 485
    .line 486
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 487
    .line 488
    .line 489
    goto/16 :goto_4

    .line 490
    .line 491
    :pswitch_16
    move-object/from16 v16, v4

    .line 492
    .line 493
    aget v3, v7, v10

    .line 494
    .line 495
    and-int v4, v11, v15

    .line 496
    .line 497
    int-to-long v11, v4

    .line 498
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    check-cast v4, Ljava/util/List;

    .line 503
    .line 504
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 505
    .line 506
    .line 507
    goto/16 :goto_4

    .line 508
    .line 509
    :pswitch_17
    move-object/from16 v16, v4

    .line 510
    .line 511
    aget v3, v7, v10

    .line 512
    .line 513
    and-int v4, v11, v15

    .line 514
    .line 515
    int-to-long v11, v4

    .line 516
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    check-cast v4, Ljava/util/List;

    .line 521
    .line 522
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 523
    .line 524
    .line 525
    goto/16 :goto_4

    .line 526
    .line 527
    :pswitch_18
    move-object/from16 v16, v4

    .line 528
    .line 529
    aget v3, v7, v10

    .line 530
    .line 531
    and-int v4, v11, v15

    .line 532
    .line 533
    int-to-long v11, v4

    .line 534
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v4

    .line 538
    check-cast v4, Ljava/util/List;

    .line 539
    .line 540
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_4

    .line 544
    .line 545
    :pswitch_19
    move-object/from16 v16, v4

    .line 546
    .line 547
    aget v3, v7, v10

    .line 548
    .line 549
    and-int v4, v11, v15

    .line 550
    .line 551
    int-to-long v11, v4

    .line 552
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    check-cast v4, Ljava/util/List;

    .line 557
    .line 558
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_4

    .line 562
    .line 563
    :pswitch_1a
    move-object/from16 v16, v4

    .line 564
    .line 565
    aget v3, v7, v10

    .line 566
    .line 567
    and-int v4, v11, v15

    .line 568
    .line 569
    int-to-long v11, v4

    .line 570
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    check-cast v4, Ljava/util/List;

    .line 575
    .line 576
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 577
    .line 578
    .line 579
    goto/16 :goto_4

    .line 580
    .line 581
    :pswitch_1b
    move-object/from16 v16, v4

    .line 582
    .line 583
    aget v3, v7, v10

    .line 584
    .line 585
    and-int v4, v11, v15

    .line 586
    .line 587
    int-to-long v11, v4

    .line 588
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v4

    .line 592
    check-cast v4, Ljava/util/List;

    .line 593
    .line 594
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_4

    .line 598
    .line 599
    :pswitch_1c
    move-object/from16 v16, v4

    .line 600
    .line 601
    aget v3, v7, v10

    .line 602
    .line 603
    and-int v4, v11, v15

    .line 604
    .line 605
    int-to-long v11, v4

    .line 606
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 607
    .line 608
    .line 609
    move-result-object v4

    .line 610
    check-cast v4, Ljava/util/List;

    .line 611
    .line 612
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 613
    .line 614
    .line 615
    goto/16 :goto_4

    .line 616
    .line 617
    :pswitch_1d
    move-object/from16 v16, v4

    .line 618
    .line 619
    aget v3, v7, v10

    .line 620
    .line 621
    and-int v4, v11, v15

    .line 622
    .line 623
    int-to-long v11, v4

    .line 624
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v4

    .line 628
    check-cast v4, Ljava/util/List;

    .line 629
    .line 630
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_4

    .line 634
    .line 635
    :pswitch_1e
    move-object/from16 v16, v4

    .line 636
    .line 637
    aget v3, v7, v10

    .line 638
    .line 639
    and-int v4, v11, v15

    .line 640
    .line 641
    int-to-long v11, v4

    .line 642
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    check-cast v4, Ljava/util/List;

    .line 647
    .line 648
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_4

    .line 652
    .line 653
    :pswitch_1f
    move-object/from16 v16, v4

    .line 654
    .line 655
    aget v3, v7, v10

    .line 656
    .line 657
    and-int v4, v11, v15

    .line 658
    .line 659
    int-to-long v11, v4

    .line 660
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v4

    .line 664
    check-cast v4, Ljava/util/List;

    .line 665
    .line 666
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_4

    .line 670
    .line 671
    :pswitch_20
    move-object/from16 v16, v4

    .line 672
    .line 673
    aget v3, v7, v10

    .line 674
    .line 675
    and-int v4, v11, v15

    .line 676
    .line 677
    int-to-long v11, v4

    .line 678
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    check-cast v4, Ljava/util/List;

    .line 683
    .line 684
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_4

    .line 688
    .line 689
    :pswitch_21
    move-object/from16 v16, v4

    .line 690
    .line 691
    aget v3, v7, v10

    .line 692
    .line 693
    and-int v4, v11, v15

    .line 694
    .line 695
    int-to-long v11, v4

    .line 696
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    move-result-object v4

    .line 700
    check-cast v4, Ljava/util/List;

    .line 701
    .line 702
    invoke-static {v3, v4, v2, v14}, Lcom/google/android/gms/internal/vision/e3;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 703
    .line 704
    .line 705
    goto/16 :goto_4

    .line 706
    .line 707
    :pswitch_22
    move-object/from16 v16, v4

    .line 708
    .line 709
    aget v3, v7, v10

    .line 710
    .line 711
    and-int v4, v11, v15

    .line 712
    .line 713
    int-to-long v11, v4

    .line 714
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    check-cast v4, Ljava/util/List;

    .line 719
    .line 720
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->B(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 721
    .line 722
    .line 723
    goto/16 :goto_4

    .line 724
    .line 725
    :pswitch_23
    move-object/from16 v16, v4

    .line 726
    .line 727
    aget v3, v7, v10

    .line 728
    .line 729
    and-int v4, v11, v15

    .line 730
    .line 731
    int-to-long v11, v4

    .line 732
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    check-cast v4, Ljava/util/List;

    .line 737
    .line 738
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->Q(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_4

    .line 742
    .line 743
    :pswitch_24
    move-object/from16 v16, v4

    .line 744
    .line 745
    aget v3, v7, v10

    .line 746
    .line 747
    and-int v4, v11, v15

    .line 748
    .line 749
    int-to-long v11, v4

    .line 750
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v4

    .line 754
    check-cast v4, Ljava/util/List;

    .line 755
    .line 756
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->H(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_4

    .line 760
    .line 761
    :pswitch_25
    move-object/from16 v16, v4

    .line 762
    .line 763
    aget v3, v7, v10

    .line 764
    .line 765
    and-int v4, v11, v15

    .line 766
    .line 767
    int-to-long v11, v4

    .line 768
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v4

    .line 772
    check-cast v4, Ljava/util/List;

    .line 773
    .line 774
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->S(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 775
    .line 776
    .line 777
    goto/16 :goto_4

    .line 778
    .line 779
    :pswitch_26
    move-object/from16 v16, v4

    .line 780
    .line 781
    aget v3, v7, v10

    .line 782
    .line 783
    and-int v4, v11, v15

    .line 784
    .line 785
    int-to-long v11, v4

    .line 786
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v4

    .line 790
    check-cast v4, Ljava/util/List;

    .line 791
    .line 792
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->T(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 793
    .line 794
    .line 795
    goto/16 :goto_4

    .line 796
    .line 797
    :pswitch_27
    move-object/from16 v16, v4

    .line 798
    .line 799
    aget v3, v7, v10

    .line 800
    .line 801
    and-int v4, v11, v15

    .line 802
    .line 803
    int-to-long v11, v4

    .line 804
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v4

    .line 808
    check-cast v4, Ljava/util/List;

    .line 809
    .line 810
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->N(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 811
    .line 812
    .line 813
    goto/16 :goto_4

    .line 814
    .line 815
    :pswitch_28
    move-object/from16 v16, v4

    .line 816
    .line 817
    aget v3, v7, v10

    .line 818
    .line 819
    and-int v4, v11, v15

    .line 820
    .line 821
    int-to-long v11, v4

    .line 822
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 823
    .line 824
    .line 825
    move-result-object v4

    .line 826
    check-cast v4, Ljava/util/List;

    .line 827
    .line 828
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/vision/e3;->p(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;)V

    .line 829
    .line 830
    .line 831
    goto/16 :goto_4

    .line 832
    .line 833
    :pswitch_29
    move-object/from16 v16, v4

    .line 834
    .line 835
    aget v3, v7, v10

    .line 836
    .line 837
    and-int v4, v11, v15

    .line 838
    .line 839
    int-to-long v11, v4

    .line 840
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    move-result-object v4

    .line 844
    check-cast v4, Ljava/util/List;

    .line 845
    .line 846
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 847
    .line 848
    .line 849
    move-result-object v11

    .line 850
    invoke-static {v3, v4, v2, v11}, Lcom/google/android/gms/internal/vision/e3;->h(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Lcom/google/android/gms/internal/vision/d3;)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_4

    .line 854
    .line 855
    :pswitch_2a
    move-object/from16 v16, v4

    .line 856
    .line 857
    aget v3, v7, v10

    .line 858
    .line 859
    and-int v4, v11, v15

    .line 860
    .line 861
    int-to-long v11, v4

    .line 862
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    check-cast v4, Ljava/util/List;

    .line 867
    .line 868
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/vision/e3;->g(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_4

    .line 872
    .line 873
    :pswitch_2b
    move-object/from16 v16, v4

    .line 874
    .line 875
    aget v3, v7, v10

    .line 876
    .line 877
    and-int v4, v11, v15

    .line 878
    .line 879
    int-to-long v11, v4

    .line 880
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v4

    .line 884
    check-cast v4, Ljava/util/List;

    .line 885
    .line 886
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->U(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_4

    .line 890
    .line 891
    :pswitch_2c
    move-object/from16 v16, v4

    .line 892
    .line 893
    aget v3, v7, v10

    .line 894
    .line 895
    and-int v4, v11, v15

    .line 896
    .line 897
    int-to-long v11, v4

    .line 898
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v4

    .line 902
    check-cast v4, Ljava/util/List;

    .line 903
    .line 904
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->R(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 905
    .line 906
    .line 907
    goto/16 :goto_4

    .line 908
    .line 909
    :pswitch_2d
    move-object/from16 v16, v4

    .line 910
    .line 911
    aget v3, v7, v10

    .line 912
    .line 913
    and-int v4, v11, v15

    .line 914
    .line 915
    int-to-long v11, v4

    .line 916
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    move-result-object v4

    .line 920
    check-cast v4, Ljava/util/List;

    .line 921
    .line 922
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->E(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 923
    .line 924
    .line 925
    goto/16 :goto_4

    .line 926
    .line 927
    :pswitch_2e
    move-object/from16 v16, v4

    .line 928
    .line 929
    aget v3, v7, v10

    .line 930
    .line 931
    and-int v4, v11, v15

    .line 932
    .line 933
    int-to-long v11, v4

    .line 934
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    move-result-object v4

    .line 938
    check-cast v4, Ljava/util/List;

    .line 939
    .line 940
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->K(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 941
    .line 942
    .line 943
    goto/16 :goto_4

    .line 944
    .line 945
    :pswitch_2f
    move-object/from16 v16, v4

    .line 946
    .line 947
    aget v3, v7, v10

    .line 948
    .line 949
    and-int v4, v11, v15

    .line 950
    .line 951
    int-to-long v11, v4

    .line 952
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 953
    .line 954
    .line 955
    move-result-object v4

    .line 956
    check-cast v4, Ljava/util/List;

    .line 957
    .line 958
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->y(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 959
    .line 960
    .line 961
    goto/16 :goto_4

    .line 962
    .line 963
    :pswitch_30
    move-object/from16 v16, v4

    .line 964
    .line 965
    aget v3, v7, v10

    .line 966
    .line 967
    and-int v4, v11, v15

    .line 968
    .line 969
    int-to-long v11, v4

    .line 970
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 971
    .line 972
    .line 973
    move-result-object v4

    .line 974
    check-cast v4, Ljava/util/List;

    .line 975
    .line 976
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->v(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 977
    .line 978
    .line 979
    goto/16 :goto_4

    .line 980
    .line 981
    :pswitch_31
    move-object/from16 v16, v4

    .line 982
    .line 983
    aget v3, v7, v10

    .line 984
    .line 985
    and-int v4, v11, v15

    .line 986
    .line 987
    int-to-long v11, v4

    .line 988
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 989
    .line 990
    .line 991
    move-result-object v4

    .line 992
    check-cast v4, Ljava/util/List;

    .line 993
    .line 994
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->r(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 995
    .line 996
    .line 997
    goto/16 :goto_4

    .line 998
    .line 999
    :pswitch_32
    move-object/from16 v16, v4

    .line 1000
    .line 1001
    aget v3, v7, v10

    .line 1002
    .line 1003
    and-int v4, v11, v15

    .line 1004
    .line 1005
    int-to-long v11, v4

    .line 1006
    invoke-static {v11, v12, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    check-cast v4, Ljava/util/List;

    .line 1011
    .line 1012
    invoke-static {v3, v4, v2, v9}, Lcom/google/android/gms/internal/vision/e3;->i(ILjava/util/List;Lcom/google/android/gms/internal/vision/u0;Z)V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_4

    .line 1016
    .line 1017
    :pswitch_33
    move-object/from16 v16, v4

    .line 1018
    .line 1019
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1020
    .line 1021
    .line 1022
    move-result v3

    .line 1023
    if-eqz v3, :cond_4

    .line 1024
    .line 1025
    and-int v3, v11, v15

    .line 1026
    .line 1027
    int-to-long v3, v3

    .line 1028
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v3

    .line 1032
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v4

    .line 1036
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->k(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_4

    .line 1040
    .line 1041
    :pswitch_34
    move-object/from16 v16, v4

    .line 1042
    .line 1043
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v3

    .line 1047
    if-eqz v3, :cond_4

    .line 1048
    .line 1049
    and-int v3, v11, v15

    .line 1050
    .line 1051
    int-to-long v3, v3

    .line 1052
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 1053
    .line 1054
    .line 1055
    move-result-wide v3

    .line 1056
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->q(IJ)V

    .line 1057
    .line 1058
    .line 1059
    goto/16 :goto_4

    .line 1060
    .line 1061
    :pswitch_35
    move-object/from16 v16, v4

    .line 1062
    .line 1063
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v3

    .line 1067
    if-eqz v3, :cond_4

    .line 1068
    .line 1069
    and-int v3, v11, v15

    .line 1070
    .line 1071
    int-to-long v3, v3

    .line 1072
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1073
    .line 1074
    .line 1075
    move-result v3

    .line 1076
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->r(II)V

    .line 1077
    .line 1078
    .line 1079
    goto/16 :goto_4

    .line 1080
    .line 1081
    :pswitch_36
    move-object/from16 v16, v4

    .line 1082
    .line 1083
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result v3

    .line 1087
    if-eqz v3, :cond_4

    .line 1088
    .line 1089
    and-int v3, v11, v15

    .line 1090
    .line 1091
    int-to-long v3, v3

    .line 1092
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 1093
    .line 1094
    .line 1095
    move-result-wide v3

    .line 1096
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->j(IJ)V

    .line 1097
    .line 1098
    .line 1099
    goto/16 :goto_4

    .line 1100
    .line 1101
    :pswitch_37
    move-object/from16 v16, v4

    .line 1102
    .line 1103
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result v3

    .line 1107
    if-eqz v3, :cond_4

    .line 1108
    .line 1109
    and-int v3, v11, v15

    .line 1110
    .line 1111
    int-to-long v3, v3

    .line 1112
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1113
    .line 1114
    .line 1115
    move-result v3

    .line 1116
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->c(II)V

    .line 1117
    .line 1118
    .line 1119
    goto/16 :goto_4

    .line 1120
    .line 1121
    :pswitch_38
    move-object/from16 v16, v4

    .line 1122
    .line 1123
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v3

    .line 1127
    if-eqz v3, :cond_4

    .line 1128
    .line 1129
    and-int v3, v11, v15

    .line 1130
    .line 1131
    int-to-long v3, v3

    .line 1132
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1133
    .line 1134
    .line 1135
    move-result v3

    .line 1136
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->i(II)V

    .line 1137
    .line 1138
    .line 1139
    goto/16 :goto_4

    .line 1140
    .line 1141
    :pswitch_39
    move-object/from16 v16, v4

    .line 1142
    .line 1143
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v3

    .line 1147
    if-eqz v3, :cond_4

    .line 1148
    .line 1149
    and-int v3, v11, v15

    .line 1150
    .line 1151
    int-to-long v3, v3

    .line 1152
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1153
    .line 1154
    .line 1155
    move-result v3

    .line 1156
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->p(II)V

    .line 1157
    .line 1158
    .line 1159
    goto/16 :goto_4

    .line 1160
    .line 1161
    :pswitch_3a
    move-object/from16 v16, v4

    .line 1162
    .line 1163
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result v3

    .line 1167
    if-eqz v3, :cond_4

    .line 1168
    .line 1169
    and-int v3, v11, v15

    .line 1170
    .line 1171
    int-to-long v3, v3

    .line 1172
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v3

    .line 1176
    check-cast v3, Lcom/google/android/gms/internal/vision/p0;

    .line 1177
    .line 1178
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->e(ILcom/google/android/gms/internal/vision/p0;)V

    .line 1179
    .line 1180
    .line 1181
    goto/16 :goto_4

    .line 1182
    .line 1183
    :pswitch_3b
    move-object/from16 v16, v4

    .line 1184
    .line 1185
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1186
    .line 1187
    .line 1188
    move-result v3

    .line 1189
    if-eqz v3, :cond_4

    .line 1190
    .line 1191
    and-int v3, v11, v15

    .line 1192
    .line 1193
    int-to-long v3, v3

    .line 1194
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    move-result-object v3

    .line 1198
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v4

    .line 1202
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/android/gms/internal/vision/u0;->f(ILcom/google/android/gms/internal/vision/d3;Ljava/lang/Object;)V

    .line 1203
    .line 1204
    .line 1205
    goto/16 :goto_4

    .line 1206
    .line 1207
    :pswitch_3c
    move-object/from16 v16, v4

    .line 1208
    .line 1209
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1210
    .line 1211
    .line 1212
    move-result v3

    .line 1213
    if-eqz v3, :cond_4

    .line 1214
    .line 1215
    and-int v3, v11, v15

    .line 1216
    .line 1217
    int-to-long v3, v3

    .line 1218
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    invoke-static {v12, v3, v2}, Lcom/google/android/gms/internal/vision/r2;->p(ILjava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 1223
    .line 1224
    .line 1225
    goto/16 :goto_4

    .line 1226
    .line 1227
    :pswitch_3d
    move-object/from16 v16, v4

    .line 1228
    .line 1229
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1230
    .line 1231
    .line 1232
    move-result v3

    .line 1233
    if-eqz v3, :cond_4

    .line 1234
    .line 1235
    and-int v3, v11, v15

    .line 1236
    .line 1237
    int-to-long v3, v3

    .line 1238
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 1239
    .line 1240
    .line 1241
    move-result v3

    .line 1242
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->h(IZ)V

    .line 1243
    .line 1244
    .line 1245
    goto/16 :goto_4

    .line 1246
    .line 1247
    :pswitch_3e
    move-object/from16 v16, v4

    .line 1248
    .line 1249
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v3

    .line 1253
    if-eqz v3, :cond_4

    .line 1254
    .line 1255
    and-int v3, v11, v15

    .line 1256
    .line 1257
    int-to-long v3, v3

    .line 1258
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1259
    .line 1260
    .line 1261
    move-result v3

    .line 1262
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->n(II)V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_4

    .line 1266
    .line 1267
    :pswitch_3f
    move-object/from16 v16, v4

    .line 1268
    .line 1269
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1270
    .line 1271
    .line 1272
    move-result v3

    .line 1273
    if-eqz v3, :cond_4

    .line 1274
    .line 1275
    and-int v3, v11, v15

    .line 1276
    .line 1277
    int-to-long v3, v3

    .line 1278
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 1279
    .line 1280
    .line 1281
    move-result-wide v3

    .line 1282
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->o(IJ)V

    .line 1283
    .line 1284
    .line 1285
    goto :goto_4

    .line 1286
    :pswitch_40
    move-object/from16 v16, v4

    .line 1287
    .line 1288
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1289
    .line 1290
    .line 1291
    move-result v3

    .line 1292
    if-eqz v3, :cond_4

    .line 1293
    .line 1294
    and-int v3, v11, v15

    .line 1295
    .line 1296
    int-to-long v3, v3

    .line 1297
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 1298
    .line 1299
    .line 1300
    move-result v3

    .line 1301
    invoke-virtual {v2, v12, v3}, Lcom/google/android/gms/internal/vision/u0;->l(II)V

    .line 1302
    .line 1303
    .line 1304
    goto :goto_4

    .line 1305
    :pswitch_41
    move-object/from16 v16, v4

    .line 1306
    .line 1307
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1308
    .line 1309
    .line 1310
    move-result v3

    .line 1311
    if-eqz v3, :cond_4

    .line 1312
    .line 1313
    and-int v3, v11, v15

    .line 1314
    .line 1315
    int-to-long v3, v3

    .line 1316
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 1317
    .line 1318
    .line 1319
    move-result-wide v3

    .line 1320
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->m(IJ)V

    .line 1321
    .line 1322
    .line 1323
    goto :goto_4

    .line 1324
    :pswitch_42
    move-object/from16 v16, v4

    .line 1325
    .line 1326
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1327
    .line 1328
    .line 1329
    move-result v3

    .line 1330
    if-eqz v3, :cond_4

    .line 1331
    .line 1332
    and-int v3, v11, v15

    .line 1333
    .line 1334
    int-to-long v3, v3

    .line 1335
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 1336
    .line 1337
    .line 1338
    move-result-wide v3

    .line 1339
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->d(IJ)V

    .line 1340
    .line 1341
    .line 1342
    goto :goto_4

    .line 1343
    :pswitch_43
    move-object/from16 v16, v4

    .line 1344
    .line 1345
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    if-eqz v3, :cond_4

    .line 1350
    .line 1351
    and-int v3, v11, v15

    .line 1352
    .line 1353
    int-to-long v3, v3

    .line 1354
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 1355
    .line 1356
    .line 1357
    move-result v3

    .line 1358
    invoke-virtual {v2, v3, v12}, Lcom/google/android/gms/internal/vision/u0;->a(FI)V

    .line 1359
    .line 1360
    .line 1361
    goto :goto_4

    .line 1362
    :pswitch_44
    move-object/from16 v16, v4

    .line 1363
    .line 1364
    invoke-virtual {v0, v10, v1}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 1365
    .line 1366
    .line 1367
    move-result v3

    .line 1368
    if-eqz v3, :cond_4

    .line 1369
    .line 1370
    and-int v3, v11, v15

    .line 1371
    .line 1372
    int-to-long v3, v3

    .line 1373
    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 1374
    .line 1375
    .line 1376
    move-result-wide v3

    .line 1377
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/android/gms/internal/vision/u0;->b(ID)V

    .line 1378
    .line 1379
    .line 1380
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x3

    .line 1381
    .line 1382
    move-object/from16 v4, v16

    .line 1383
    .line 1384
    goto/16 :goto_1

    .line 1385
    .line 1386
    :cond_5
    move-object/from16 v16, v4

    .line 1387
    .line 1388
    :goto_5
    if-eqz v6, :cond_7

    .line 1389
    .line 1390
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/vision/y0;->e(Ljava/util/Map$Entry;)V

    .line 1391
    .line 1392
    .line 1393
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    if-eqz v3, :cond_6

    .line 1398
    .line 1399
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1400
    .line 1401
    .line 1402
    move-result-object v3

    .line 1403
    move-object v6, v3

    .line 1404
    check-cast v6, Ljava/util/Map$Entry;

    .line 1405
    .line 1406
    goto :goto_5

    .line 1407
    :cond_6
    const/4 v6, 0x0

    .line 1408
    goto :goto_5

    .line 1409
    :cond_7
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    .line 1410
    .line 1411
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v1

    .line 1415
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/vision/n3;->c(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 1416
    .line 1417
    .line 1418
    return-void

    .line 1419
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/vision/r2;->B(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/u0;)V

    .line 1420
    .line 1421
    .line 1422
    return-void

    .line 1423
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

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/l0;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/vision/l0;",
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
    iget-boolean v0, v15, Lcom/google/android/gms/internal/vision/r2;->g:Z

    .line 4
    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    sget-object v14, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v8, p2

    .line 12
    .line 13
    move/from16 v0, p3

    .line 14
    .line 15
    move/from16 v7, p4

    .line 16
    .line 17
    move-object/from16 v5, p5

    .line 18
    .line 19
    move-object v6, v15

    .line 20
    const/4 v1, -0x1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v9, 0x0

    .line 23
    const v10, 0xfffff

    .line 24
    .line 25
    .line 26
    :goto_0
    if-ge v0, v7, :cond_16

    .line 27
    .line 28
    add-int/lit8 v4, v0, 0x1

    .line 29
    .line 30
    aget-byte v0, v8, v0

    .line 31
    .line 32
    if-gez v0, :cond_0

    .line 33
    .line 34
    invoke-static {v0, v8, v4, v5}, Lcom/google/android/gms/internal/vision/k0;->e(I[BILcom/google/android/gms/internal/vision/l0;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iget v4, v5, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 39
    .line 40
    move/from16 v17, v4

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move/from16 v17, v0

    .line 44
    .line 45
    move v0, v4

    .line 46
    :goto_1
    ushr-int/lit8 v4, v17, 0x3

    .line 47
    .line 48
    and-int/lit8 v12, v17, 0x7

    .line 49
    .line 50
    iget v13, v6, Lcom/google/android/gms/internal/vision/r2;->d:I

    .line 51
    .line 52
    iget v11, v6, Lcom/google/android/gms/internal/vision/r2;->c:I

    .line 53
    .line 54
    if-le v4, v1, :cond_2

    .line 55
    .line 56
    div-int/lit8 v2, v2, 0x3

    .line 57
    .line 58
    if-lt v4, v11, :cond_1

    .line 59
    .line 60
    if-gt v4, v13, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v4, v2}, Lcom/google/android/gms/internal/vision/r2;->w(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    const/4 v1, -0x1

    .line 68
    :goto_2
    move v13, v1

    .line 69
    const/4 v2, -0x1

    .line 70
    const/4 v11, 0x0

    .line 71
    goto :goto_4

    .line 72
    :cond_2
    if-lt v4, v11, :cond_3

    .line 73
    .line 74
    if-gt v4, v13, :cond_3

    .line 75
    .line 76
    const/4 v11, 0x0

    .line 77
    invoke-virtual {v6, v4, v11}, Lcom/google/android/gms/internal/vision/r2;->w(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    const/4 v11, 0x0

    .line 83
    const/4 v1, -0x1

    .line 84
    :goto_3
    move v13, v1

    .line 85
    const/4 v2, -0x1

    .line 86
    :goto_4
    if-ne v13, v2, :cond_4

    .line 87
    .line 88
    move/from16 v18, v0

    .line 89
    .line 90
    move/from16 v24, v4

    .line 91
    .line 92
    move-object/from16 v28, v14

    .line 93
    .line 94
    const/16 v22, 0x0

    .line 95
    .line 96
    const/16 v23, -0x1

    .line 97
    .line 98
    goto/16 :goto_11

    .line 99
    .line 100
    :cond_4
    add-int/lit8 v1, v13, 0x1

    .line 101
    .line 102
    iget-object v2, v6, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 103
    .line 104
    aget v1, v2, v1

    .line 105
    .line 106
    const/high16 v16, 0xff00000

    .line 107
    .line 108
    and-int v16, v1, v16

    .line 109
    .line 110
    ushr-int/lit8 v11, v16, 0x14

    .line 111
    .line 112
    move/from16 p3, v4

    .line 113
    .line 114
    const v16, 0xfffff

    .line 115
    .line 116
    .line 117
    and-int v4, v1, v16

    .line 118
    .line 119
    move-object/from16 v16, v6

    .line 120
    .line 121
    move/from16 v25, v7

    .line 122
    .line 123
    int-to-long v6, v4

    .line 124
    const/16 v4, 0x11

    .line 125
    .line 126
    if-gt v11, v4, :cond_d

    .line 127
    .line 128
    add-int/lit8 v4, v13, 0x2

    .line 129
    .line 130
    aget v2, v2, v4

    .line 131
    .line 132
    ushr-int/lit8 v4, v2, 0x14

    .line 133
    .line 134
    const/4 v15, 0x1

    .line 135
    shl-int v19, v15, v4

    .line 136
    .line 137
    const v4, 0xfffff

    .line 138
    .line 139
    .line 140
    and-int/2addr v2, v4

    .line 141
    move-object/from16 v20, v5

    .line 142
    .line 143
    if-eq v2, v10, :cond_7

    .line 144
    .line 145
    if-eq v10, v4, :cond_5

    .line 146
    .line 147
    int-to-long v4, v10

    .line 148
    invoke-virtual {v14, v3, v4, v5, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 149
    .line 150
    .line 151
    const v4, 0xfffff

    .line 152
    .line 153
    .line 154
    :cond_5
    if-eq v2, v4, :cond_6

    .line 155
    .line 156
    int-to-long v9, v2

    .line 157
    invoke-virtual {v14, v3, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    move v9, v5

    .line 162
    :cond_6
    move v10, v2

    .line 163
    :cond_7
    const/4 v2, 0x5

    .line 164
    packed-switch v11, :pswitch_data_0

    .line 165
    .line 166
    .line 167
    :cond_8
    move/from16 v24, p3

    .line 168
    .line 169
    move/from16 p3, v10

    .line 170
    .line 171
    const/16 v23, -0x1

    .line 172
    .line 173
    const v26, 0xfffff

    .line 174
    .line 175
    .line 176
    goto/16 :goto_d

    .line 177
    .line 178
    :pswitch_0
    if-nez v12, :cond_8

    .line 179
    .line 180
    move-object/from16 v5, v20

    .line 181
    .line 182
    invoke-static {v8, v0, v5}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iget-wide v1, v5, Lcom/google/android/gms/internal/vision/l0;->b:J

    .line 187
    .line 188
    invoke-static {v1, v2}, Lc5/w;->K(J)J

    .line 189
    .line 190
    .line 191
    move-result-wide v11

    .line 192
    move-object v1, v14

    .line 193
    const/16 v23, -0x1

    .line 194
    .line 195
    move-object/from16 v2, p1

    .line 196
    .line 197
    move/from16 v24, p3

    .line 198
    .line 199
    move-object v15, v3

    .line 200
    const v26, 0xfffff

    .line 201
    .line 202
    .line 203
    move-wide v3, v6

    .line 204
    move-object v7, v5

    .line 205
    move/from16 p3, v10

    .line 206
    .line 207
    move-object/from16 v10, v16

    .line 208
    .line 209
    move-wide v5, v11

    .line 210
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 211
    .line 212
    .line 213
    or-int v9, v9, v19

    .line 214
    .line 215
    move-object v5, v7

    .line 216
    move-object v6, v10

    .line 217
    move v2, v13

    .line 218
    move-object v3, v15

    .line 219
    move/from16 v1, v24

    .line 220
    .line 221
    move/from16 v7, v25

    .line 222
    .line 223
    move-object/from16 v15, p0

    .line 224
    .line 225
    move/from16 v10, p3

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_1
    move/from16 v24, p3

    .line 230
    .line 231
    move-object v15, v3

    .line 232
    move/from16 p3, v10

    .line 233
    .line 234
    move-object/from16 v10, v16

    .line 235
    .line 236
    move-object/from16 v11, v20

    .line 237
    .line 238
    const/16 v23, -0x1

    .line 239
    .line 240
    const v26, 0xfffff

    .line 241
    .line 242
    .line 243
    if-nez v12, :cond_c

    .line 244
    .line 245
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget v1, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 250
    .line 251
    invoke-static {v1}, Lc5/w;->X(I)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    goto :goto_5

    .line 256
    :pswitch_2
    move/from16 v24, p3

    .line 257
    .line 258
    move-object v15, v3

    .line 259
    move/from16 p3, v10

    .line 260
    .line 261
    move-object/from16 v10, v16

    .line 262
    .line 263
    move-object/from16 v11, v20

    .line 264
    .line 265
    const/16 v23, -0x1

    .line 266
    .line 267
    const v26, 0xfffff

    .line 268
    .line 269
    .line 270
    if-nez v12, :cond_c

    .line 271
    .line 272
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    iget v1, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 277
    .line 278
    :goto_5
    invoke-virtual {v14, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 279
    .line 280
    .line 281
    move-object v3, v15

    .line 282
    move/from16 v5, v25

    .line 283
    .line 284
    goto/16 :goto_9

    .line 285
    .line 286
    :pswitch_3
    move/from16 v24, p3

    .line 287
    .line 288
    move-object v15, v3

    .line 289
    move/from16 p3, v10

    .line 290
    .line 291
    move-object/from16 v10, v16

    .line 292
    .line 293
    move-object/from16 v11, v20

    .line 294
    .line 295
    const/4 v2, 0x2

    .line 296
    const/16 v23, -0x1

    .line 297
    .line 298
    const v26, 0xfffff

    .line 299
    .line 300
    .line 301
    if-ne v12, v2, :cond_c

    .line 302
    .line 303
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->q([BILcom/google/android/gms/internal/vision/l0;)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    move/from16 v5, v25

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :pswitch_4
    move/from16 v24, p3

    .line 311
    .line 312
    move-object v15, v3

    .line 313
    move/from16 p3, v10

    .line 314
    .line 315
    move-object/from16 v10, v16

    .line 316
    .line 317
    move-object/from16 v11, v20

    .line 318
    .line 319
    const/4 v2, 0x2

    .line 320
    const/16 v23, -0x1

    .line 321
    .line 322
    const v26, 0xfffff

    .line 323
    .line 324
    .line 325
    if-ne v12, v2, :cond_c

    .line 326
    .line 327
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    move/from16 v5, v25

    .line 332
    .line 333
    invoke-static {v1, v8, v0, v5, v11}, Lcom/google/android/gms/internal/vision/k0;->h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    invoke-virtual {v14, v15, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    if-nez v1, :cond_9

    .line 342
    .line 343
    :goto_6
    iget-object v1, v11, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    .line 344
    .line 345
    goto :goto_7

    .line 346
    :cond_9
    iget-object v2, v11, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    .line 347
    .line 348
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    goto :goto_7

    .line 353
    :pswitch_5
    move/from16 v24, p3

    .line 354
    .line 355
    move-object v15, v3

    .line 356
    move/from16 p3, v10

    .line 357
    .line 358
    move-object/from16 v10, v16

    .line 359
    .line 360
    move-object/from16 v11, v20

    .line 361
    .line 362
    move/from16 v5, v25

    .line 363
    .line 364
    const/4 v2, 0x2

    .line 365
    const/16 v23, -0x1

    .line 366
    .line 367
    const v26, 0xfffff

    .line 368
    .line 369
    .line 370
    if-ne v12, v2, :cond_c

    .line 371
    .line 372
    const/high16 v2, 0x20000000

    .line 373
    .line 374
    and-int/2addr v1, v2

    .line 375
    if-nez v1, :cond_a

    .line 376
    .line 377
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->n([BILcom/google/android/gms/internal/vision/l0;)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    goto :goto_6

    .line 382
    :cond_a
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->p([BILcom/google/android/gms/internal/vision/l0;)I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    goto :goto_6

    .line 387
    :goto_7
    invoke-virtual {v14, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    move-object v3, v15

    .line 391
    goto :goto_9

    .line 392
    :pswitch_6
    move/from16 v24, p3

    .line 393
    .line 394
    move/from16 p3, v10

    .line 395
    .line 396
    move-object/from16 v10, v16

    .line 397
    .line 398
    move-object/from16 v11, v20

    .line 399
    .line 400
    move/from16 v5, v25

    .line 401
    .line 402
    const/16 v23, -0x1

    .line 403
    .line 404
    const v26, 0xfffff

    .line 405
    .line 406
    .line 407
    if-nez v12, :cond_c

    .line 408
    .line 409
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    iget-wide v1, v11, Lcom/google/android/gms/internal/vision/l0;->b:J

    .line 414
    .line 415
    const-wide/16 v16, 0x0

    .line 416
    .line 417
    cmp-long v4, v1, v16

    .line 418
    .line 419
    if-eqz v4, :cond_b

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_b
    const/4 v15, 0x0

    .line 423
    :goto_8
    invoke-static {v3, v6, v7, v15}, Lcom/google/android/gms/internal/vision/t3;->g(Ljava/lang/Object;JZ)V

    .line 424
    .line 425
    .line 426
    goto :goto_9

    .line 427
    :pswitch_7
    move/from16 v24, p3

    .line 428
    .line 429
    move/from16 p3, v10

    .line 430
    .line 431
    move-object/from16 v10, v16

    .line 432
    .line 433
    move-object/from16 v11, v20

    .line 434
    .line 435
    move/from16 v5, v25

    .line 436
    .line 437
    const/16 v23, -0x1

    .line 438
    .line 439
    const v26, 0xfffff

    .line 440
    .line 441
    .line 442
    if-ne v12, v2, :cond_c

    .line 443
    .line 444
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    invoke-virtual {v14, v3, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 449
    .line 450
    .line 451
    add-int/lit8 v0, v0, 0x4

    .line 452
    .line 453
    :goto_9
    or-int v1, v9, v19

    .line 454
    .line 455
    move-object v2, v3

    .line 456
    move/from16 v25, v5

    .line 457
    .line 458
    goto/16 :goto_c

    .line 459
    .line 460
    :pswitch_8
    move/from16 v24, p3

    .line 461
    .line 462
    move/from16 p3, v10

    .line 463
    .line 464
    move-object/from16 v10, v16

    .line 465
    .line 466
    move-object/from16 v11, v20

    .line 467
    .line 468
    move/from16 v5, v25

    .line 469
    .line 470
    const/16 v23, -0x1

    .line 471
    .line 472
    const v26, 0xfffff

    .line 473
    .line 474
    .line 475
    if-ne v12, v15, :cond_c

    .line 476
    .line 477
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    .line 478
    .line 479
    .line 480
    move-result-wide v15

    .line 481
    move-object v1, v14

    .line 482
    move-object/from16 v2, p1

    .line 483
    .line 484
    move-object v12, v3

    .line 485
    move-wide v3, v6

    .line 486
    move/from16 v25, v5

    .line 487
    .line 488
    move-wide v5, v15

    .line 489
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 490
    .line 491
    .line 492
    add-int/lit8 v0, v0, 0x8

    .line 493
    .line 494
    or-int v1, v9, v19

    .line 495
    .line 496
    move-object v2, v12

    .line 497
    goto/16 :goto_c

    .line 498
    .line 499
    :pswitch_9
    move/from16 v24, p3

    .line 500
    .line 501
    move-object v15, v3

    .line 502
    move/from16 p3, v10

    .line 503
    .line 504
    move-object/from16 v10, v16

    .line 505
    .line 506
    move-object/from16 v11, v20

    .line 507
    .line 508
    const/16 v23, -0x1

    .line 509
    .line 510
    const v26, 0xfffff

    .line 511
    .line 512
    .line 513
    if-nez v12, :cond_c

    .line 514
    .line 515
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    .line 516
    .line 517
    .line 518
    move-result v0

    .line 519
    iget v1, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    .line 520
    .line 521
    invoke-virtual {v14, v15, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 522
    .line 523
    .line 524
    goto :goto_a

    .line 525
    :pswitch_a
    move/from16 v24, p3

    .line 526
    .line 527
    move-object v15, v3

    .line 528
    move/from16 p3, v10

    .line 529
    .line 530
    move-object/from16 v10, v16

    .line 531
    .line 532
    move-object/from16 v11, v20

    .line 533
    .line 534
    const/16 v23, -0x1

    .line 535
    .line 536
    const v26, 0xfffff

    .line 537
    .line 538
    .line 539
    if-nez v12, :cond_c

    .line 540
    .line 541
    invoke-static {v8, v0, v11}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    .line 542
    .line 543
    .line 544
    move-result v0

    .line 545
    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/l0;->b:J

    .line 546
    .line 547
    move-object v1, v14

    .line 548
    move-object/from16 v2, p1

    .line 549
    .line 550
    move-wide/from16 v16, v3

    .line 551
    .line 552
    move-wide v3, v6

    .line 553
    move-wide/from16 v5, v16

    .line 554
    .line 555
    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 556
    .line 557
    .line 558
    or-int v1, v9, v19

    .line 559
    .line 560
    move-object v2, v15

    .line 561
    goto :goto_c

    .line 562
    :pswitch_b
    move/from16 v24, p3

    .line 563
    .line 564
    move-object v15, v3

    .line 565
    move/from16 p3, v10

    .line 566
    .line 567
    move-object/from16 v10, v16

    .line 568
    .line 569
    move-object/from16 v11, v20

    .line 570
    .line 571
    const/16 v23, -0x1

    .line 572
    .line 573
    const v26, 0xfffff

    .line 574
    .line 575
    .line 576
    if-ne v12, v2, :cond_c

    .line 577
    .line 578
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/vision/k0;->o(I[B)F

    .line 579
    .line 580
    .line 581
    move-result v1

    .line 582
    invoke-static {v15, v6, v7, v1}, Lcom/google/android/gms/internal/vision/t3;->e(Ljava/lang/Object;JF)V

    .line 583
    .line 584
    .line 585
    add-int/lit8 v0, v0, 0x4

    .line 586
    .line 587
    :goto_a
    move-object v2, v15

    .line 588
    goto :goto_b

    .line 589
    :pswitch_c
    move/from16 v24, p3

    .line 590
    .line 591
    move-object v2, v3

    .line 592
    move/from16 p3, v10

    .line 593
    .line 594
    move-object/from16 v10, v16

    .line 595
    .line 596
    move-object/from16 v11, v20

    .line 597
    .line 598
    const/16 v23, -0x1

    .line 599
    .line 600
    const v26, 0xfffff

    .line 601
    .line 602
    .line 603
    if-ne v12, v15, :cond_c

    .line 604
    .line 605
    invoke-static {v0, v8}, Lcom/google/android/gms/internal/vision/k0;->m(I[B)D

    .line 606
    .line 607
    .line 608
    move-result-wide v3

    .line 609
    invoke-static {v2, v6, v7, v3, v4}, Lcom/google/android/gms/internal/vision/t3;->d(Ljava/lang/Object;JD)V

    .line 610
    .line 611
    .line 612
    add-int/lit8 v0, v0, 0x8

    .line 613
    .line 614
    :goto_b
    or-int v1, v9, v19

    .line 615
    .line 616
    :goto_c
    move v9, v1

    .line 617
    move-object v3, v2

    .line 618
    move-object v6, v10

    .line 619
    move-object v5, v11

    .line 620
    move v2, v13

    .line 621
    move-object/from16 v28, v14

    .line 622
    .line 623
    move/from16 v7, v25

    .line 624
    .line 625
    const/16 v22, 0x0

    .line 626
    .line 627
    move/from16 v10, p3

    .line 628
    .line 629
    goto/16 :goto_14

    .line 630
    .line 631
    :cond_c
    :goto_d
    move/from16 v10, p3

    .line 632
    .line 633
    move/from16 v18, v0

    .line 634
    .line 635
    move v11, v13

    .line 636
    move-object/from16 v28, v14

    .line 637
    .line 638
    const/16 v22, 0x0

    .line 639
    .line 640
    goto/16 :goto_11

    .line 641
    .line 642
    :cond_d
    move/from16 v24, p3

    .line 643
    .line 644
    move-object v2, v3

    .line 645
    move-object v3, v5

    .line 646
    move v15, v10

    .line 647
    move-object/from16 v10, v16

    .line 648
    .line 649
    const/16 v23, -0x1

    .line 650
    .line 651
    const v26, 0xfffff

    .line 652
    .line 653
    .line 654
    const/16 v4, 0x1b

    .line 655
    .line 656
    if-ne v11, v4, :cond_11

    .line 657
    .line 658
    const/4 v4, 0x2

    .line 659
    if-ne v12, v4, :cond_10

    .line 660
    .line 661
    invoke-virtual {v14, v2, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    check-cast v1, Lcom/google/android/gms/internal/vision/r1;

    .line 666
    .line 667
    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/r1;->a()Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-nez v4, :cond_f

    .line 672
    .line 673
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 674
    .line 675
    .line 676
    move-result v4

    .line 677
    if-nez v4, :cond_e

    .line 678
    .line 679
    const/16 v4, 0xa

    .line 680
    .line 681
    goto :goto_e

    .line 682
    :cond_e
    shl-int/lit8 v4, v4, 0x1

    .line 683
    .line 684
    :goto_e
    invoke-interface {v1, v4}, Lcom/google/android/gms/internal/vision/r1;->f(I)Lcom/google/android/gms/internal/vision/r1;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v14, v2, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 689
    .line 690
    .line 691
    :cond_f
    move-object/from16 v21, v1

    .line 692
    .line 693
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    .line 694
    .line 695
    .line 696
    move-result-object v16

    .line 697
    move-object/from16 v18, p2

    .line 698
    .line 699
    move/from16 v19, v0

    .line 700
    .line 701
    move/from16 v20, p4

    .line 702
    .line 703
    move-object/from16 v22, p5

    .line 704
    .line 705
    invoke-static/range {v16 .. v22}, Lcom/google/android/gms/internal/vision/k0;->f(Lcom/google/android/gms/internal/vision/d3;I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    move-object v5, v3

    .line 710
    move-object v6, v10

    .line 711
    move-object/from16 v28, v14

    .line 712
    .line 713
    move v10, v15

    .line 714
    move/from16 v7, v25

    .line 715
    .line 716
    const/16 v22, 0x0

    .line 717
    .line 718
    move-object v3, v2

    .line 719
    goto/16 :goto_13

    .line 720
    .line 721
    :cond_10
    move/from16 v16, v9

    .line 722
    .line 723
    move/from16 v19, v13

    .line 724
    .line 725
    move-object/from16 v28, v14

    .line 726
    .line 727
    move/from16 v27, v15

    .line 728
    .line 729
    const/16 v22, 0x0

    .line 730
    .line 731
    move v15, v0

    .line 732
    goto :goto_f

    .line 733
    :cond_11
    const/16 v2, 0x31

    .line 734
    .line 735
    if-gt v11, v2, :cond_12

    .line 736
    .line 737
    int-to-long v4, v1

    .line 738
    move v10, v0

    .line 739
    move-object/from16 v0, p0

    .line 740
    .line 741
    move-object/from16 v1, p1

    .line 742
    .line 743
    move-object/from16 v2, p2

    .line 744
    .line 745
    move v3, v10

    .line 746
    move-wide/from16 v18, v4

    .line 747
    .line 748
    move/from16 v4, p4

    .line 749
    .line 750
    move/from16 v5, v17

    .line 751
    .line 752
    move-wide/from16 v20, v6

    .line 753
    .line 754
    move/from16 v6, v24

    .line 755
    .line 756
    move v7, v12

    .line 757
    move v8, v13

    .line 758
    move/from16 v16, v9

    .line 759
    .line 760
    move v12, v15

    .line 761
    move v15, v10

    .line 762
    move-wide/from16 v9, v18

    .line 763
    .line 764
    const/16 v22, 0x0

    .line 765
    .line 766
    move/from16 v27, v12

    .line 767
    .line 768
    move/from16 v19, v13

    .line 769
    .line 770
    move-wide/from16 v12, v20

    .line 771
    .line 772
    move-object/from16 v28, v14

    .line 773
    .line 774
    move-object/from16 v14, p5

    .line 775
    .line 776
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/r2;->j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/l0;)I

    .line 777
    .line 778
    .line 779
    move-result v0

    .line 780
    if-ne v0, v15, :cond_15

    .line 781
    .line 782
    goto :goto_10

    .line 783
    :cond_12
    move-wide/from16 v20, v6

    .line 784
    .line 785
    move/from16 v16, v9

    .line 786
    .line 787
    move/from16 v19, v13

    .line 788
    .line 789
    move-object/from16 v28, v14

    .line 790
    .line 791
    move/from16 v27, v15

    .line 792
    .line 793
    const/16 v22, 0x0

    .line 794
    .line 795
    move v15, v0

    .line 796
    const/16 v0, 0x32

    .line 797
    .line 798
    if-ne v11, v0, :cond_14

    .line 799
    .line 800
    const/4 v0, 0x2

    .line 801
    if-eq v12, v0, :cond_13

    .line 802
    .line 803
    :goto_f
    move v0, v15

    .line 804
    goto :goto_10

    .line 805
    :cond_13
    move-object/from16 v0, p0

    .line 806
    .line 807
    move-object/from16 v1, p1

    .line 808
    .line 809
    move-object/from16 v2, p2

    .line 810
    .line 811
    move v3, v15

    .line 812
    move/from16 v4, p4

    .line 813
    .line 814
    move/from16 v5, v19

    .line 815
    .line 816
    move-wide/from16 v6, v20

    .line 817
    .line 818
    move-object/from16 v8, p5

    .line 819
    .line 820
    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/r2;->t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/l0;)V

    .line 821
    .line 822
    .line 823
    const/4 v0, 0x0

    .line 824
    throw v0

    .line 825
    :cond_14
    move-object/from16 v0, p0

    .line 826
    .line 827
    move v8, v1

    .line 828
    move-object/from16 v1, p1

    .line 829
    .line 830
    move-object/from16 v2, p2

    .line 831
    .line 832
    move v3, v15

    .line 833
    move/from16 v4, p4

    .line 834
    .line 835
    move/from16 v5, v17

    .line 836
    .line 837
    move/from16 v6, v24

    .line 838
    .line 839
    move v7, v12

    .line 840
    move v9, v11

    .line 841
    move-wide/from16 v10, v20

    .line 842
    .line 843
    move/from16 v12, v19

    .line 844
    .line 845
    move-object/from16 v13, p5

    .line 846
    .line 847
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/r2;->i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/l0;)I

    .line 848
    .line 849
    .line 850
    move-result v0

    .line 851
    if-ne v0, v15, :cond_15

    .line 852
    .line 853
    :goto_10
    move/from16 v18, v0

    .line 854
    .line 855
    move/from16 v9, v16

    .line 856
    .line 857
    move/from16 v11, v19

    .line 858
    .line 859
    move/from16 v10, v27

    .line 860
    .line 861
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/r2;->H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 862
    .line 863
    .line 864
    move-result-object v20

    .line 865
    move/from16 v16, v17

    .line 866
    .line 867
    move-object/from16 v17, p2

    .line 868
    .line 869
    move/from16 v19, p4

    .line 870
    .line 871
    move-object/from16 v21, p5

    .line 872
    .line 873
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/vision/k0;->d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    move v13, v11

    .line 878
    goto :goto_12

    .line 879
    :cond_15
    move/from16 v9, v16

    .line 880
    .line 881
    move/from16 v13, v19

    .line 882
    .line 883
    move/from16 v10, v27

    .line 884
    .line 885
    :goto_12
    move-object/from16 v6, p0

    .line 886
    .line 887
    move-object/from16 v3, p1

    .line 888
    .line 889
    move-object/from16 v8, p2

    .line 890
    .line 891
    move/from16 v7, p4

    .line 892
    .line 893
    move-object/from16 v5, p5

    .line 894
    .line 895
    :goto_13
    move v2, v13

    .line 896
    :goto_14
    move-object/from16 v15, p0

    .line 897
    .line 898
    move/from16 v1, v24

    .line 899
    .line 900
    move-object/from16 v14, v28

    .line 901
    .line 902
    goto/16 :goto_0

    .line 903
    .line 904
    :cond_16
    move/from16 v16, v9

    .line 905
    .line 906
    move-object/from16 v28, v14

    .line 907
    .line 908
    const v1, 0xfffff

    .line 909
    .line 910
    .line 911
    if-eq v10, v1, :cond_17

    .line 912
    .line 913
    int-to-long v1, v10

    .line 914
    move-object/from16 v3, p1

    .line 915
    .line 916
    move/from16 v9, v16

    .line 917
    .line 918
    move-object/from16 v4, v28

    .line 919
    .line 920
    invoke-virtual {v4, v3, v1, v2, v9}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 921
    .line 922
    .line 923
    :cond_17
    move/from16 v4, p4

    .line 924
    .line 925
    if-ne v0, v4, :cond_18

    .line 926
    .line 927
    return-void

    .line 928
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    throw v0

    .line 933
    :cond_19
    move-object/from16 v3, p1

    .line 934
    .line 935
    move/from16 v4, p4

    .line 936
    .line 937
    const/4 v5, 0x0

    .line 938
    move-object/from16 v0, p0

    .line 939
    .line 940
    move-object/from16 v1, p1

    .line 941
    .line 942
    move-object/from16 v2, p2

    .line 943
    .line 944
    move/from16 v3, p3

    .line 945
    .line 946
    move-object/from16 v6, p5

    .line 947
    .line 948
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/r2;->k(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/l0;)I

    .line 949
    .line 950
    .line 951
    return-void

    .line 952
    nop

    .line 953
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

.method public final h()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->k:Lcom/google/android/gms/internal/vision/u2;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->e:Lcom/google/android/gms/internal/vision/n2;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/u2;->a(Lcom/google/android/gms/internal/vision/n2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/l0;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/vision/l0;",
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

    iget-object v12, v0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    aget v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v7, v12

    int-to-long v12, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    sget-object v14, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/k0;->g(Lcom/google/android/gms/internal/vision/d3;[BIIILcom/google/android/gms/internal/vision/l0;)I

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
    if-nez v3, :cond_4

    goto :goto_2

    :pswitch_1
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-static {v3, v4}, Lc5/w;->K(J)J

    move-result-wide v3

    goto/16 :goto_7

    :pswitch_2
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-static {v3}, Lc5/w;->X(I)I

    move-result v3

    goto/16 :goto_6

    :pswitch_3
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/r2;->C(I)Lcom/google/android/gms/internal/vision/n1;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/vision/n1;->f(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/r2;->H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_d

    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_b

    :pswitch_4
    if-ne v5, v15, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->q([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    :goto_2
    iget-object v3, v11, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    goto/16 :goto_8

    :pswitch_5
    if-ne v5, v15, :cond_9

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/vision/k0;->h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_3

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, v11, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    move-result-object v3

    goto/16 :goto_8

    :pswitch_6
    if-ne v5, v15, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-nez v4, :cond_5

    const-string v3, ""

    goto :goto_8

    :cond_5
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_7

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/vision/w3;->b([BII)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_7
    :goto_4
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v14, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    goto/16 :goto_b

    :pswitch_7
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/l0;->b:J

    const-wide/16 v5, 0x0

    cmp-long v11, v3, v5

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_8

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_9

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_9

    :pswitch_9
    if-ne v5, v7, :cond_9

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_a

    :pswitch_a
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/vision/l0;->a:I

    :goto_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :pswitch_b
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/vision/l0;->b:J

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_8
    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_9

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->o(I[B)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_9
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_b

    :pswitch_d
    if-ne v5, v7, :cond_9

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->m(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_a
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_b
    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_d

    :cond_9
    :goto_c
    move v2, v4

    :goto_d
    return v2

    nop

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

.method public final j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/l0;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/vision/l0;",
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

    sget-object v11, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/vision/r1;

    invoke-interface {v12}, Lcom/google/android/gms/internal/vision/r1;->a()Z

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
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/vision/r1;->f(I)Lcom/google/android/gms/internal/vision/r1;

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

    if-ne v6, v1, :cond_31

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/k0;->g(Lcom/google/android/gms/internal/vision/d3;[BIIILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    :goto_1
    iget-object v8, v7, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_31

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v9, :cond_31

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/vision/k0;->g(Lcom/google/android/gms/internal/vision/d3;[BIIILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    goto :goto_1

    :pswitch_1
    if-ne v6, v13, :cond_4

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-static {v4, v5}, Lc5/w;->K(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    goto :goto_2

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_20

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    :goto_3
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-static {v8, v9}, Lc5/w;->K(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_3

    :pswitch_2
    if-ne v6, v13, :cond_7

    check-cast v12, Lcom/google/android/gms/internal/vision/k1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_4
    if-ge v1, v2, :cond_5

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-static {v4}, Lc5/w;->X(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    goto :goto_4

    :cond_5
    if-ne v1, v2, :cond_6

    goto/16 :goto_20

    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_7
    if-nez v6, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/k1;

    :goto_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-static {v4}, Lc5/w;->X(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_5

    :pswitch_3
    if-ne v6, v13, :cond_8

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/k0;->j([BILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    goto :goto_6

    :cond_8
    if-nez v6, :cond_31

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/k0;->c(I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    :goto_6
    check-cast v1, Lcom/google/android/gms/internal/vision/i1;

    iget-object v3, v1, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    sget-object v4, Lcom/google/android/gms/internal/vision/q3;->f:Lcom/google/android/gms/internal/vision/q3;

    if-ne v3, v4, :cond_9

    const/4 v3, 0x0

    :cond_9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/r2;->C(I)Lcom/google/android/gms/internal/vision/n1;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    check-cast v12, Lcom/google/android/gms/internal/vision/r1;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/vision/e3;->f(ILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/n1;Lcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/n3;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/vision/q3;

    if-eqz v3, :cond_a

    iput-object v3, v1, Lcom/google/android/gms/internal/vision/i1;->zzb:Lcom/google/android/gms/internal/vision/q3;

    :cond_a
    :goto_7
    move v1, v2

    goto/16 :goto_20

    :pswitch_4
    if-ne v6, v13, :cond_31

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v4, :cond_f

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_e

    if-nez v4, :cond_b

    goto :goto_9

    :cond_b
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/vision/p0;->o([BII)Lcom/google/android/gms/internal/vision/s0;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_8
    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v4, :cond_d

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_c

    if-nez v4, :cond_b

    :goto_9
    sget-object v4, Lcom/google/android/gms/internal/vision/p0;->b:Lcom/google/android/gms/internal/vision/s0;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_e
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :pswitch_5
    if-ne v6, v13, :cond_31

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/vision/k0;->f(Lcom/google/android/gms/internal/vision/d3;I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    goto/16 :goto_20

    :pswitch_6
    if-ne v6, v13, :cond_31

    const-wide/32 v13, 0x20000000

    and-long v13, p9, v13

    const-string v1, ""

    cmp-long v6, v13, v9

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    if-nez v6, :cond_14

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v6, :cond_13

    if-nez v6, :cond_10

    goto :goto_c

    :cond_10
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_a
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_b
    if-ge v4, v5, :cond_31

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v8, :cond_31

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v6, :cond_12

    if-nez v6, :cond_11

    :goto_c
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_11
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_a

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_13
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_14
    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v6, :cond_1b

    if-nez v6, :cond_15

    :goto_d
    move v8, v4

    goto :goto_10

    :cond_15
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/w3;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_1a

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_e
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    if-ge v8, v5, :cond_19

    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_19

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz v6, :cond_18

    if-nez v6, :cond_16

    goto :goto_d

    :goto_10
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_16
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/vision/w3;->b([BII)Z

    move-result v9

    if-eqz v9, :cond_17

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/vision/m1;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_e

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_19
    move v4, v8

    goto/16 :goto_1f

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->d()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->b()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :pswitch_7
    const/4 v1, 0x0

    if-ne v6, v13, :cond_1f

    check-cast v12, Lcom/google/android/gms/internal/vision/n0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v4, v2

    :goto_11
    if-ge v2, v4, :cond_1d

    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    cmp-long v8, v5, v9

    if-eqz v8, :cond_1c

    const/4 v5, 0x1

    goto :goto_12

    :cond_1c
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/vision/n0;->l(Z)V

    goto :goto_11

    :cond_1d
    if-ne v2, v4, :cond_1e

    goto/16 :goto_7

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_1f
    if-nez v6, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/n0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget-wide v14, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    cmp-long v6, v14, v9

    if-eqz v6, :cond_20

    goto :goto_14

    :cond_20
    const/4 v6, 0x0

    :goto_13
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/vision/n0;->l(Z)V

    if-ge v4, v5, :cond_31

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v6

    iget v11, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v11, :cond_31

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget-wide v13, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    cmp-long v6, v13, v9

    if-eqz v6, :cond_20

    :goto_14
    const/4 v6, 0x1

    goto :goto_13

    :pswitch_8
    if-ne v6, v13, :cond_23

    check-cast v12, Lcom/google/android/gms/internal/vision/k1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_15
    if-ge v1, v2, :cond_21

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_15

    :cond_21
    if-ne v1, v2, :cond_22

    goto/16 :goto_20

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_23
    if-ne v6, v11, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/k1;

    :goto_16
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/k1;->l(I)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_16

    :pswitch_9
    if-ne v6, v13, :cond_26

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_24

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_17

    :cond_24
    if-ne v1, v2, :cond_25

    goto/16 :goto_20

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_26
    const/4 v1, 0x1

    if-ne v6, v1, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    :goto_18
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_18

    :pswitch_a
    if-ne v6, v13, :cond_27

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/vision/k0;->j([BILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    goto/16 :goto_20

    :cond_27
    if-nez v6, :cond_31

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/vision/k0;->c(I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    goto/16 :goto_20

    :pswitch_b
    if-ne v6, v13, :cond_2a

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_19
    if-ge v1, v2, :cond_28

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    goto :goto_19

    :cond_28
    if-ne v1, v2, :cond_29

    goto/16 :goto_20

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_2a
    if-nez v6, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/c2;

    :goto_1a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/c2;->l(J)V

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_1a

    :pswitch_c
    if-ne v6, v13, :cond_2d

    check-cast v12, Lcom/google/android/gms/internal/vision/h1;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_2b

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/k0;->o(I[B)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/vision/h1;->l(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1b

    :cond_2b
    if-ne v1, v2, :cond_2c

    goto :goto_20

    :cond_2c
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_2d
    if-ne v6, v11, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/h1;

    :goto_1c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->o(I[B)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/vision/h1;->l(F)V

    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_1c

    :pswitch_d
    if-ne v6, v13, :cond_30

    check-cast v12, Lcom/google/android/gms/internal/vision/v0;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    add-int/2addr v2, v1

    :goto_1d
    if-ge v1, v2, :cond_2e

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/vision/k0;->m(I[B)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/vision/v0;->l(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1d

    :cond_2e
    if-ne v1, v2, :cond_2f

    goto :goto_20

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v1

    throw v1

    :cond_30
    const/4 v1, 0x1

    if-ne v6, v1, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/vision/v0;

    :goto_1e
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/k0;->m(I[B)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/vision/v0;->l(D)V

    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_32

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ne v2, v6, :cond_32

    goto :goto_1e

    :cond_31
    :goto_1f
    move v1, v4

    :cond_32
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

.method public final k(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/vision/l0;)I
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/vision/l0;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move/from16 v12, p4

    sget-object v13, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    move-object/from16 v5, p1

    move/from16 v0, p3

    move/from16 v1, p5

    move-object/from16 v4, p6

    move-object v7, v15

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v6, 0xfffff

    const/4 v8, 0x0

    const/16 v16, 0x0

    :goto_0
    const/16 v17, 0x0

    iget-object v10, v7, Lcom/google/android/gms/internal/vision/r2;->a:[I

    if-ge v0, v12, :cond_20

    add-int/lit8 v11, v0, 0x1

    aget-byte v0, v14, v0

    if-gez v0, :cond_0

    invoke-static {v0, v14, v11, v4}, Lcom/google/android/gms/internal/vision/k0;->e(I[BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v11, v4, Lcom/google/android/gms/internal/vision/l0;->a:I

    move/from16 v29, v11

    move v11, v0

    move/from16 v0, v29

    :cond_0
    ushr-int/lit8 v9, v0, 0x3

    and-int/lit8 v15, v0, 0x7

    move/from16 p3, v0

    iget v0, v7, Lcom/google/android/gms/internal/vision/r2;->d:I

    move/from16 v21, v1

    iget v1, v7, Lcom/google/android/gms/internal/vision/r2;->c:I

    if-le v9, v2, :cond_2

    const/4 v2, 0x3

    div-int/2addr v3, v2

    if-lt v9, v1, :cond_1

    if-gt v9, v0, :cond_1

    .line 1
    invoke-virtual {v7, v9, v3}, Lcom/google/android/gms/internal/vision/r2;->w(II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    move v2, v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    if-lt v9, v1, :cond_3

    if-gt v9, v0, :cond_3

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v7, v9, v3}, Lcom/google/android/gms/internal/vision/r2;->w(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    const/4 v0, -0x1

    :goto_2
    move v2, v0

    const/4 v1, -0x1

    :goto_3
    if-ne v2, v1, :cond_4

    move/from16 v20, v6

    move v14, v9

    move-object/from16 v24, v10

    move v2, v11

    move-object/from16 v28, v13

    move/from16 v6, v21

    const/4 v9, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v11, p3

    goto/16 :goto_15

    :cond_4
    add-int/lit8 v0, v2, 0x1

    .line 3
    aget v0, v10, v0

    const/high16 v19, 0xff00000

    and-int v19, v0, v19

    move-object/from16 v20, v4

    ushr-int/lit8 v4, v19, 0x14

    const v18, 0xfffff

    and-int v1, v0, v18

    move/from16 v22, v11

    int-to-long v11, v1

    const/16 v1, 0x11

    if-gt v4, v1, :cond_11

    add-int/lit8 v1, v2, 0x2

    aget v1, v10, v1

    ushr-int/lit8 v21, v1, 0x14

    const/4 v3, 0x1

    shl-int v21, v3, v21

    move-object/from16 v24, v10

    const v10, 0xfffff

    and-int/2addr v1, v10

    move-wide/from16 v25, v11

    if-eq v1, v6, :cond_6

    if-eq v6, v10, :cond_5

    int-to-long v10, v6

    invoke-virtual {v13, v5, v10, v11, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v10, v1

    invoke-virtual {v13, v5, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v6, v1

    :cond_6
    const/4 v1, 0x5

    packed-switch v4, :pswitch_data_0

    move/from16 v12, p3

    move v10, v2

    move/from16 p3, v9

    move/from16 v5, v22

    const/16 v16, 0x0

    goto/16 :goto_f

    :pswitch_0
    const/4 v4, 0x3

    if-ne v15, v4, :cond_8

    shl-int/lit8 v0, v9, 0x3

    or-int/lit8 v4, v0, 0x4

    invoke-virtual {v7, v2}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v0

    move/from16 v12, p3

    const/4 v11, -0x1

    move-object/from16 v1, p2

    move v10, v2

    move/from16 v2, v22

    const/16 v16, 0x0

    move/from16 v3, p4

    move-object/from16 v15, v20

    move-object v11, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/k0;->g(Lcom/google/android/gms/internal/vision/d3;[BIIILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    and-int v1, v8, v21

    if-nez v1, :cond_7

    iget-object v1, v15, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    move-wide/from16 v2, v25

    goto :goto_4

    :cond_7
    move-wide/from16 v2, v25

    invoke-virtual {v13, v11, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v15, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    move-result-object v1

    :goto_4
    invoke-virtual {v13, v11, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v1, v8, v21

    move v8, v1

    move v14, v9

    move/from16 v16, v10

    move-object v5, v11

    move v11, v12

    move-object/from16 v28, v13

    move-object v4, v15

    goto/16 :goto_d

    :cond_8
    move/from16 v12, p3

    move v10, v2

    const/16 v16, 0x0

    goto :goto_5

    :pswitch_1
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move-object/from16 v4, v20

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-nez v15, :cond_9

    move/from16 v5, v22

    invoke-static {v14, v5, v4}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v15

    iget-wide v0, v4, Lcom/google/android/gms/internal/vision/l0;->b:J

    invoke-static {v0, v1}, Lc5/w;->K(J)J

    move-result-wide v22

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 p3, v9

    move-object v9, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v8, v21

    move v8, v0

    move v0, v15

    goto/16 :goto_b

    :cond_9
    :goto_5
    move/from16 p3, v9

    move/from16 v5, v22

    goto/16 :goto_f

    :pswitch_2
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-nez v15, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-static {v1}, Lc5/w;->X(I)I

    move-result v1

    goto/16 :goto_c

    :pswitch_3
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-nez v15, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/vision/r2;->C(I)Lcom/google/android/gms/internal/vision/n1;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/vision/n1;->f(I)Z

    move-result v4

    if-eqz v4, :cond_a

    goto/16 :goto_c

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/r2;->H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/android/gms/internal/vision/q3;->a(ILjava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_4
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/4 v0, 0x2

    const/16 v16, 0x0

    if-ne v15, v0, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->q([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    move/from16 v4, p4

    move-wide v1, v2

    goto :goto_7

    :pswitch_5
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/4 v0, 0x2

    const/16 v16, 0x0

    if-ne v15, v0, :cond_c

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v0

    move/from16 v4, p4

    move-wide v1, v2

    invoke-static {v0, v14, v5, v4, v9}, Lcom/google/android/gms/internal/vision/k0;->h(Lcom/google/android/gms/internal/vision/d3;[BIILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    and-int v3, v8, v21

    if-nez v3, :cond_b

    iget-object v3, v9, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    goto :goto_6

    :cond_b
    invoke-virtual {v13, v11, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v9, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    move-result-object v3

    :goto_6
    invoke-virtual {v13, v11, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    :cond_c
    move/from16 v4, p4

    goto/16 :goto_f

    :pswitch_6
    move/from16 v12, p3

    move/from16 v4, p4

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v1, v25

    const/4 v3, 0x2

    const/16 v16, 0x0

    if-ne v15, v3, :cond_10

    const/high16 v3, 0x20000000

    and-int/2addr v0, v3

    if-nez v0, :cond_d

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->n([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    goto :goto_7

    :cond_d
    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->p([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    :goto_7
    iget-object v3, v9, Lcom/google/android/gms/internal/vision/l0;->c:Ljava/lang/Object;

    invoke-virtual {v13, v11, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_7
    move/from16 v12, p3

    move/from16 v4, p4

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v1, v25

    const/16 v16, 0x0

    if-nez v15, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget-wide v3, v9, Lcom/google/android/gms/internal/vision/l0;->b:J

    const-wide/16 v22, 0x0

    cmp-long v5, v3, v22

    if-eqz v5, :cond_e

    const/4 v3, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    invoke-static {v11, v1, v2, v3}, Lcom/google/android/gms/internal/vision/t3;->g(Ljava/lang/Object;JZ)V

    :goto_9
    or-int v1, v8, v21

    move/from16 v14, p3

    move v8, v1

    move-object v4, v9

    move/from16 v16, v10

    move-object v5, v11

    move v11, v12

    move-object/from16 v28, v13

    goto/16 :goto_d

    :pswitch_8
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-ne v15, v1, :cond_10

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/vision/k0;->a(I[B)I

    move-result v0

    invoke-virtual {v13, v11, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_e

    :pswitch_9
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/4 v0, 0x1

    const/16 v16, 0x0

    if-ne v15, v0, :cond_10

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/vision/k0;->l(I[B)J

    move-result-wide v22

    move-object v0, v13

    move-object/from16 v1, p1

    move v15, v5

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v15, 0x8

    :goto_a
    or-int v1, v8, v21

    move v8, v1

    :goto_b
    move-object/from16 v15, p0

    move/from16 v2, p3

    move/from16 v1, p5

    move-object v4, v9

    move v3, v10

    move-object v5, v11

    move/from16 v16, v12

    goto/16 :goto_11

    :pswitch_a
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-nez v15, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/vision/l0;->a:I

    :cond_f
    :goto_c
    invoke-virtual {v13, v11, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_a

    :pswitch_b
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-nez v15, :cond_10

    invoke-static {v14, v5, v9}, Lcom/google/android/gms/internal/vision/k0;->k([BILcom/google/android/gms/internal/vision/l0;)I

    move-result v15

    iget-wide v4, v9, Lcom/google/android/gms/internal/vision/l0;->b:J

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v8, v21

    move/from16 v14, p3

    move v8, v0

    move-object v4, v9

    move/from16 v16, v10

    move-object v5, v11

    move v11, v12

    move-object/from16 v28, v13

    move v0, v15

    :goto_d
    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object/from16 v10, p0

    move-object/from16 v12, p6

    goto/16 :goto_19

    :pswitch_c
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/16 v16, 0x0

    if-ne v15, v1, :cond_10

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/vision/k0;->o(I[B)F

    move-result v0

    invoke-static {v11, v2, v3, v0}, Lcom/google/android/gms/internal/vision/t3;->e(Ljava/lang/Object;JF)V

    :goto_e
    add-int/lit8 v0, v5, 0x4

    goto :goto_a

    :pswitch_d
    move/from16 v12, p3

    move v10, v2

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    move-wide/from16 v2, v25

    const/4 v0, 0x1

    const/16 v16, 0x0

    if-ne v15, v0, :cond_10

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/vision/k0;->m(I[B)D

    move-result-wide v0

    invoke-static {v11, v2, v3, v0, v1}, Lcom/google/android/gms/internal/vision/t3;->d(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v5, 0x8

    goto/16 :goto_a

    :cond_10
    :goto_f
    move/from16 v14, p3

    move v2, v5

    move/from16 v20, v6

    move v9, v10

    move v11, v12

    move-object/from16 v28, v13

    const/16 v18, 0x0

    const/16 v19, -0x1

    move/from16 v6, p5

    goto/16 :goto_15

    :cond_11
    move-object/from16 v24, v10

    const/16 v16, 0x0

    move v10, v2

    move-wide v2, v11

    move/from16 v12, p3

    move-object v11, v5

    move/from16 p3, v9

    move-object/from16 v9, v20

    move/from16 v5, v22

    const/16 v1, 0x1b

    if-ne v4, v1, :cond_15

    const/4 v1, 0x2

    if-ne v15, v1, :cond_14

    invoke-virtual {v13, v11, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/r1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/r1;->a()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    goto :goto_10

    :cond_12
    shl-int/lit8 v1, v1, 0x1

    :goto_10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/r1;->f(I)Lcom/google/android/gms/internal/vision/r1;

    move-result-object v0

    invoke-virtual {v13, v11, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v15, v0

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/vision/r2;->m(I)Lcom/google/android/gms/internal/vision/d3;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move v3, v5

    move/from16 v4, p4

    move-object v5, v15

    move/from16 v20, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/vision/k0;->f(Lcom/google/android/gms/internal/vision/d3;I[BIILcom/google/android/gms/internal/vision/r1;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    move-object/from16 v15, p0

    move/from16 v2, p3

    move/from16 v1, p5

    move-object v4, v9

    move v3, v10

    move-object v5, v11

    move/from16 v16, v12

    move/from16 v6, v20

    :goto_11
    move/from16 v12, p4

    goto/16 :goto_0

    :cond_14
    move/from16 v20, v6

    move/from16 v14, p3

    move v15, v5

    move/from16 v27, v8

    move/from16 v16, v10

    move/from16 v23, v12

    move-object/from16 v28, v13

    const/16 v18, 0x0

    const/16 v19, -0x1

    goto/16 :goto_12

    :cond_15
    move/from16 v20, v6

    const/16 v1, 0x31

    if-gt v4, v1, :cond_17

    int-to-long v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v21, v2

    move-object/from16 v2, p2

    move v3, v5

    move v11, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move v5, v12

    move-wide/from16 v25, v6

    move/from16 v6, p3

    move v7, v15

    move/from16 v27, v8

    move v8, v10

    move/from16 v15, p3

    move/from16 v16, v10

    const/16 v18, 0x0

    move-wide/from16 v9, v25

    move/from16 v15, v23

    const/16 v19, -0x1

    move/from16 v23, v12

    move-object/from16 v28, v13

    move-wide/from16 v12, v21

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/vision/r2;->j(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    if-ne v0, v15, :cond_16

    move/from16 v14, p3

    goto/16 :goto_14

    :cond_16
    move-object/from16 v10, p0

    move/from16 v14, p3

    move/from16 v1, p5

    move-object/from16 v12, p6

    move/from16 v3, v16

    move/from16 v6, v20

    move/from16 v11, v23

    move/from16 v8, v27

    goto/16 :goto_18

    :cond_17
    move/from16 v14, p3

    move-wide/from16 v21, v2

    move v11, v4

    move/from16 v27, v8

    move/from16 v16, v10

    move/from16 v23, v12

    move-object/from16 v28, v13

    move v7, v15

    const/16 v18, 0x0

    const/16 v19, -0x1

    move v15, v5

    const/16 v1, 0x32

    if-ne v11, v1, :cond_19

    const/4 v1, 0x2

    if-eq v7, v1, :cond_18

    :goto_12
    move/from16 v6, p5

    move v2, v15

    :goto_13
    move/from16 v9, v16

    move/from16 v11, v23

    move/from16 v8, v27

    goto :goto_15

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v16

    move-wide/from16 v6, v21

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/vision/r2;->t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/l0;)V

    throw v17

    :cond_19
    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v23

    move v6, v14

    move v9, v11

    move-wide/from16 v10, v21

    move/from16 v12, v16

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/vision/r2;->i(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    if-ne v0, v15, :cond_1f

    :goto_14
    move/from16 v6, p5

    move v2, v0

    goto :goto_13

    :goto_15
    if-ne v11, v6, :cond_1b

    if-nez v6, :cond_1a

    goto :goto_16

    :cond_1a
    move-object/from16 v7, p0

    move-object v10, v7

    move v0, v2

    move v1, v6

    move v2, v11

    move/from16 v6, v20

    const v3, 0xfffff

    move-object/from16 v11, p1

    goto/16 :goto_1a

    :cond_1b
    :goto_16
    move-object/from16 v10, p0

    iget-boolean v0, v10, Lcom/google/android/gms/internal/vision/r2;->f:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/google/android/gms/internal/vision/w0;->b()Lcom/google/android/gms/internal/vision/w0;

    move-result-object v0

    move-object/from16 v12, p6

    iget-object v1, v12, Lcom/google/android/gms/internal/vision/l0;->d:Lcom/google/android/gms/internal/vision/w0;

    if-eq v1, v0, :cond_1e

    iget-object v0, v10, Lcom/google/android/gms/internal/vision/r2;->e:Lcom/google/android/gms/internal/vision/n2;

    invoke-virtual {v1, v14, v0}, Lcom/google/android/gms/internal/vision/w0;->a(ILcom/google/android/gms/internal/vision/n2;)Lcom/google/android/gms/internal/vision/i1$d;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/r2;->H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v4

    move v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/k0;->d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    goto :goto_17

    :cond_1c
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/i1$c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/i1$c;->o()Lcom/google/android/gms/internal/vision/c1;

    throw v17

    :cond_1d
    move-object/from16 v12, p6

    :cond_1e
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/r2;->H(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    move-result-object v4

    move v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/vision/k0;->d(I[BIILcom/google/android/gms/internal/vision/q3;Lcom/google/android/gms/internal/vision/l0;)I

    move-result v0

    :goto_17
    move v1, v6

    move v3, v9

    move/from16 v6, v20

    :goto_18
    move-object/from16 v5, p1

    move-object v7, v10

    move-object v15, v7

    move/from16 v16, v11

    move-object v4, v12

    move v2, v14

    move-object/from16 v13, v28

    move-object/from16 v14, p2

    goto/16 :goto_11

    :cond_1f
    move-object/from16 v10, p0

    move-object/from16 v12, p6

    move/from16 v11, v23

    move-object/from16 v5, p1

    move-object v7, v10

    move-object v4, v12

    move/from16 v6, v20

    move/from16 v8, v27

    :goto_19
    move/from16 v12, p4

    move/from16 v1, p5

    move-object v15, v10

    move v2, v14

    move/from16 v3, v16

    move-object/from16 v13, v28

    move-object/from16 v14, p2

    move/from16 v16, v11

    goto/16 :goto_0

    :cond_20
    move/from16 v21, v1

    move-object v11, v5

    move/from16 v20, v6

    move/from16 v27, v8

    move-object/from16 v24, v10

    move-object/from16 v28, v13

    move-object v10, v15

    move/from16 v2, v16

    const v3, 0xfffff

    :goto_1a
    if-eq v6, v3, :cond_21

    int-to-long v4, v6

    move-object/from16 v6, v28

    invoke-virtual {v6, v11, v4, v5, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    iget v4, v7, Lcom/google/android/gms/internal/vision/r2;->i:I

    :goto_1b
    iget v5, v7, Lcom/google/android/gms/internal/vision/r2;->j:I

    if-ge v4, v5, :cond_26

    iget-object v5, v7, Lcom/google/android/gms/internal/vision/r2;->h:[I

    aget v5, v5, v4

    .line 4
    aget v6, v24, v5

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v6

    and-int/2addr v6, v3

    int-to-long v8, v6

    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_22

    goto :goto_1d

    :cond_22
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/vision/r2;->C(I)Lcom/google/android/gms/internal/vision/n1;

    move-result-object v8

    if-nez v8, :cond_23

    goto :goto_1d

    :cond_23
    iget-object v9, v7, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    invoke-interface {v9, v6}, Lcom/google/android/gms/internal/vision/k2;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    move-result-object v6

    .line 5
    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v5}, Lcom/google/android/gms/internal/vision/k2;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/vision/i2;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/google/android/gms/internal/vision/n1;->f(I)Z

    move-result v9

    if-eqz v9, :cond_24

    goto :goto_1c

    :cond_24
    iget-object v0, v7, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/n3;->a()Lcom/google/android/gms/internal/vision/q3;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    throw v17

    :cond_25
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_26
    if-nez v1, :cond_28

    move/from16 v3, p4

    if-ne v0, v3, :cond_27

    goto :goto_1e

    .line 7
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

    move-result-object v0

    throw v0

    :cond_28
    move/from16 v3, p4

    if-gt v0, v3, :cond_29

    if-ne v2, v1, :cond_29

    :goto_1e
    return v0

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->c()Lcom/google/android/gms/internal/vision/q1;

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

.method public final m(I)Lcom/google/android/gms/internal/vision/d3;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/vision/d3;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/vision/a3;->c:Lcom/google/android/gms/internal/vision/a3;

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
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/vision/a3;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/d3;

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

.method public final q(Ljava/lang/Object;Ljava/lang/Object;)V
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
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

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
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->A(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_6

    .line 42
    .line 43
    :pswitch_2
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->u(IILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    :goto_1
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/vision/r2;->y(IILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/vision/e3;->a:Ljava/lang/Class;

    .line 62
    .line 63
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-object v5, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    .line 72
    .line 73
    invoke-interface {v5, v1, v2}, Lcom/google/android/gms/internal/vision/k2;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_6

    .line 81
    .line 82
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->l:Lcom/google/android/gms/internal/vision/z1;

    .line 83
    .line 84
    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/vision/z1;->a(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_6

    .line 88
    .line 89
    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->r(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_0

    .line 150
    .line 151
    :goto_2
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_0

    .line 164
    .line 165
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->g(Ljava/lang/Object;JZ)V

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_0

    .line 192
    .line 193
    :goto_3
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/vision/t3;->i(IJLjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    goto :goto_5

    .line 201
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

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
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    .line 214
    :goto_4
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 215
    .line 216
    .line 217
    move-result-wide v1

    .line 218
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/vision/t3;->f(Ljava/lang/Object;JJ)V

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    .line 228
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/vision/t3;->e(Ljava/lang/Object;JF)V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_0

    .line 241
    .line 242
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 243
    .line 244
    .line 245
    move-result-wide v1

    .line 246
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/vision/t3;->d(Ljava/lang/Object;JD)V

    .line 247
    .line 248
    .line 249
    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/r2;->z(ILjava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/vision/e3;->a:Ljava/lang/Class;

    .line 257
    .line 258
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->m:Lcom/google/android/gms/internal/vision/n3;

    .line 259
    .line 260
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/vision/n3;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vision/n3;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/q3;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/vision/n3;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/r2;->f:Z

    .line 276
    .line 277
    if-eqz v0, :cond_2

    .line 278
    .line 279
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->n:Lcom/google/android/gms/internal/vision/y0;

    .line 280
    .line 281
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/vision/e3;->j(Lcom/google/android/gms/internal/vision/y0;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    :cond_2
    return-void

    .line 285
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

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/vision/r2;->v(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    invoke-static {v2, p3}, Lcom/google/android/gms/internal/vision/m1;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i1;

    move-result-object p3

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->z(ILjava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/vision/t3;->j(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/r2;->z(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/vision/u0;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    .line 8
    .line 9
    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/vision/k2;->b(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/vision/k2;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/internal/vision/i2;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-nez p4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Ljava/util/Map$Entry;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/google/android/gms/internal/vision/u0;->a:Lcom/google/android/gms/internal/vision/t0;

    .line 41
    .line 42
    const/4 p4, 0x2

    .line 43
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/vision/t0;->i(II)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    throw p1

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public final t(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/vision/l0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/vision/r2;->x(I)Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Lcom/google/android/gms/internal/vision/r2;->q:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/vision/r2;->o:Lcom/google/android/gms/internal/vision/k2;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/k2;->e(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/google/android/gms/internal/vision/k2;->k()Lcom/google/android/gms/internal/vision/i2;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/google/android/gms/internal/vision/k2;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    invoke-virtual {v0, p1, p6, p7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v3

    :cond_0
    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/vision/k2;->b(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/vision/k2;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/i2;

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/vision/k0;->i([BILcom/google/android/gms/internal/vision/l0;)I

    move-result p1

    iget p2, p8, Lcom/google/android/gms/internal/vision/l0;->a:I

    if-ltz p2, :cond_2

    sub-int/2addr p4, p1

    if-le p2, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/q1;->a()Lcom/google/android/gms/internal/vision/q1;

    move-result-object p1

    throw p1
.end method

.method public final u(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

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
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

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
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 4
    .line 5
    aget v0, v1, v0

    .line 6
    .line 7
    const v1, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int v2, v0, v1

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    const-wide/32 v4, 0xfffff

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v7, 0x1

    .line 18
    cmp-long v8, v2, v4

    .line 19
    .line 20
    if-nez v8, :cond_14

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/r2;->E(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    and-int v0, p1, v1

    .line 27
    .line 28
    int-to-long v0, v0

    .line 29
    const/high16 v2, 0xff00000

    .line 30
    .line 31
    and-int/2addr p1, v2

    .line 32
    ushr-int/lit8 p1, p1, 0x14

    .line 33
    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    packed-switch p1, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    return v7

    .line 52
    :cond_0
    return v6

    .line 53
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    cmp-long v0, p1, v2

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    return v7

    .line 62
    :cond_1
    return v6

    .line 63
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    return v7

    .line 70
    :cond_2
    return v6

    .line 71
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide p1

    .line 75
    cmp-long v0, p1, v2

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    return v7

    .line 80
    :cond_3
    return v6

    .line 81
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    return v7

    .line 88
    :cond_4
    return v6

    .line 89
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    return v7

    .line 96
    :cond_5
    return v6

    .line 97
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    return v7

    .line 104
    :cond_6
    return v6

    .line 105
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/vision/p0;->b:Lcom/google/android/gms/internal/vision/s0;

    .line 106
    .line 107
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/vision/s0;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_7

    .line 116
    .line 117
    return v7

    .line 118
    :cond_7
    return v6

    .line 119
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    return v7

    .line 126
    :cond_8
    return v6

    .line 127
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->u(JLjava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    instance-of p2, p1, Ljava/lang/String;

    .line 132
    .line 133
    if-eqz p2, :cond_a

    .line 134
    .line 135
    check-cast p1, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-nez p1, :cond_9

    .line 142
    .line 143
    return v7

    .line 144
    :cond_9
    return v6

    .line 145
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/vision/p0;

    .line 146
    .line 147
    if-eqz p2, :cond_c

    .line 148
    .line 149
    sget-object p2, Lcom/google/android/gms/internal/vision/p0;->b:Lcom/google/android/gms/internal/vision/s0;

    .line 150
    .line 151
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/vision/s0;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_b

    .line 156
    .line 157
    return v7

    .line 158
    :cond_b
    return v6

    .line 159
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->p(JLjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    return p1

    .line 170
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_d

    .line 175
    .line 176
    return v7

    .line 177
    :cond_d
    return v6

    .line 178
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 179
    .line 180
    .line 181
    move-result-wide p1

    .line 182
    cmp-long v0, p1, v2

    .line 183
    .line 184
    if-eqz v0, :cond_e

    .line 185
    .line 186
    return v7

    .line 187
    :cond_e
    return v6

    .line 188
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_f

    .line 193
    .line 194
    return v7

    .line 195
    :cond_f
    return v6

    .line 196
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 197
    .line 198
    .line 199
    move-result-wide p1

    .line 200
    cmp-long v0, p1, v2

    .line 201
    .line 202
    if-eqz v0, :cond_10

    .line 203
    .line 204
    return v7

    .line 205
    :cond_10
    return v6

    .line 206
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->l(JLjava/lang/Object;)J

    .line 207
    .line 208
    .line 209
    move-result-wide p1

    .line 210
    cmp-long v0, p1, v2

    .line 211
    .line 212
    if-eqz v0, :cond_11

    .line 213
    .line 214
    return v7

    .line 215
    :cond_11
    return v6

    .line 216
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->q(JLjava/lang/Object;)F

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    const/4 p2, 0x0

    .line 221
    cmpl-float p1, p1, p2

    .line 222
    .line 223
    if-eqz p1, :cond_12

    .line 224
    .line 225
    return v7

    .line 226
    :cond_12
    return v6

    .line 227
    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->t(JLjava/lang/Object;)D

    .line 228
    .line 229
    .line 230
    move-result-wide p1

    .line 231
    const-wide/16 v0, 0x0

    .line 232
    .line 233
    cmpl-double v2, p1, v0

    .line 234
    .line 235
    if-eqz v2, :cond_13

    .line 236
    .line 237
    return v7

    .line 238
    :cond_13
    return v6

    .line 239
    :cond_14
    ushr-int/lit8 p1, v0, 0x14

    .line 240
    .line 241
    shl-int p1, v7, p1

    .line 242
    .line 243
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    and-int/2addr p1, p2

    .line 248
    if-eqz p1, :cond_15

    .line 249
    .line 250
    return v7

    .line 251
    :cond_15
    return v6

    .line 252
    nop

    .line 253
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

.method public final w(II)I
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v2, v1, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    return v3

    :cond_0
    if-ge p1, v4, :cond_1

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final x(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final y(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

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
    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/vision/t3;->i(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final z(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/r2;->a:[I

    .line 4
    .line 5
    aget p1, v0, p1

    .line 6
    .line 7
    const v0, 0xfffff

    .line 8
    .line 9
    .line 10
    and-int/2addr v0, p1

    .line 11
    int-to-long v0, v0

    .line 12
    const-wide/32 v2, 0xfffff

    .line 13
    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    ushr-int/lit8 p1, p1, 0x14

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    shl-int p1, v2, p1

    .line 24
    .line 25
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->b(JLjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/vision/t3;->i(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
