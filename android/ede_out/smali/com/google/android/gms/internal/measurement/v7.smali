.class public final Lcom/google/android/gms/internal/measurement/v7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/d8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/measurement/d8<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final n:[I

.field public static final o:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/android/gms/internal/measurement/s7;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/measurement/g7;

.field public final l:Lcom/google/android/gms/internal/measurement/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/o8<",
            "**>;"
        }
    .end annotation
.end field

.field public final m:Lcom/google/android/gms/internal/measurement/e6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/e6<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/measurement/v7;->n:[I

    invoke-static {}, Lcom/google/android/gms/internal/measurement/y8;->k()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/s7;Z[IIILcom/google/android/gms/internal/measurement/g7;Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/n7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/measurement/v7;->c:I

    iput p4, p0, Lcom/google/android/gms/internal/measurement/v7;->d:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/v7;->g:Z

    if-eqz p12, :cond_0

    invoke-virtual {p12, p5}, Lcom/google/android/gms/internal/measurement/e6;->c(Lcom/google/android/gms/internal/measurement/s7;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/measurement/v7;->h:[I

    iput p8, p0, Lcom/google/android/gms/internal/measurement/v7;->i:I

    iput p9, p0, Lcom/google/android/gms/internal/measurement/v7;->j:I

    iput-object p10, p0, Lcom/google/android/gms/internal/measurement/v7;->k:Lcom/google/android/gms/internal/measurement/g7;

    iput-object p11, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    iput-object p12, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/v7;->e:Lcom/google/android/gms/internal/measurement/s7;

    return-void
.end method

.method public static C(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static j(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
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
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const/16 v6, 0x28

    .line 63
    .line 64
    invoke-static {v2, v6, v3, v4}, Landroid/support/v4/media/a;->a(IIII)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const-string v2, "Field "

    .line 72
    .line 73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p1, " for "

    .line 80
    .line 81
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p0, " not found. Known fields are "

    .line 88
    .line 89
    invoke-static {v5, p0, v0}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1
.end method

.method public static final w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V
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
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/a6;->a:Lcom/google/android/gms/internal/measurement/z5;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/z5;->R(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/measurement/v5;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/measurement/a6;->f(ILcom/google/android/gms/internal/measurement/v5;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;
    .locals 2

    check-cast p0, Lcom/google/android/gms/internal/measurement/q6;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    sget-object v1, Lcom/google/android/gms/internal/measurement/p8;->f:Lcom/google/android/gms/internal/measurement/p8;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/p8;->b()Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    :cond_0
    return-object v0
.end method

.method public static z(Lcom/google/android/gms/internal/measurement/c8;Lcom/google/android/gms/internal/measurement/g7;Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/n7;)Lcom/google/android/gms/internal/measurement/v7;
    .locals 33

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/c8;->c()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/c8;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_4

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_2
    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_3

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_2

    :cond_3
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_4
    if-nez v6, :cond_5

    sget-object v6, Lcom/google/android/gms/internal/measurement/v7;->n:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_7

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_3
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_6

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_3

    :cond_6
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_7
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_9

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_8

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_4

    :cond_8
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_9
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_5

    :cond_a
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_c

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_6

    :cond_c
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_e

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_e
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_11

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_10
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_11
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_13

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_12
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_13
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_15

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_14
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_15
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v32, v14

    move v14, v12

    move/from16 v12, v32

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/c8;->e()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/c8;->a()Lcom/google/android/gms/internal/measurement/s7;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    mul-int/lit8 v7, v11, 0x3

    new-array v7, v7, [I

    add-int/2addr v11, v11

    new-array v11, v11, [Ljava/lang/Object;

    add-int/2addr v14, v12

    move/from16 v20, v12

    move/from16 v21, v14

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_c
    if-ge v4, v2, :cond_32

    add-int/lit8 v22, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_17

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v1, v22

    const/16 v22, 0xd

    :goto_d
    add-int/lit8 v24, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_16

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v22

    or-int/2addr v4, v1

    add-int/lit8 v22, v22, 0xd

    move/from16 v1, v24

    goto :goto_d

    :cond_16
    shl-int v1, v1, v22

    or-int/2addr v4, v1

    move/from16 v1, v24

    goto :goto_e

    :cond_17
    move/from16 v1, v22

    :goto_e
    add-int/lit8 v22, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_19

    and-int/lit16 v1, v1, 0x1fff

    move/from16 v5, v22

    const/16 v22, 0xd

    :goto_f
    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_18

    and-int/lit16 v2, v5, 0x1fff

    shl-int v2, v2, v22

    or-int/2addr v1, v2

    add-int/lit8 v22, v22, 0xd

    move/from16 v5, v25

    move/from16 v2, v26

    goto :goto_f

    :cond_18
    shl-int v2, v5, v22

    or-int/2addr v1, v2

    move/from16 v2, v25

    goto :goto_10

    :cond_19
    move/from16 v26, v2

    move/from16 v2, v22

    :goto_10
    and-int/lit16 v5, v1, 0xff

    move/from16 v22, v14

    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_1a

    add-int/lit8 v14, v18, 0x1

    aput v19, v13, v18

    move/from16 v18, v14

    :cond_1a
    sget-object v14, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    move/from16 v29, v12

    const/16 v12, 0x33

    if-lt v5, v12, :cond_22

    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v12

    const v12, 0xd800

    if-lt v2, v12, :cond_1c

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v12, v25

    const/16 v25, 0xd

    :goto_11
    add-int/lit8 v30, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v31, v9

    const v9, 0xd800

    if-lt v12, v9, :cond_1b

    and-int/lit16 v9, v12, 0x1fff

    shl-int v9, v9, v25

    or-int/2addr v2, v9

    add-int/lit8 v25, v25, 0xd

    move/from16 v12, v30

    move/from16 v9, v31

    goto :goto_11

    :cond_1b
    shl-int v9, v12, v25

    or-int/2addr v2, v9

    move/from16 v12, v30

    goto :goto_12

    :cond_1c
    move/from16 v31, v9

    move/from16 v12, v25

    :goto_12
    add-int/lit8 v9, v5, -0x33

    move/from16 v25, v12

    const/16 v12, 0x9

    if-eq v9, v12, :cond_1e

    const/16 v12, 0x11

    if-ne v9, v12, :cond_1d

    goto :goto_13

    :cond_1d
    const/16 v12, 0xc

    if-ne v9, v12, :cond_1f

    if-nez v10, :cond_1f

    div-int/lit8 v9, v19, 0x3

    add-int/lit8 v12, v16, 0x1

    add-int/2addr v9, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v16, v15, v16

    aput-object v16, v11, v9

    goto :goto_14

    :cond_1e
    :goto_13
    div-int/lit8 v9, v19, 0x3

    add-int/lit8 v12, v16, 0x1

    add-int/2addr v9, v9

    const/16 v23, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v16, v15, v16

    aput-object v16, v11, v9

    :goto_14
    move/from16 v16, v12

    :cond_1f
    add-int/2addr v2, v2

    aget-object v9, v15, v2

    instance-of v12, v9, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_20

    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/v7;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    aput-object v9, v15, v2

    :goto_15
    move v12, v8

    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v15, v2

    move/from16 v27, v9

    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_21

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_16

    :cond_21
    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/v7;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v15, v2

    :goto_16
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move v8, v2

    move/from16 v28, v25

    move/from16 v9, v27

    const/4 v2, 0x0

    const/16 v23, 0x1

    move/from16 v27, v16

    move/from16 v16, v12

    move-object v12, v15

    goto/16 :goto_21

    :cond_22
    move v12, v8

    move/from16 v31, v9

    add-int/lit8 v8, v16, 0x1

    aget-object v9, v15, v16

    check-cast v9, Ljava/lang/String;

    invoke-static {v3, v9}, Lcom/google/android/gms/internal/measurement/v7;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v16, v12

    const/16 v12, 0x9

    if-eq v5, v12, :cond_2a

    const/16 v12, 0x11

    if-ne v5, v12, :cond_23

    goto :goto_1b

    :cond_23
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_29

    const/16 v12, 0x31

    if-ne v5, v12, :cond_24

    goto :goto_1a

    :cond_24
    const/16 v12, 0xc

    if-eq v5, v12, :cond_28

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_28

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_25

    goto :goto_19

    :cond_25
    const/16 v12, 0x32

    if-ne v5, v12, :cond_27

    add-int/lit8 v12, v20, 0x1

    aput v19, v13, v20

    div-int/lit8 v20, v19, 0x3

    add-int v20, v20, v20

    add-int/lit8 v27, v8, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v20

    and-int/lit16 v8, v1, 0x800

    if-eqz v8, :cond_26

    add-int/lit8 v8, v27, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-object v27, v15, v27

    aput-object v27, v11, v20

    goto :goto_17

    :cond_26
    move/from16 v8, v27

    :goto_17
    move/from16 v20, v12

    :cond_27
    :goto_18
    const/16 v23, 0x1

    goto :goto_1c

    :cond_28
    :goto_19
    if-nez v10, :cond_27

    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v27, v8, 0x1

    add-int/2addr v12, v12

    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v12

    move/from16 v8, v27

    goto :goto_18

    :cond_29
    :goto_1a
    div-int/lit8 v12, v19, 0x3

    add-int/lit8 v27, v8, 0x1

    add-int/2addr v12, v12

    const/16 v23, 0x1

    add-int/lit8 v12, v12, 0x1

    aget-object v8, v15, v8

    aput-object v8, v11, v12

    move/from16 v8, v27

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/16 v23, 0x1

    div-int/lit8 v12, v19, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_1c
    move v12, v8

    invoke-virtual {v14, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    and-int/lit16 v8, v1, 0x1000

    move/from16 v27, v12

    const/16 v12, 0x1000

    if-ne v8, v12, :cond_2e

    const/16 v8, 0x11

    if-gt v5, v8, :cond_2e

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_2c

    and-int/lit16 v2, v2, 0x1fff

    const/16 v24, 0xd

    :goto_1d
    add-int/lit8 v28, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v12, :cond_2b

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v24

    or-int/2addr v2, v8

    add-int/lit8 v24, v24, 0xd

    move/from16 v8, v28

    goto :goto_1d

    :cond_2b
    shl-int v8, v8, v24

    or-int/2addr v2, v8

    goto :goto_1e

    :cond_2c
    move/from16 v28, v8

    :goto_1e
    add-int v8, v6, v6

    div-int/lit8 v24, v2, 0x20

    add-int v24, v24, v8

    aget-object v8, v15, v24

    instance-of v12, v8, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_2d

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_1f

    :cond_2d
    check-cast v8, Ljava/lang/String;

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/v7;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v15, v24

    :goto_1f
    move-object v12, v15

    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v14

    long-to-int v8, v14

    rem-int/lit8 v2, v2, 0x20

    goto :goto_20

    :cond_2e
    move-object v12, v15

    const v8, 0xfffff

    move/from16 v28, v2

    const/4 v2, 0x0

    :goto_20
    const/16 v14, 0x12

    if-lt v5, v14, :cond_2f

    const/16 v14, 0x31

    if-gt v5, v14, :cond_2f

    add-int/lit8 v14, v21, 0x1

    aput v9, v13, v21

    move/from16 v21, v14

    :cond_2f
    :goto_21
    add-int/lit8 v14, v19, 0x1

    aput v4, v7, v19

    add-int/lit8 v4, v14, 0x1

    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_30

    const/high16 v15, 0x20000000

    goto :goto_22

    :cond_30
    const/4 v15, 0x0

    :goto_22
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_31

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_31
    const/4 v1, 0x0

    :goto_23
    or-int/2addr v1, v15

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v1, v5

    or-int/2addr v1, v9

    aput v1, v7, v14

    add-int/lit8 v19, v4, 0x1

    shl-int/lit8 v1, v2, 0x14

    or-int/2addr v1, v8

    aput v1, v7, v4

    move-object v15, v12

    move/from16 v8, v16

    move/from16 v14, v22

    move/from16 v2, v26

    move/from16 v16, v27

    move/from16 v4, v28

    move/from16 v12, v29

    move/from16 v9, v31

    const v5, 0xd800

    goto/16 :goto_c

    :cond_32
    move/from16 v16, v8

    move/from16 v31, v9

    move/from16 v29, v12

    move/from16 v22, v14

    new-instance v0, Lcom/google/android/gms/internal/measurement/v7;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/measurement/c8;->a()Lcom/google/android/gms/internal/measurement/s7;

    move-result-object v9

    move-object v4, v0

    move-object v5, v7

    move-object v6, v11

    move/from16 v7, v16

    move/from16 v8, v31

    move-object v11, v13

    move/from16 v13, v22

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v4 .. v17}, Lcom/google/android/gms/internal/measurement/v7;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/measurement/s7;Z[IIILcom/google/android/gms/internal/measurement/g7;Lcom/google/android/gms/internal/measurement/o8;Lcom/google/android/gms/internal/measurement/e6;Lcom/google/android/gms/internal/measurement/n7;)V

    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const v3, 0xfffff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    array-length v9, v8

    if-ge v4, v9, :cond_5

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    move-result v9

    aget v10, v8, v4

    ushr-int/lit8 v11, v9, 0x14

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0x11

    const/4 v13, 0x1

    sget-object v14, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    if-gt v11, v12, :cond_0

    add-int/lit8 v12, v4, 0x2

    aget v8, v8, v12

    and-int v12, v8, v3

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v13, v8

    if-eq v12, v6, :cond_1

    int-to-long v6, v12

    invoke-virtual {v14, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v7

    move v6, v12

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :cond_1
    :goto_1
    and-int/2addr v9, v3

    int-to-long v2, v9

    const/16 v9, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    xor-long/2addr v2, v10

    goto/16 :goto_12

    :pswitch_2
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    add-int v8, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v8

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_7
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :pswitch_8
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_c

    :pswitch_9
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/v5;

    if-eqz v3, :cond_2

    :goto_3
    check-cast v2, Lcom/google/android/gms/internal/measurement/v5;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v5;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    goto/16 :goto_9

    :cond_2
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Z(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_10

    :pswitch_a
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_e

    :pswitch_b
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_6

    :pswitch_c
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    :pswitch_d
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_4
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Y(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_e
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    :pswitch_f
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_5
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    goto/16 :goto_12

    :pswitch_10
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_6
    goto/16 :goto_13

    :pswitch_11
    invoke-virtual {p0, v10, v4, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_7
    goto/16 :goto_14

    :pswitch_12
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/n7;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_13
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/e8;->E(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_14
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->O(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_15
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->M(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_16
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_17
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_18
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->z(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_19
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->R(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto/16 :goto_8

    :pswitch_1a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->w(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->G(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->T(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_1f
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->I(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_20
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    goto :goto_8

    :pswitch_21
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_4

    :goto_8
    invoke-static {v10}, Lcom/google/android/gms/internal/measurement/z5;->a0(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    add-int/2addr v8, v3

    add-int/2addr v8, v2

    :goto_9
    add-int/2addr v5, v8

    goto/16 :goto_16

    :pswitch_22
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->N(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_23
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->L(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_24
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->y(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_25
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->Q(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_26
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->x(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_27
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/e8;->K(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_28
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->P(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_29
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->t(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->F(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2b
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->S(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->H(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2d
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->A(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2e
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v10, v2}, Lcom/google/android/gms/internal/measurement/e8;->C(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_2f
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_a
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s7;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v10, v2, v3}, Lcom/google/android/gms/internal/measurement/z5;->X(ILcom/google/android/gms/internal/measurement/s7;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_30
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    add-long v10, v2, v2

    shr-long/2addr v2, v9

    xor-long/2addr v2, v10

    goto/16 :goto_12

    :pswitch_31
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    add-int v8, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v8

    goto :goto_b

    :pswitch_32
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_14

    :pswitch_33
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto/16 :goto_13

    :pswitch_34
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto/16 :goto_f

    :pswitch_35
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    :goto_b
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_36
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    goto :goto_d

    :pswitch_37
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_c
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v10, v3, v2}, Lcom/google/android/gms/internal/measurement/e8;->J(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_15

    :pswitch_38
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/v5;

    if-eqz v3, :cond_3

    :goto_d
    check-cast v2, Lcom/google/android/gms/internal/measurement/v5;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v5;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    add-int/2addr v5, v8

    goto/16 :goto_16

    :cond_3
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Z(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    :pswitch_39
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_e
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/2addr v2, v13

    goto :goto_15

    :pswitch_3a
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_13

    :pswitch_3b
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    goto :goto_14

    :pswitch_3c
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_f
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    shl-int/lit8 v3, v10, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Y(I)I

    move-result v2

    :goto_10
    add-int/2addr v2, v3

    goto :goto_15

    :pswitch_3d
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    goto :goto_11

    :pswitch_3e
    and-int/2addr v8, v7

    if-eqz v8, :cond_4

    :goto_11
    invoke-virtual {v14, v1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    shl-int/lit8 v8, v10, 0x3

    invoke-static {v8}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v8

    :goto_12
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/z5;->H(J)I

    move-result v2

    add-int/2addr v2, v8

    goto :goto_15

    :pswitch_3f
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_13
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_15

    :pswitch_40
    and-int v2, v7, v8

    if-eqz v2, :cond_4

    :goto_14
    shl-int/lit8 v2, v10, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_15
    add-int/2addr v5, v2

    :cond_4
    :goto_16
    add-int/lit8 v4, v4, 0x3

    const v3, 0xfffff

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/o8;->a(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v5

    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    const/4 v1, 0x0

    throw v1

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
.end method

.method public final B(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    move-result v3

    ushr-int/lit8 v4, v3, 0x14

    and-int/lit16 v4, v4, 0xff

    aget v5, v2, v0

    const v6, 0xfffff

    and-int/2addr v3, v6

    int-to-long v6, v3

    sget-object v3, Lcom/google/android/gms/internal/measurement/j6;->b:Lcom/google/android/gms/internal/measurement/j6;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j6;->a()I

    move-result v3

    if-lt v4, v3, :cond_0

    sget-object v3, Lcom/google/android/gms/internal/measurement/j6;->c:Lcom/google/android/gms/internal/measurement/j6;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/j6;->a()I

    move-result v3

    if-gt v4, v3, :cond_0

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_5

    :pswitch_2
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_6

    :pswitch_3
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_4
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_5
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_9

    :pswitch_8
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/v5;

    if-eqz v3, :cond_1

    goto/16 :goto_b

    :pswitch_a
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_d

    :pswitch_b
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_c
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_d
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    move-result v2

    goto/16 :goto_f

    :pswitch_e
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :pswitch_f
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    move-result-wide v2

    goto/16 :goto_12

    :pswitch_10
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_11
    invoke-virtual {p0, v5, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/n7;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_13
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/e8;->E(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_14
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->O(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->M(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->z(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_19
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->R(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->w(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1b
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1c
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1d
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->G(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1e
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->T(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_1f
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->I(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_20
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->B(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_3

    :pswitch_21
    invoke-virtual {v2, p1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/e8;->D(Ljava/util/List;)I

    move-result v2

    if-lez v2, :cond_2

    :goto_3
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/z5;->a0(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    goto/16 :goto_c

    :pswitch_22
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->N(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_23
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->L(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_24
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->y(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_25
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->Q(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_26
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->x(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_27
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/e8;->K(ILjava/util/List;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_28
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->P(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_29
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->t(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2a
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->F(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2b
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->S(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2c
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->H(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2d
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->A(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2e
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v5, v2}, Lcom/google/android/gms/internal/measurement/e8;->C(ILjava/util/List;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_2f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_4
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/s7;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/google/android/gms/internal/measurement/z5;->X(ILcom/google/android/gms/internal/measurement/s7;Lcom/google/android/gms/internal/measurement/d8;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_30
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_5
    shl-int/lit8 v4, v5, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v4

    add-long v5, v2, v2

    const/16 v7, 0x3f

    shr-long/2addr v2, v7

    xor-long/2addr v2, v5

    goto/16 :goto_13

    :pswitch_31
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_6
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    add-int v4, v2, v2

    shr-int/lit8 v2, v2, 0x1f

    xor-int/2addr v2, v4

    goto :goto_8

    :pswitch_32
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_15

    :pswitch_33
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_14

    :pswitch_34
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_e

    :pswitch_35
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_7
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    :goto_8
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    goto/16 :goto_10

    :pswitch_36
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_9
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_b

    :pswitch_37
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_a
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v3

    invoke-static {v5, v3, v2}, Lcom/google/android/gms/internal/measurement/e8;->J(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)I

    move-result v2

    goto/16 :goto_16

    :pswitch_38
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/measurement/v5;

    if-eqz v3, :cond_1

    :goto_b
    check-cast v2, Lcom/google/android/gms/internal/measurement/v5;

    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/v5;->m()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    :goto_c
    add-int/2addr v1, v4

    goto/16 :goto_17

    :cond_1
    check-cast v2, Ljava/lang/String;

    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Z(Ljava/lang/String;)I

    move-result v2

    goto :goto_10

    :pswitch_39
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_d
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :pswitch_3a
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_14

    :pswitch_3b
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_15

    :pswitch_3c
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_e
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    move-result v2

    :goto_f
    shl-int/lit8 v3, v5, 0x3

    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->Y(I)I

    move-result v2

    :goto_10
    add-int/2addr v2, v3

    goto :goto_16

    :pswitch_3d
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_11

    :pswitch_3e
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_11
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    move-result-wide v2

    :goto_12
    shl-int/lit8 v4, v5, 0x3

    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v4

    :goto_13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/z5;->H(J)I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_16

    :pswitch_3f
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_14
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    goto :goto_16

    :pswitch_40
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_15
    shl-int/lit8 v2, v5, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/z5;->G(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    :goto_16
    add-int/2addr v1, v2

    :cond_2
    :goto_17
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->a(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v1

    return p1

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
.end method

.method public final D(Ljava/lang/Object;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p3, p4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/measurement/m7;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m7;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/m7;->b()Lcom/google/android/gms/internal/measurement/m7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m7;->c()Lcom/google/android/gms/internal/measurement/m7;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/n7;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/m7;

    invoke-virtual {v0, p1, p3, p4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    check-cast p2, Lcom/google/android/gms/internal/measurement/l7;

    const/4 p1, 0x0

    throw p1
.end method

.method public final E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/o5;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/measurement/o5;",
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

    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    aget v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v7, v12

    int-to-long v12, v7

    const/4 v7, 0x3

    const/4 v15, 0x1

    sget-object v14, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    if-ne v5, v7, :cond_12

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/p5;->d(Lcom/google/android/gms/internal/measurement/d8;[BIIILcom/google/android/gms/internal/measurement/o5;)I

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
    if-nez v3, :cond_7

    goto/16 :goto_4

    :pswitch_1
    if-eqz v5, :cond_1

    goto/16 :goto_c

    :cond_1
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-static {v3, v4}, Lx5/a;->E(J)J

    move-result-wide v3

    goto/16 :goto_a

    :pswitch_2
    if-eqz v5, :cond_2

    goto/16 :goto_c

    :cond_2
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-static {v3}, Lx5/a;->B(I)I

    move-result v3

    goto/16 :goto_9

    :pswitch_3
    if-nez v5, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 1
    div-int/lit8 v5, v6, 0x3

    add-int/2addr v5, v5

    add-int/2addr v5, v15

    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    aget-object v5, v6, v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/t6;

    if-eqz v5, :cond_4

    .line 2
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/measurement/t6;->f(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/v7;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v2, v3

    goto/16 :goto_d

    :pswitch_4
    const/4 v2, 0x2

    if-eq v5, v2, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->a([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    goto/16 :goto_b

    :pswitch_5
    const/4 v2, 0x2

    if-ne v5, v2, :cond_12

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/measurement/p5;->f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_6

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_7

    :goto_4
    iget-object v3, v11, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    goto :goto_5

    :cond_7
    iget-object v4, v11, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    goto :goto_5

    :pswitch_6
    const/4 v2, 0x2

    if-ne v5, v2, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-nez v4, :cond_8

    const-string v3, ""

    :goto_5
    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    :cond_8
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_a

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/measurement/a9;->c([BII)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_a
    :goto_6
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v14, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    :goto_7
    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_d

    :pswitch_7
    if-nez v5, :cond_12

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/o5;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    :goto_8
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_b

    :pswitch_8
    const/4 v2, 0x5

    if-eq v5, v2, :cond_c

    goto/16 :goto_c

    :cond_c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_9
    if-eq v5, v15, :cond_d

    goto :goto_c

    :cond_d
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_a
    if-eqz v5, :cond_e

    goto :goto_c

    :cond_e
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/measurement/o5;->a:I

    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_b

    :pswitch_b
    if-eqz v5, :cond_f

    goto :goto_c

    :cond_f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/measurement/o5;->b:J

    :goto_a
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_b
    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_c
    const/4 v2, 0x5

    if-eq v5, v2, :cond_10

    goto :goto_c

    :cond_10
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_d
    if-eq v5, v15, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_12
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

.method public final F(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/o5;)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v15, p1

    .line 2
    .line 3
    move-object/from16 v14, p5

    .line 4
    .line 5
    sget-object v12, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    .line 6
    .line 7
    move-object/from16 v4, p0

    .line 8
    .line 9
    move-object/from16 v6, p2

    .line 10
    .line 11
    move/from16 v0, p3

    .line 12
    .line 13
    move/from16 v7, p4

    .line 14
    .line 15
    move-object v5, v15

    .line 16
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    const v8, 0xfffff

    .line 19
    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    :goto_0
    if-ge v0, v7, :cond_18

    .line 23
    .line 24
    add-int/lit8 v3, v0, 0x1

    .line 25
    .line 26
    aget-byte v0, v6, v0

    .line 27
    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->n(I[BILcom/google/android/gms/internal/measurement/o5;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v3, v14, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 35
    .line 36
    move/from16 v16, v3

    .line 37
    .line 38
    move v3, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move/from16 v16, v0

    .line 41
    .line 42
    :goto_1
    ushr-int/lit8 v0, v16, 0x3

    .line 43
    .line 44
    and-int/lit8 v9, v16, 0x7

    .line 45
    .line 46
    iget v13, v4, Lcom/google/android/gms/internal/measurement/v7;->d:I

    .line 47
    .line 48
    iget v11, v4, Lcom/google/android/gms/internal/measurement/v7;->c:I

    .line 49
    .line 50
    if-le v0, v1, :cond_2

    .line 51
    .line 52
    div-int/lit8 v2, v2, 0x3

    .line 53
    .line 54
    if-lt v0, v11, :cond_1

    .line 55
    .line 56
    if-gt v0, v13, :cond_1

    .line 57
    .line 58
    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/internal/measurement/v7;->H(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    goto :goto_2

    .line 63
    :cond_1
    const/4 v1, -0x1

    .line 64
    :goto_2
    move v13, v1

    .line 65
    const/4 v2, -0x1

    .line 66
    const/4 v11, 0x0

    .line 67
    goto :goto_4

    .line 68
    :cond_2
    if-lt v0, v11, :cond_3

    .line 69
    .line 70
    if-gt v0, v13, :cond_3

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-virtual {v4, v0, v11}, Lcom/google/android/gms/internal/measurement/v7;->H(II)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/4 v11, 0x0

    .line 79
    const/4 v1, -0x1

    .line 80
    :goto_3
    move v13, v1

    .line 81
    const/4 v2, -0x1

    .line 82
    :goto_4
    if-ne v13, v2, :cond_4

    .line 83
    .line 84
    move/from16 v21, v0

    .line 85
    .line 86
    move v2, v3

    .line 87
    move-object/from16 v30, v12

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    const/16 v18, -0x1

    .line 92
    .line 93
    goto/16 :goto_15

    .line 94
    .line 95
    :cond_4
    add-int/lit8 v1, v13, 0x1

    .line 96
    .line 97
    iget-object v2, v4, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 98
    .line 99
    aget v1, v2, v1

    .line 100
    .line 101
    ushr-int/lit8 v11, v1, 0x14

    .line 102
    .line 103
    and-int/lit16 v11, v11, 0xff

    .line 104
    .line 105
    move/from16 p3, v0

    .line 106
    .line 107
    const v17, 0xfffff

    .line 108
    .line 109
    .line 110
    and-int v0, v1, v17

    .line 111
    .line 112
    move/from16 v20, v1

    .line 113
    .line 114
    int-to-long v0, v0

    .line 115
    move-wide/from16 v21, v0

    .line 116
    .line 117
    const/16 v0, 0x11

    .line 118
    .line 119
    if-gt v11, v0, :cond_e

    .line 120
    .line 121
    add-int/lit8 v0, v13, 0x2

    .line 122
    .line 123
    aget v0, v2, v0

    .line 124
    .line 125
    ushr-int/lit8 v2, v0, 0x14

    .line 126
    .line 127
    const/4 v1, 0x1

    .line 128
    shl-int v23, v1, v2

    .line 129
    .line 130
    const v2, 0xfffff

    .line 131
    .line 132
    .line 133
    and-int/2addr v0, v2

    .line 134
    if-eq v0, v8, :cond_7

    .line 135
    .line 136
    if-eq v8, v2, :cond_5

    .line 137
    .line 138
    int-to-long v1, v8

    .line 139
    invoke-virtual {v12, v5, v1, v2, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    .line 141
    .line 142
    const v2, 0xfffff

    .line 143
    .line 144
    .line 145
    :cond_5
    move/from16 v24, v3

    .line 146
    .line 147
    if-eq v0, v2, :cond_6

    .line 148
    .line 149
    int-to-long v2, v0

    .line 150
    invoke-virtual {v12, v5, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    move v10, v1

    .line 155
    :cond_6
    move v8, v0

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move/from16 v24, v3

    .line 158
    .line 159
    :goto_5
    const/4 v0, 0x5

    .line 160
    packed-switch v11, :pswitch_data_0

    .line 161
    .line 162
    .line 163
    :cond_8
    move/from16 v21, p3

    .line 164
    .line 165
    move/from16 p3, v8

    .line 166
    .line 167
    move/from16 v3, v24

    .line 168
    .line 169
    const/16 v18, -0x1

    .line 170
    .line 171
    const v22, 0xfffff

    .line 172
    .line 173
    .line 174
    goto/16 :goto_f

    .line 175
    .line 176
    :pswitch_0
    if-nez v9, :cond_8

    .line 177
    .line 178
    move/from16 v3, v24

    .line 179
    .line 180
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 181
    .line 182
    .line 183
    move-result v9

    .line 184
    iget-wide v0, v14, Lcom/google/android/gms/internal/measurement/o5;->b:J

    .line 185
    .line 186
    invoke-static {v0, v1}, Lx5/a;->E(J)J

    .line 187
    .line 188
    .line 189
    move-result-wide v16

    .line 190
    move-wide/from16 v2, v21

    .line 191
    .line 192
    move/from16 v21, p3

    .line 193
    .line 194
    move-object v0, v12

    .line 195
    move-object/from16 v1, p1

    .line 196
    .line 197
    const/16 v18, -0x1

    .line 198
    .line 199
    const v22, 0xfffff

    .line 200
    .line 201
    .line 202
    move-object v11, v4

    .line 203
    move/from16 p3, v8

    .line 204
    .line 205
    move-object v8, v5

    .line 206
    move-wide/from16 v4, v16

    .line 207
    .line 208
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 209
    .line 210
    .line 211
    :goto_6
    or-int v0, v10, v23

    .line 212
    .line 213
    move v10, v0

    .line 214
    goto/16 :goto_c

    .line 215
    .line 216
    :pswitch_1
    move-object v11, v4

    .line 217
    move/from16 v3, v24

    .line 218
    .line 219
    const/16 v18, -0x1

    .line 220
    .line 221
    move-wide/from16 v31, v21

    .line 222
    .line 223
    move/from16 v21, p3

    .line 224
    .line 225
    move/from16 p3, v8

    .line 226
    .line 227
    const v22, 0xfffff

    .line 228
    .line 229
    .line 230
    move-object v8, v5

    .line 231
    move-wide/from16 v4, v31

    .line 232
    .line 233
    if-nez v9, :cond_d

    .line 234
    .line 235
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iget v1, v14, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 240
    .line 241
    invoke-static {v1}, Lx5/a;->B(I)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    goto :goto_7

    .line 246
    :pswitch_2
    move-object v11, v4

    .line 247
    move/from16 v3, v24

    .line 248
    .line 249
    const/16 v18, -0x1

    .line 250
    .line 251
    move-wide/from16 v31, v21

    .line 252
    .line 253
    move/from16 v21, p3

    .line 254
    .line 255
    move/from16 p3, v8

    .line 256
    .line 257
    const v22, 0xfffff

    .line 258
    .line 259
    .line 260
    move-object v8, v5

    .line 261
    move-wide/from16 v4, v31

    .line 262
    .line 263
    if-nez v9, :cond_d

    .line 264
    .line 265
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iget v1, v14, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 270
    .line 271
    :goto_7
    invoke-virtual {v12, v8, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    .line 273
    .line 274
    :goto_8
    move v9, v0

    .line 275
    goto :goto_6

    .line 276
    :pswitch_3
    move-object v11, v4

    .line 277
    move/from16 v3, v24

    .line 278
    .line 279
    const/4 v0, 0x2

    .line 280
    const/16 v18, -0x1

    .line 281
    .line 282
    move-wide/from16 v31, v21

    .line 283
    .line 284
    move/from16 v21, p3

    .line 285
    .line 286
    move/from16 p3, v8

    .line 287
    .line 288
    const v22, 0xfffff

    .line 289
    .line 290
    .line 291
    move-object v8, v5

    .line 292
    move-wide/from16 v4, v31

    .line 293
    .line 294
    if-ne v9, v0, :cond_d

    .line 295
    .line 296
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->a([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    goto :goto_9

    .line 301
    :pswitch_4
    move-object v11, v4

    .line 302
    move/from16 v3, v24

    .line 303
    .line 304
    const/4 v0, 0x2

    .line 305
    const/16 v18, -0x1

    .line 306
    .line 307
    move-wide/from16 v31, v21

    .line 308
    .line 309
    move/from16 v21, p3

    .line 310
    .line 311
    move/from16 p3, v8

    .line 312
    .line 313
    const v22, 0xfffff

    .line 314
    .line 315
    .line 316
    move-object v8, v5

    .line 317
    move-wide/from16 v4, v31

    .line 318
    .line 319
    if-ne v9, v0, :cond_d

    .line 320
    .line 321
    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v0, v6, v3, v7, v14}, Lcom/google/android/gms/internal/measurement/p5;->f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {v12, v8, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    if-nez v1, :cond_9

    .line 334
    .line 335
    :goto_9
    iget-object v1, v14, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    .line 336
    .line 337
    goto :goto_a

    .line 338
    :cond_9
    iget-object v2, v14, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    .line 339
    .line 340
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    goto :goto_a

    .line 345
    :pswitch_5
    move-object v11, v4

    .line 346
    move/from16 v3, v24

    .line 347
    .line 348
    const/4 v0, 0x2

    .line 349
    const/16 v18, -0x1

    .line 350
    .line 351
    move-wide/from16 v31, v21

    .line 352
    .line 353
    move/from16 v21, p3

    .line 354
    .line 355
    move/from16 p3, v8

    .line 356
    .line 357
    const v22, 0xfffff

    .line 358
    .line 359
    .line 360
    move-object v8, v5

    .line 361
    move-wide/from16 v4, v31

    .line 362
    .line 363
    if-ne v9, v0, :cond_d

    .line 364
    .line 365
    const/high16 v0, 0x20000000

    .line 366
    .line 367
    and-int v0, v20, v0

    .line 368
    .line 369
    if-nez v0, :cond_a

    .line 370
    .line 371
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->j([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    goto :goto_9

    .line 376
    :cond_a
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->k([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    goto :goto_9

    .line 381
    :goto_a
    invoke-virtual {v12, v8, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 382
    .line 383
    .line 384
    goto :goto_8

    .line 385
    :pswitch_6
    move-object v11, v4

    .line 386
    move/from16 v3, v24

    .line 387
    .line 388
    const/16 v18, -0x1

    .line 389
    .line 390
    move-wide/from16 v31, v21

    .line 391
    .line 392
    move/from16 v21, p3

    .line 393
    .line 394
    move/from16 p3, v8

    .line 395
    .line 396
    const v22, 0xfffff

    .line 397
    .line 398
    .line 399
    move-object v8, v5

    .line 400
    move-wide/from16 v4, v31

    .line 401
    .line 402
    if-nez v9, :cond_d

    .line 403
    .line 404
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    iget-wide v1, v14, Lcom/google/android/gms/internal/measurement/o5;->b:J

    .line 409
    .line 410
    const-wide/16 v24, 0x0

    .line 411
    .line 412
    cmp-long v3, v1, v24

    .line 413
    .line 414
    if-eqz v3, :cond_b

    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    goto :goto_b

    .line 418
    :cond_b
    const/4 v1, 0x0

    .line 419
    :goto_b
    invoke-static {v8, v4, v5, v1}, Lcom/google/android/gms/internal/measurement/y8;->m(Ljava/lang/Object;JZ)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_8

    .line 423
    .line 424
    :pswitch_7
    move-object v11, v4

    .line 425
    move/from16 v3, v24

    .line 426
    .line 427
    const/16 v18, -0x1

    .line 428
    .line 429
    move-wide/from16 v31, v21

    .line 430
    .line 431
    move/from16 v21, p3

    .line 432
    .line 433
    move/from16 p3, v8

    .line 434
    .line 435
    const v22, 0xfffff

    .line 436
    .line 437
    .line 438
    move-object v8, v5

    .line 439
    move-wide/from16 v4, v31

    .line 440
    .line 441
    if-ne v9, v0, :cond_c

    .line 442
    .line 443
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    invoke-virtual {v12, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 448
    .line 449
    .line 450
    goto/16 :goto_d

    .line 451
    .line 452
    :pswitch_8
    move-object v11, v4

    .line 453
    move/from16 v3, v24

    .line 454
    .line 455
    const/4 v0, 0x1

    .line 456
    const/16 v18, -0x1

    .line 457
    .line 458
    move-wide/from16 v31, v21

    .line 459
    .line 460
    move/from16 v21, p3

    .line 461
    .line 462
    move/from16 p3, v8

    .line 463
    .line 464
    const v22, 0xfffff

    .line 465
    .line 466
    .line 467
    move-object v8, v5

    .line 468
    move-wide/from16 v4, v31

    .line 469
    .line 470
    if-ne v9, v0, :cond_c

    .line 471
    .line 472
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    .line 473
    .line 474
    .line 475
    move-result-wide v16

    .line 476
    move-object v0, v12

    .line 477
    move-object/from16 v1, p1

    .line 478
    .line 479
    move v9, v3

    .line 480
    move-wide v2, v4

    .line 481
    move-wide/from16 v4, v16

    .line 482
    .line 483
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 484
    .line 485
    .line 486
    add-int/lit8 v3, v9, 0x8

    .line 487
    .line 488
    goto/16 :goto_e

    .line 489
    .line 490
    :cond_c
    move v9, v3

    .line 491
    move v3, v9

    .line 492
    goto/16 :goto_f

    .line 493
    .line 494
    :pswitch_9
    move-object v11, v4

    .line 495
    move/from16 v3, v24

    .line 496
    .line 497
    const/16 v18, -0x1

    .line 498
    .line 499
    move-wide/from16 v31, v21

    .line 500
    .line 501
    move/from16 v21, p3

    .line 502
    .line 503
    move/from16 p3, v8

    .line 504
    .line 505
    const v22, 0xfffff

    .line 506
    .line 507
    .line 508
    move-object v8, v5

    .line 509
    move-wide/from16 v4, v31

    .line 510
    .line 511
    if-nez v9, :cond_d

    .line 512
    .line 513
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    iget v1, v14, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 518
    .line 519
    invoke-virtual {v12, v8, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_8

    .line 523
    .line 524
    :pswitch_a
    move-object v11, v4

    .line 525
    move/from16 v3, v24

    .line 526
    .line 527
    const/16 v18, -0x1

    .line 528
    .line 529
    move-wide/from16 v31, v21

    .line 530
    .line 531
    move/from16 v21, p3

    .line 532
    .line 533
    move/from16 p3, v8

    .line 534
    .line 535
    const v22, 0xfffff

    .line 536
    .line 537
    .line 538
    move-object v8, v5

    .line 539
    move-wide/from16 v4, v31

    .line 540
    .line 541
    if-nez v9, :cond_d

    .line 542
    .line 543
    invoke-static {v6, v3, v14}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    .line 544
    .line 545
    .line 546
    move-result v9

    .line 547
    iget-wide v2, v14, Lcom/google/android/gms/internal/measurement/o5;->b:J

    .line 548
    .line 549
    move-object v0, v12

    .line 550
    move-object/from16 v1, p1

    .line 551
    .line 552
    move-wide/from16 v16, v2

    .line 553
    .line 554
    move-wide v2, v4

    .line 555
    move-wide/from16 v4, v16

    .line 556
    .line 557
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 558
    .line 559
    .line 560
    or-int v10, v10, v23

    .line 561
    .line 562
    :goto_c
    move/from16 v17, p3

    .line 563
    .line 564
    move v0, v9

    .line 565
    move-object v9, v11

    .line 566
    move-object v11, v6

    .line 567
    goto/16 :goto_11

    .line 568
    .line 569
    :pswitch_b
    move-object v11, v4

    .line 570
    move/from16 v3, v24

    .line 571
    .line 572
    const/16 v18, -0x1

    .line 573
    .line 574
    move-wide/from16 v31, v21

    .line 575
    .line 576
    move/from16 v21, p3

    .line 577
    .line 578
    move/from16 p3, v8

    .line 579
    .line 580
    const v22, 0xfffff

    .line 581
    .line 582
    .line 583
    move-object v8, v5

    .line 584
    move-wide/from16 v4, v31

    .line 585
    .line 586
    if-ne v9, v0, :cond_d

    .line 587
    .line 588
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    .line 589
    .line 590
    .line 591
    move-result v0

    .line 592
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 593
    .line 594
    .line 595
    move-result v0

    .line 596
    invoke-static {v8, v4, v5, v0}, Lcom/google/android/gms/internal/measurement/y8;->o(Ljava/lang/Object;JF)V

    .line 597
    .line 598
    .line 599
    :goto_d
    add-int/lit8 v3, v3, 0x4

    .line 600
    .line 601
    goto :goto_e

    .line 602
    :pswitch_c
    move-object v11, v4

    .line 603
    move/from16 v3, v24

    .line 604
    .line 605
    const/4 v0, 0x1

    .line 606
    const/16 v18, -0x1

    .line 607
    .line 608
    move-wide/from16 v31, v21

    .line 609
    .line 610
    move/from16 v21, p3

    .line 611
    .line 612
    move/from16 p3, v8

    .line 613
    .line 614
    const v22, 0xfffff

    .line 615
    .line 616
    .line 617
    move-object v8, v5

    .line 618
    move-wide/from16 v4, v31

    .line 619
    .line 620
    if-ne v9, v0, :cond_d

    .line 621
    .line 622
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    .line 623
    .line 624
    .line 625
    move-result-wide v0

    .line 626
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 627
    .line 628
    .line 629
    move-result-wide v0

    .line 630
    invoke-static {v8, v4, v5, v0, v1}, Lcom/google/android/gms/internal/measurement/y8;->n(Ljava/lang/Object;JD)V

    .line 631
    .line 632
    .line 633
    add-int/lit8 v3, v3, 0x8

    .line 634
    .line 635
    :goto_e
    move v9, v3

    .line 636
    goto/16 :goto_6

    .line 637
    .line 638
    :cond_d
    :goto_f
    move/from16 v8, p3

    .line 639
    .line 640
    move v2, v3

    .line 641
    move-object/from16 v30, v12

    .line 642
    .line 643
    move v11, v13

    .line 644
    const/16 v17, 0x0

    .line 645
    .line 646
    goto/16 :goto_15

    .line 647
    .line 648
    :cond_e
    move-object v2, v4

    .line 649
    move/from16 v17, v8

    .line 650
    .line 651
    const/16 v18, -0x1

    .line 652
    .line 653
    move-object v8, v5

    .line 654
    move-wide/from16 v4, v21

    .line 655
    .line 656
    const v22, 0xfffff

    .line 657
    .line 658
    .line 659
    move/from16 v21, p3

    .line 660
    .line 661
    const/16 v0, 0x1b

    .line 662
    .line 663
    if-ne v11, v0, :cond_12

    .line 664
    .line 665
    const/4 v0, 0x2

    .line 666
    if-ne v9, v0, :cond_11

    .line 667
    .line 668
    invoke-virtual {v12, v8, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v0

    .line 672
    check-cast v0, Lcom/google/android/gms/internal/measurement/w6;

    .line 673
    .line 674
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-nez v1, :cond_10

    .line 679
    .line 680
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 681
    .line 682
    .line 683
    move-result v1

    .line 684
    if-nez v1, :cond_f

    .line 685
    .line 686
    const/16 v1, 0xa

    .line 687
    .line 688
    goto :goto_10

    .line 689
    :cond_f
    add-int/2addr v1, v1

    .line 690
    :goto_10
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/w6;->v(I)Lcom/google/android/gms/internal/measurement/w6;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v12, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 695
    .line 696
    .line 697
    :cond_10
    move-object v5, v0

    .line 698
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    move/from16 v1, v16

    .line 703
    .line 704
    move-object v9, v2

    .line 705
    move-object/from16 v2, p2

    .line 706
    .line 707
    move/from16 v4, p4

    .line 708
    .line 709
    move-object v11, v6

    .line 710
    move-object/from16 v6, p5

    .line 711
    .line 712
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/p5;->g(Lcom/google/android/gms/internal/measurement/d8;I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    :goto_11
    move-object v5, v8

    .line 717
    move-object v4, v9

    .line 718
    move-object v6, v11

    .line 719
    move-object/from16 v30, v12

    .line 720
    .line 721
    move v2, v13

    .line 722
    move/from16 v8, v17

    .line 723
    .line 724
    const/16 v17, 0x0

    .line 725
    .line 726
    goto/16 :goto_17

    .line 727
    .line 728
    :cond_11
    move v15, v3

    .line 729
    move/from16 v27, v10

    .line 730
    .line 731
    move-object/from16 v30, v12

    .line 732
    .line 733
    move/from16 v29, v13

    .line 734
    .line 735
    move/from16 v28, v17

    .line 736
    .line 737
    const/16 v17, 0x0

    .line 738
    .line 739
    goto/16 :goto_12

    .line 740
    .line 741
    :cond_12
    const/16 v0, 0x31

    .line 742
    .line 743
    if-gt v11, v0, :cond_14

    .line 744
    .line 745
    move/from16 v1, v20

    .line 746
    .line 747
    int-to-long v7, v1

    .line 748
    move-object/from16 v0, p0

    .line 749
    .line 750
    move-object/from16 v1, p1

    .line 751
    .line 752
    move-object/from16 v2, p2

    .line 753
    .line 754
    move v6, v3

    .line 755
    move-wide/from16 v23, v4

    .line 756
    .line 757
    move/from16 v4, p4

    .line 758
    .line 759
    move/from16 v5, v16

    .line 760
    .line 761
    move v15, v6

    .line 762
    move/from16 v6, v21

    .line 763
    .line 764
    move-wide/from16 v25, v7

    .line 765
    .line 766
    move v7, v9

    .line 767
    move/from16 v9, v17

    .line 768
    .line 769
    move v8, v13

    .line 770
    move/from16 v28, v9

    .line 771
    .line 772
    move/from16 v27, v10

    .line 773
    .line 774
    move-wide/from16 v9, v25

    .line 775
    .line 776
    const/16 v17, 0x0

    .line 777
    .line 778
    move-object/from16 v30, v12

    .line 779
    .line 780
    move/from16 v29, v13

    .line 781
    .line 782
    move-wide/from16 v12, v23

    .line 783
    .line 784
    move-object/from16 v14, p5

    .line 785
    .line 786
    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/v7;->G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/o5;)I

    .line 787
    .line 788
    .line 789
    move-result v0

    .line 790
    if-eq v0, v15, :cond_13

    .line 791
    .line 792
    move-object/from16 v15, p1

    .line 793
    .line 794
    move/from16 v19, v29

    .line 795
    .line 796
    goto/16 :goto_13

    .line 797
    .line 798
    :cond_13
    move-object/from16 v15, p1

    .line 799
    .line 800
    move v3, v0

    .line 801
    move/from16 v19, v29

    .line 802
    .line 803
    goto/16 :goto_14

    .line 804
    .line 805
    :cond_14
    move v15, v3

    .line 806
    move-wide/from16 v23, v4

    .line 807
    .line 808
    move/from16 v27, v10

    .line 809
    .line 810
    move-object/from16 v30, v12

    .line 811
    .line 812
    move/from16 v29, v13

    .line 813
    .line 814
    move/from16 v28, v17

    .line 815
    .line 816
    move/from16 v1, v20

    .line 817
    .line 818
    const/16 v17, 0x0

    .line 819
    .line 820
    const/16 v0, 0x32

    .line 821
    .line 822
    if-ne v11, v0, :cond_16

    .line 823
    .line 824
    const/4 v0, 0x2

    .line 825
    if-eq v9, v0, :cond_15

    .line 826
    .line 827
    :goto_12
    move v3, v15

    .line 828
    move/from16 v19, v29

    .line 829
    .line 830
    move-object/from16 v15, p1

    .line 831
    .line 832
    goto :goto_14

    .line 833
    :cond_15
    move-object/from16 v14, p0

    .line 834
    .line 835
    move-object/from16 v15, p1

    .line 836
    .line 837
    move-wide/from16 v7, v23

    .line 838
    .line 839
    move/from16 v13, v29

    .line 840
    .line 841
    invoke-virtual {v14, v15, v13, v7, v8}, Lcom/google/android/gms/internal/measurement/v7;->D(Ljava/lang/Object;IJ)V

    .line 842
    .line 843
    .line 844
    const/4 v0, 0x0

    .line 845
    throw v0

    .line 846
    :cond_16
    move-object/from16 v14, p0

    .line 847
    .line 848
    move v12, v15

    .line 849
    move-wide/from16 v7, v23

    .line 850
    .line 851
    move/from16 v13, v29

    .line 852
    .line 853
    move-object/from16 v15, p1

    .line 854
    .line 855
    move-object/from16 v0, p0

    .line 856
    .line 857
    move v10, v1

    .line 858
    move-object/from16 v1, p1

    .line 859
    .line 860
    move-object/from16 v2, p2

    .line 861
    .line 862
    move v3, v12

    .line 863
    move/from16 v4, p4

    .line 864
    .line 865
    move/from16 v5, v16

    .line 866
    .line 867
    move/from16 v6, v21

    .line 868
    .line 869
    move-wide/from16 v19, v7

    .line 870
    .line 871
    move v7, v9

    .line 872
    move v8, v10

    .line 873
    move v9, v11

    .line 874
    move-wide/from16 v10, v19

    .line 875
    .line 876
    move v14, v12

    .line 877
    move v12, v13

    .line 878
    move/from16 v19, v13

    .line 879
    .line 880
    move-object/from16 v13, p5

    .line 881
    .line 882
    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/v7;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/o5;)I

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eq v0, v14, :cond_17

    .line 887
    .line 888
    :goto_13
    move/from16 v13, v19

    .line 889
    .line 890
    move/from16 v10, v27

    .line 891
    .line 892
    move/from16 v8, v28

    .line 893
    .line 894
    goto :goto_16

    .line 895
    :cond_17
    move v3, v0

    .line 896
    :goto_14
    move v2, v3

    .line 897
    move/from16 v11, v19

    .line 898
    .line 899
    move/from16 v10, v27

    .line 900
    .line 901
    move/from16 v8, v28

    .line 902
    .line 903
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/v7;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 904
    .line 905
    .line 906
    move-result-object v4

    .line 907
    move/from16 v0, v16

    .line 908
    .line 909
    move-object/from16 v1, p2

    .line 910
    .line 911
    move/from16 v3, p4

    .line 912
    .line 913
    move-object/from16 v5, p5

    .line 914
    .line 915
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p5;->l(I[BIILcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o5;)I

    .line 916
    .line 917
    .line 918
    move-result v0

    .line 919
    move v13, v11

    .line 920
    :goto_16
    move-object/from16 v4, p0

    .line 921
    .line 922
    move-object/from16 v6, p2

    .line 923
    .line 924
    move/from16 v7, p4

    .line 925
    .line 926
    move v2, v13

    .line 927
    move-object v5, v15

    .line 928
    :goto_17
    move-object/from16 v14, p5

    .line 929
    .line 930
    move/from16 v1, v21

    .line 931
    .line 932
    move-object/from16 v12, v30

    .line 933
    .line 934
    goto/16 :goto_0

    .line 935
    .line 936
    :cond_18
    move/from16 v27, v10

    .line 937
    .line 938
    move-object/from16 v30, v12

    .line 939
    .line 940
    const v1, 0xfffff

    .line 941
    .line 942
    .line 943
    if-eq v8, v1, :cond_19

    .line 944
    .line 945
    int-to-long v1, v8

    .line 946
    move/from16 v10, v27

    .line 947
    .line 948
    move-object/from16 v3, v30

    .line 949
    .line 950
    invoke-virtual {v3, v15, v1, v2, v10}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 951
    .line 952
    .line 953
    :cond_19
    move/from16 v1, p4

    .line 954
    .line 955
    if-ne v0, v1, :cond_1a

    .line 956
    .line 957
    return-void

    .line 958
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->c()Lcom/google/android/gms/internal/measurement/z6;

    .line 959
    .line 960
    .line 961
    move-result-object v0

    .line 962
    throw v0

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

.method public final G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/o5;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/measurement/o5;",
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

    sget-object v11, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v12}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v13, v13

    :goto_0
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/measurement/w6;->v(I)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v12

    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x5

    const/4 v15, 0x2

    packed-switch p11, :pswitch_data_0

    if-ne v6, v9, :cond_47

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/p5;->d(Lcom/google/android/gms/internal/measurement/d8;[BIIILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    goto/16 :goto_21

    :pswitch_0
    if-ne v6, v15, :cond_4

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-static {v4, v5}, Lx5/a;->E(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    goto/16 :goto_24

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_4
    if-nez v6, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    :cond_5
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-static {v8, v9}, Lx5/a;->E(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    if-ge v1, v5, :cond_6

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_5

    :cond_6
    return v1

    :pswitch_1
    if-ne v6, v15, :cond_9

    check-cast v12, Lcom/google/android/gms/internal/measurement/r6;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_2
    if-ge v1, v2, :cond_7

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-static {v4}, Lx5/a;->B(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    goto :goto_2

    :cond_7
    if-ne v1, v2, :cond_8

    goto/16 :goto_24

    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_9
    if-nez v6, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/r6;

    :cond_a
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-static {v4}, Lx5/a;->B(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    if-ge v1, v5, :cond_b

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_a

    :cond_b
    return v1

    :pswitch_2
    if-ne v6, v15, :cond_c

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/p5;->i([BILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    goto :goto_3

    :cond_c
    if-nez v6, :cond_47

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/measurement/p5;->o(I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    :goto_3
    check-cast v1, Lcom/google/android/gms/internal/measurement/q6;

    iget-object v3, v1, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    sget-object v4, Lcom/google/android/gms/internal/measurement/p8;->f:Lcom/google/android/gms/internal/measurement/p8;

    if-ne v3, v4, :cond_d

    const/4 v3, 0x0

    .line 1
    :cond_d
    div-int/lit8 v4, v8, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v13

    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    aget-object v4, v5, v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/t6;

    .line 2
    iget-object v5, v0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    move/from16 v6, p6

    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/measurement/e8;->a(ILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/t6;Lcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o8;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_e

    goto/16 :goto_10

    :cond_e
    check-cast v3, Lcom/google/android/gms/internal/measurement/p8;

    iput-object v3, v1, Lcom/google/android/gms/internal/measurement/q6;->zzc:Lcom/google/android/gms/internal/measurement/p8;

    return v2

    :pswitch_3
    if-ne v6, v15, :cond_47

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v4, :cond_15

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_14

    if-nez v4, :cond_f

    goto :goto_5

    :cond_f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/measurement/v5;->A([BII)Lcom/google/android/gms/internal/measurement/u5;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_4
    if-ge v1, v5, :cond_13

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_10

    goto :goto_6

    :cond_10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v4, :cond_12

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_11

    if-nez v4, :cond_f

    :goto_5
    sget-object v4, Lcom/google/android/gms/internal/measurement/v5;->b:Lcom/google/android/gms/internal/measurement/u5;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_13
    :goto_6
    return v1

    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :pswitch_4
    if-eq v6, v15, :cond_16

    goto/16 :goto_23

    :cond_16
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/measurement/p5;->g(Lcom/google/android/gms/internal/measurement/d8;I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    return v1

    :pswitch_5
    if-ne v6, v15, :cond_47

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    if-nez v6, :cond_1b

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v6, :cond_1a

    if-nez v6, :cond_17

    goto :goto_9

    :cond_17
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_7
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_8
    if-ge v4, v5, :cond_47

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ne v2, v8, :cond_47

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v6, :cond_19

    if-nez v6, :cond_18

    :goto_9
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_18
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_7

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_1b
    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v6, :cond_22

    if-nez v6, :cond_1c

    :goto_a
    move v8, v4

    goto :goto_d

    :cond_1c
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/a9;->c([BII)Z

    move-result v9

    if-eqz v9, :cond_21

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_b
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    if-ge v8, v5, :cond_20

    invoke-static {v3, v8, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ne v2, v6, :cond_20

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-ltz v6, :cond_1f

    if-nez v6, :cond_1d

    goto :goto_a

    :goto_d
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1d
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/measurement/a9;->c([BII)Z

    move-result v9

    if-eqz v9, :cond_1e

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/measurement/x6;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_1e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_1f
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_20
    move v4, v8

    goto/16 :goto_23

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->a()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->b()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :pswitch_6
    const/4 v1, 0x0

    if-ne v6, v15, :cond_26

    check-cast v12, Lcom/google/android/gms/internal/measurement/q5;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v4, v2

    :goto_e
    if-ge v2, v4, :cond_24

    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_23

    const/4 v5, 0x1

    goto :goto_f

    :cond_23
    const/4 v5, 0x0

    :goto_f
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/q5;->l(Z)V

    goto :goto_e

    :cond_24
    if-ne v2, v4, :cond_25

    :goto_10
    move v1, v2

    goto/16 :goto_24

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_26
    if-nez v6, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/q5;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_27

    goto :goto_12

    :cond_27
    const/4 v6, 0x0

    :goto_11
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/measurement/q5;->l(Z)V

    if-ge v4, v5, :cond_29

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v8, :cond_28

    goto :goto_13

    :cond_28
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_27

    :goto_12
    const/4 v6, 0x1

    goto :goto_11

    :cond_29
    :goto_13
    return v4

    :pswitch_7
    if-ne v6, v15, :cond_2c

    check-cast v12, Lcom/google/android/gms/internal/measurement/r6;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_14
    if-ge v1, v2, :cond_2a

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_14

    :cond_2a
    if-ne v1, v2, :cond_2b

    goto/16 :goto_24

    :cond_2b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_2c
    if-ne v6, v14, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/r6;

    :goto_15
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/r6;->l(I)V

    add-int/lit8 v4, v4, 0x4

    if-ge v4, v5, :cond_2e

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_2d

    goto :goto_16

    :cond_2d
    move v4, v1

    goto :goto_15

    :cond_2e
    :goto_16
    return v4

    :pswitch_8
    if-ne v6, v15, :cond_31

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_17
    if-ge v1, v2, :cond_2f

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_17

    :cond_2f
    if-ne v1, v2, :cond_30

    goto/16 :goto_24

    :cond_30
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_31
    if-ne v6, v13, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    :goto_18
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    add-int/lit8 v4, v4, 0x8

    if-ge v4, v5, :cond_33

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_32

    goto :goto_19

    :cond_32
    move v4, v1

    goto :goto_18

    :cond_33
    :goto_19
    return v4

    :pswitch_9
    if-ne v6, v15, :cond_34

    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/measurement/p5;->i([BILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    goto/16 :goto_24

    :cond_34
    if-eqz v6, :cond_35

    goto/16 :goto_23

    :cond_35
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/measurement/p5;->o(I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    return v1

    :pswitch_a
    if-ne v6, v15, :cond_38

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_1a
    if-ge v1, v2, :cond_36

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    goto :goto_1a

    :cond_36
    if-ne v1, v2, :cond_37

    goto/16 :goto_24

    :cond_37
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_38
    if-nez v6, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/h7;

    :cond_39
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/h7;->l(J)V

    if-ge v1, v5, :cond_3a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_39

    :cond_3a
    return v1

    :pswitch_b
    if-ne v6, v15, :cond_3d

    check-cast v12, Lcom/google/android/gms/internal/measurement/k6;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_1b
    if-ge v1, v2, :cond_3b

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/measurement/k6;->l(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_1b

    :cond_3b
    if-ne v1, v2, :cond_3c

    goto/16 :goto_24

    :cond_3c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_3d
    if-ne v6, v14, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/k6;

    :goto_1c
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/measurement/k6;->l(F)V

    add-int/lit8 v4, v4, 0x4

    if-ge v4, v5, :cond_3f

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_3e

    goto :goto_1d

    :cond_3e
    move v4, v1

    goto :goto_1c

    :cond_3f
    :goto_1d
    return v4

    :pswitch_c
    if-ne v6, v15, :cond_42

    check-cast v12, Lcom/google/android/gms/internal/measurement/b6;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    add-int/2addr v2, v1

    :goto_1e
    if-ge v1, v2, :cond_40

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/measurement/b6;->l(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_1e

    :cond_40
    if-ne v1, v2, :cond_41

    goto :goto_24

    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->d()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v1

    throw v1

    :cond_42
    if-ne v6, v13, :cond_47

    check-cast v12, Lcom/google/android/gms/internal/measurement/b6;

    :goto_1f
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/measurement/b6;->l(D)V

    add-int/lit8 v4, v4, 0x8

    if-ge v4, v5, :cond_44

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v1

    iget v6, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v6, :cond_43

    goto :goto_20

    :cond_43
    move v4, v1

    goto :goto_1f

    :cond_44
    :goto_20
    return v4

    :goto_21
    iget-object v8, v7, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_46

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/measurement/o5;->a:I

    if-eq v2, v9, :cond_45

    goto :goto_22

    :cond_45
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/measurement/p5;->d(Lcom/google/android/gms/internal/measurement/d8;[BIIILcom/google/android/gms/internal/measurement/o5;)I

    move-result v4

    goto :goto_21

    :cond_46
    :goto_22
    return v4

    :cond_47
    :goto_23
    move v1, v4

    :goto_24
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x12
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
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(II)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v1, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move p2, v3

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final a(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

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
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

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
    ushr-int/lit8 v4, v4, 0x14

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    packed-switch v4, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_c

    .line 27
    .line 28
    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_1

    .line 56
    .line 57
    goto/16 :goto_2

    .line 58
    .line 59
    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_1

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    .line 110
    mul-int/lit8 v3, v3, 0x35

    .line 111
    .line 112
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    goto/16 :goto_7

    .line 123
    .line 124
    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eqz v4, :cond_1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

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
    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_1

    .line 143
    .line 144
    :goto_1
    mul-int/lit8 v3, v3, 0x35

    .line 145
    .line 146
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    goto/16 :goto_b

    .line 151
    .line 152
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-eqz v4, :cond_1

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-eqz v4, :cond_1

    .line 164
    .line 165
    :goto_2
    mul-int/lit8 v3, v3, 0x35

    .line 166
    .line 167
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 168
    .line 169
    .line 170
    move-result-wide v4

    .line 171
    goto/16 :goto_a

    .line 172
    .line 173
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_1

    .line 178
    .line 179
    mul-int/lit8 v3, v3, 0x35

    .line 180
    .line 181
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    check-cast v4, Ljava/lang/Float;

    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    goto :goto_8

    .line 192
    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_1

    .line 197
    .line 198
    mul-int/lit8 v3, v3, 0x35

    .line 199
    .line 200
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    check-cast v4, Ljava/lang/Double;

    .line 205
    .line 206
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 207
    .line 208
    .line 209
    move-result-wide v4

    .line 210
    goto :goto_9

    .line 211
    :pswitch_12
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_0

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :goto_3
    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    .line 219
    .line 220
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    goto :goto_b

    .line 229
    :pswitch_14
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    if-eqz v4, :cond_0

    .line 234
    .line 235
    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 236
    .line 237
    .line 238
    move-result v4

    .line 239
    goto :goto_5

    .line 240
    :cond_0
    const/16 v4, 0x25

    .line 241
    .line 242
    :goto_5
    mul-int/lit8 v3, v3, 0x35

    .line 243
    .line 244
    add-int/2addr v3, v4

    .line 245
    goto :goto_c

    .line 246
    :goto_6
    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    .line 247
    .line 248
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    check-cast v4, Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    goto :goto_b

    .line 259
    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    .line 260
    .line 261
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    :goto_7
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/x6;->a(Z)I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    goto :goto_b

    .line 270
    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    .line 271
    .line 272
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    goto :goto_b

    .line 277
    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    .line 278
    .line 279
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 280
    .line 281
    .line 282
    move-result-wide v4

    .line 283
    goto :goto_a

    .line 284
    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    .line 285
    .line 286
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 287
    .line 288
    .line 289
    move-result v4

    .line 290
    :goto_8
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    goto :goto_b

    .line 295
    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    .line 296
    .line 297
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 298
    .line 299
    .line 300
    move-result-wide v4

    .line 301
    :goto_9
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 302
    .line 303
    .line 304
    move-result-wide v4

    .line 305
    :goto_a
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/x6;->b(J)I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    :goto_b
    add-int/2addr v4, v3

    .line 310
    move v3, v4

    .line 311
    :cond_1
    :goto_c
    add-int/lit8 v2, v2, 0x3

    .line 312
    .line 313
    goto/16 :goto_0

    .line 314
    .line 315
    :cond_2
    mul-int/lit8 v3, v3, 0x35

    .line 316
    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 318
    .line 319
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/p8;->hashCode()I

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    add-int/2addr v0, v3

    .line 328
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 329
    .line 330
    if-nez v1, :cond_3

    .line 331
    .line 332
    return v0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 334
    .line 335
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 336
    .line 337
    .line 338
    const/4 p1, 0x0

    .line 339
    throw p1

    .line 340
    nop

    .line 341
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

.method public final c(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/v7;->B(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/v7;->A(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/v7;->i:I

    .line 2
    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v7;->h:[I

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/measurement/v7;->j:I

    .line 6
    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    aget v1, v1, v0

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const v2, 0xfffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v1, v2

    .line 19
    int-to-long v1, v1

    .line 20
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    move-object v4, v3

    .line 27
    check-cast v4, Lcom/google/android/gms/internal/measurement/m7;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    iput-boolean v5, v4, Lcom/google/android/gms/internal/measurement/m7;->a:Z

    .line 31
    .line 32
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    array-length v0, v1

    .line 39
    :goto_1
    if-ge v2, v0, :cond_2

    .line 40
    .line 41
    aget v3, v1, v2

    .line 42
    .line 43
    int-to-long v3, v3

    .line 44
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/v7;->k:Lcom/google/android/gms/internal/measurement/g7;

    .line 45
    .line 46
    invoke-virtual {v5, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/g7;->a(JLjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    return-void
.end method

.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->e:Lcom/google/android/gms/internal/measurement/s7;

    check-cast v0, Lcom/google/android/gms/internal/measurement/q6;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/q6;->q(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/o5;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/measurement/o5;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gms/internal/measurement/v7;->F(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/o5;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/v7;->x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/o5;)I

    return-void
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
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
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

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
    ushr-int/lit8 v2, v2, 0x14

    .line 22
    .line 23
    and-int/lit16 v2, v2, 0xff

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_6

    .line 29
    .line 30
    :pswitch_0
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :pswitch_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->o(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_6

    .line 41
    .line 42
    :pswitch_2
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    :goto_1
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v3, v4, p1, v2}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->r(IILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :pswitch_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/e8;->a:Ljava/lang/Class;

    .line 61
    .line 62
    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/n7;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/m7;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v7;->k:Lcom/google/android/gms/internal/measurement/g7;

    .line 80
    .line 81
    invoke-virtual {v1, v3, v4, p1, p2}, Lcom/google/android/gms/internal/measurement/g7;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_6

    .line 85
    .line 86
    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    goto/16 :goto_4

    .line 93
    .line 94
    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    goto/16 :goto_4

    .line 108
    .line 109
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_0

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_0

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :pswitch_c
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->n(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_6

    .line 141
    .line 142
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_0

    .line 147
    .line 148
    :goto_2
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-static {v3, v4, p1, v1}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    goto :goto_5

    .line 156
    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    .line 162
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/y8;->m(Ljava/lang/Object;JZ)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_0

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_0

    .line 189
    .line 190
    :goto_3
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-static {v1, v3, v4, p1}, Lcom/google/android/gms/internal/measurement/y8;->p(IJLjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_0

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_0

    .line 210
    .line 211
    :goto_4
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 212
    .line 213
    .line 214
    move-result-wide v1

    .line 215
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/y8;->q(Ljava/lang/Object;JJ)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_0

    .line 224
    .line 225
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/measurement/y8;->o(Ljava/lang/Object;JF)V

    .line 230
    .line 231
    .line 232
    goto :goto_5

    .line 233
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    .line 239
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 240
    .line 241
    .line 242
    move-result-wide v1

    .line 243
    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/measurement/y8;->n(Ljava/lang/Object;JD)V

    .line 244
    .line 245
    .line 246
    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/measurement/v7;->q(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    :cond_0
    :goto_6
    add-int/lit8 v0, v0, 0x3

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/measurement/e8;->a:Ljava/lang/Class;

    .line 254
    .line 255
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 256
    .line 257
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 262
    .line 263
    .line 264
    move-result-object v2

    .line 265
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/o8;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/o8;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    iget-boolean p1, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 273
    .line 274
    if-nez p1, :cond_2

    .line 275
    .line 276
    return-void

    .line 277
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 280
    .line 281
    .line 282
    const/4 p1, 0x0

    .line 283
    throw p1

    .line 284
    nop

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

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const v5, 0xfffff

    .line 13
    .line 14
    .line 15
    and-int v6, v4, v5

    .line 16
    .line 17
    int-to-long v6, v6

    .line 18
    ushr-int/lit8 v4, v4, 0x14

    .line 19
    .line 20
    and-int/lit16 v4, v4, 0xff

    .line 21
    .line 22
    packed-switch v4, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :pswitch_0
    add-int/lit8 v4, v3, 0x2

    .line 28
    .line 29
    aget v4, v0, v4

    .line 30
    .line 31
    and-int/2addr v4, v5

    .line 32
    int-to-long v4, v4

    .line 33
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-static {v4, v5, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-ne v8, v4, :cond_0

    .line 42
    .line 43
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_1
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_1

    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_0

    .line 80
    .line 81
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_0

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    cmp-long v8, v4, v6

    .line 112
    .line 113
    if-nez v8, :cond_0

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_0

    .line 122
    .line 123
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ne v4, v5, :cond_0

    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    if-eqz v4, :cond_0

    .line 140
    .line 141
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v4

    .line 145
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v6

    .line 149
    cmp-long v8, v4, v6

    .line 150
    .line 151
    if-nez v8, :cond_0

    .line 152
    .line 153
    goto/16 :goto_2

    .line 154
    .line 155
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_0

    .line 160
    .line 161
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-ne v4, v5, :cond_0

    .line 170
    .line 171
    goto/16 :goto_2

    .line 172
    .line 173
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-eqz v4, :cond_0

    .line 178
    .line 179
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-ne v4, v5, :cond_0

    .line 188
    .line 189
    goto/16 :goto_2

    .line 190
    .line 191
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_0

    .line 196
    .line 197
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-ne v4, v5, :cond_0

    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_0

    .line 214
    .line 215
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_0

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_0

    .line 236
    .line 237
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_0

    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    if-eqz v4, :cond_0

    .line 258
    .line 259
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/e8;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_0

    .line 272
    .line 273
    goto/16 :goto_2

    .line 274
    .line 275
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v4

    .line 279
    if-eqz v4, :cond_0

    .line 280
    .line 281
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    if-ne v4, v5, :cond_0

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    if-eqz v4, :cond_0

    .line 298
    .line 299
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-ne v4, v5, :cond_0

    .line 308
    .line 309
    goto/16 :goto_2

    .line 310
    .line 311
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-eqz v4, :cond_0

    .line 316
    .line 317
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 318
    .line 319
    .line 320
    move-result-wide v4

    .line 321
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v6

    .line 325
    cmp-long v8, v4, v6

    .line 326
    .line 327
    if-nez v8, :cond_0

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v4

    .line 335
    if-eqz v4, :cond_0

    .line 336
    .line 337
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-ne v4, v5, :cond_0

    .line 346
    .line 347
    goto :goto_2

    .line 348
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_0

    .line 353
    .line 354
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 359
    .line 360
    .line 361
    move-result-wide v6

    .line 362
    cmp-long v8, v4, v6

    .line 363
    .line 364
    if-nez v8, :cond_0

    .line 365
    .line 366
    goto :goto_2

    .line 367
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v4

    .line 371
    if-eqz v4, :cond_0

    .line 372
    .line 373
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 374
    .line 375
    .line 376
    move-result-wide v4

    .line 377
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 378
    .line 379
    .line 380
    move-result-wide v6

    .line 381
    cmp-long v8, v4, v6

    .line 382
    .line 383
    if-nez v8, :cond_0

    .line 384
    .line 385
    goto :goto_2

    .line 386
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    move-result v4

    .line 390
    if-eqz v4, :cond_0

    .line 391
    .line 392
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 405
    .line 406
    .line 407
    move-result v5

    .line 408
    if-ne v4, v5, :cond_0

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->s(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 412
    .line 413
    .line 414
    move-result v4

    .line 415
    if-eqz v4, :cond_0

    .line 416
    .line 417
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 418
    .line 419
    .line 420
    move-result-wide v4

    .line 421
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 422
    .line 423
    .line 424
    move-result-wide v4

    .line 425
    invoke-static {v6, v7, p2}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 430
    .line 431
    .line 432
    move-result-wide v6

    .line 433
    cmp-long v8, v4, v6

    .line 434
    .line 435
    if-nez v8, :cond_0

    .line 436
    .line 437
    goto :goto_2

    .line 438
    :cond_0
    :goto_1
    return v2

    .line 439
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x3

    .line 440
    .line 441
    goto/16 :goto_0

    .line 442
    .line 443
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 444
    .line 445
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/p8;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_3

    .line 458
    .line 459
    return v2

    .line 460
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 461
    .line 462
    if-nez v0, :cond_4

    .line 463
    .line 464
    const/4 p1, 0x1

    .line 465
    return p1

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 467
    .line 468
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 472
    .line 473
    .line 474
    const/4 p1, 0x0

    .line 475
    throw p1

    .line 476
    nop

    .line 477
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

.method public final i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/a6;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 11
    .line 12
    array-length v2, v0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    :goto_0
    if-ge v4, v2, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    aget v6, v0, v4

    .line 22
    .line 23
    ushr-int/lit8 v7, v5, 0x14

    .line 24
    .line 25
    and-int/lit16 v7, v7, 0xff

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    const v9, 0xfffff

    .line 29
    .line 30
    .line 31
    packed-switch v7, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_13

    .line 35
    .line 36
    :pswitch_0
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_1
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_1

    .line 49
    .line 50
    and-int/2addr v5, v9

    .line 51
    int-to-long v7, v5

    .line 52
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :pswitch_2
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    and-int/2addr v5, v9

    .line 65
    int-to-long v7, v5

    .line 66
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :pswitch_3
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    and-int/2addr v5, v9

    .line 79
    int-to-long v7, v5

    .line 80
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :pswitch_4
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    and-int/2addr v5, v9

    .line 93
    int-to-long v7, v5

    .line 94
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    goto/16 :goto_5

    .line 99
    .line 100
    :pswitch_5
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    if-eqz v7, :cond_1

    .line 105
    .line 106
    and-int/2addr v5, v9

    .line 107
    int-to-long v7, v5

    .line 108
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :pswitch_6
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_1

    .line 119
    .line 120
    and-int/2addr v5, v9

    .line 121
    int-to-long v7, v5

    .line 122
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :pswitch_7
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_1

    .line 133
    .line 134
    goto/16 :goto_8

    .line 135
    .line 136
    :pswitch_8
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_1

    .line 141
    .line 142
    goto/16 :goto_9

    .line 143
    .line 144
    :pswitch_9
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_1

    .line 149
    .line 150
    goto/16 :goto_a

    .line 151
    .line 152
    :pswitch_a
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_1

    .line 157
    .line 158
    and-int/2addr v5, v9

    .line 159
    int-to-long v7, v5

    .line 160
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    check-cast v5, Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    goto/16 :goto_b

    .line 171
    .line 172
    :pswitch_b
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-eqz v7, :cond_1

    .line 177
    .line 178
    and-int/2addr v5, v9

    .line 179
    int-to-long v7, v5

    .line 180
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    goto/16 :goto_c

    .line 185
    .line 186
    :pswitch_c
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_1

    .line 191
    .line 192
    and-int/2addr v5, v9

    .line 193
    int-to-long v7, v5

    .line 194
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    goto/16 :goto_d

    .line 199
    .line 200
    :pswitch_d
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-eqz v7, :cond_1

    .line 205
    .line 206
    and-int/2addr v5, v9

    .line 207
    int-to-long v7, v5

    .line 208
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    goto/16 :goto_e

    .line 213
    .line 214
    :pswitch_e
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    if-eqz v7, :cond_1

    .line 219
    .line 220
    and-int/2addr v5, v9

    .line 221
    int-to-long v7, v5

    .line 222
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 223
    .line 224
    .line 225
    move-result-wide v7

    .line 226
    goto/16 :goto_f

    .line 227
    .line 228
    :pswitch_f
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-eqz v7, :cond_1

    .line 233
    .line 234
    and-int/2addr v5, v9

    .line 235
    int-to-long v7, v5

    .line 236
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 237
    .line 238
    .line 239
    move-result-wide v7

    .line 240
    goto/16 :goto_10

    .line 241
    .line 242
    :pswitch_10
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_1

    .line 247
    .line 248
    and-int/2addr v5, v9

    .line 249
    int-to-long v7, v5

    .line 250
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    check-cast v5, Ljava/lang/Float;

    .line 255
    .line 256
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    goto/16 :goto_11

    .line 261
    .line 262
    :pswitch_11
    invoke-virtual {p0, v6, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_1

    .line 267
    .line 268
    and-int/2addr v5, v9

    .line 269
    int-to-long v7, v5

    .line 270
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    check-cast v5, Ljava/lang/Double;

    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 277
    .line 278
    .line 279
    move-result-wide v7

    .line 280
    goto/16 :goto_12

    .line 281
    .line 282
    :pswitch_12
    and-int/2addr v5, v9

    .line 283
    int-to-long v5, v5

    .line 284
    invoke-static {v5, v6, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    if-nez v5, :cond_0

    .line 289
    .line 290
    goto/16 :goto_13

    .line 291
    .line 292
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Lcom/google/android/gms/internal/measurement/l7;

    .line 297
    .line 298
    throw v1

    .line 299
    :pswitch_13
    and-int/2addr v5, v9

    .line 300
    int-to-long v7, v5

    .line 301
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    check-cast v5, Ljava/util/List;

    .line 306
    .line 307
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 308
    .line 309
    .line 310
    move-result-object v7

    .line 311
    invoke-static {v6, v5, p2, v7}, Lcom/google/android/gms/internal/measurement/e8;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Lcom/google/android/gms/internal/measurement/d8;)V

    .line 312
    .line 313
    .line 314
    goto/16 :goto_13

    .line 315
    .line 316
    :pswitch_14
    and-int/2addr v5, v9

    .line 317
    int-to-long v9, v5

    .line 318
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    check-cast v5, Ljava/util/List;

    .line 323
    .line 324
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 325
    .line 326
    .line 327
    goto/16 :goto_13

    .line 328
    .line 329
    :pswitch_15
    and-int/2addr v5, v9

    .line 330
    int-to-long v9, v5

    .line 331
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, Ljava/util/List;

    .line 336
    .line 337
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_13

    .line 341
    .line 342
    :pswitch_16
    and-int/2addr v5, v9

    .line 343
    int-to-long v9, v5

    .line 344
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    check-cast v5, Ljava/util/List;

    .line 349
    .line 350
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_13

    .line 354
    .line 355
    :pswitch_17
    and-int/2addr v5, v9

    .line 356
    int-to-long v9, v5

    .line 357
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v5

    .line 361
    check-cast v5, Ljava/util/List;

    .line 362
    .line 363
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_13

    .line 367
    .line 368
    :pswitch_18
    and-int/2addr v5, v9

    .line 369
    int-to-long v9, v5

    .line 370
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v5

    .line 374
    check-cast v5, Ljava/util/List;

    .line 375
    .line 376
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_13

    .line 380
    .line 381
    :pswitch_19
    and-int/2addr v5, v9

    .line 382
    int-to-long v9, v5

    .line 383
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    check-cast v5, Ljava/util/List;

    .line 388
    .line 389
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_13

    .line 393
    .line 394
    :pswitch_1a
    and-int/2addr v5, v9

    .line 395
    int-to-long v9, v5

    .line 396
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    check-cast v5, Ljava/util/List;

    .line 401
    .line 402
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 403
    .line 404
    .line 405
    goto/16 :goto_13

    .line 406
    .line 407
    :pswitch_1b
    and-int/2addr v5, v9

    .line 408
    int-to-long v9, v5

    .line 409
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/util/List;

    .line 414
    .line 415
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_13

    .line 419
    .line 420
    :pswitch_1c
    and-int/2addr v5, v9

    .line 421
    int-to-long v9, v5

    .line 422
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    check-cast v5, Ljava/util/List;

    .line 427
    .line 428
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 429
    .line 430
    .line 431
    goto/16 :goto_13

    .line 432
    .line 433
    :pswitch_1d
    and-int/2addr v5, v9

    .line 434
    int-to-long v9, v5

    .line 435
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Ljava/util/List;

    .line 440
    .line 441
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_13

    .line 445
    .line 446
    :pswitch_1e
    and-int/2addr v5, v9

    .line 447
    int-to-long v9, v5

    .line 448
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    check-cast v5, Ljava/util/List;

    .line 453
    .line 454
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_13

    .line 458
    .line 459
    :pswitch_1f
    and-int/2addr v5, v9

    .line 460
    int-to-long v9, v5

    .line 461
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v5

    .line 465
    check-cast v5, Ljava/util/List;

    .line 466
    .line 467
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 468
    .line 469
    .line 470
    goto/16 :goto_13

    .line 471
    .line 472
    :pswitch_20
    and-int/2addr v5, v9

    .line 473
    int-to-long v9, v5

    .line 474
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    move-result-object v5

    .line 478
    check-cast v5, Ljava/util/List;

    .line 479
    .line 480
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_13

    .line 484
    .line 485
    :pswitch_21
    and-int/2addr v5, v9

    .line 486
    int-to-long v9, v5

    .line 487
    invoke-static {v9, v10, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    check-cast v5, Ljava/util/List;

    .line 492
    .line 493
    invoke-static {v6, v5, p2, v8}, Lcom/google/android/gms/internal/measurement/e8;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 494
    .line 495
    .line 496
    goto/16 :goto_13

    .line 497
    .line 498
    :pswitch_22
    and-int/2addr v5, v9

    .line 499
    int-to-long v7, v5

    .line 500
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v5

    .line 504
    check-cast v5, Ljava/util/List;

    .line 505
    .line 506
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_13

    .line 510
    .line 511
    :pswitch_23
    and-int/2addr v5, v9

    .line 512
    int-to-long v7, v5

    .line 513
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object v5

    .line 517
    check-cast v5, Ljava/util/List;

    .line 518
    .line 519
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 520
    .line 521
    .line 522
    goto/16 :goto_13

    .line 523
    .line 524
    :pswitch_24
    and-int/2addr v5, v9

    .line 525
    int-to-long v7, v5

    .line 526
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    check-cast v5, Ljava/util/List;

    .line 531
    .line 532
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 533
    .line 534
    .line 535
    goto/16 :goto_13

    .line 536
    .line 537
    :pswitch_25
    and-int/2addr v5, v9

    .line 538
    int-to-long v7, v5

    .line 539
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    check-cast v5, Ljava/util/List;

    .line 544
    .line 545
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_13

    .line 549
    .line 550
    :pswitch_26
    and-int/2addr v5, v9

    .line 551
    int-to-long v7, v5

    .line 552
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v5

    .line 556
    check-cast v5, Ljava/util/List;

    .line 557
    .line 558
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 559
    .line 560
    .line 561
    goto/16 :goto_13

    .line 562
    .line 563
    :pswitch_27
    and-int/2addr v5, v9

    .line 564
    int-to-long v7, v5

    .line 565
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v5

    .line 569
    check-cast v5, Ljava/util/List;

    .line 570
    .line 571
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_13

    .line 575
    .line 576
    :pswitch_28
    and-int/2addr v5, v9

    .line 577
    int-to-long v7, v5

    .line 578
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    check-cast v5, Ljava/util/List;

    .line 583
    .line 584
    invoke-static {v6, v5, p2}, Lcom/google/android/gms/internal/measurement/e8;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_13

    .line 588
    .line 589
    :pswitch_29
    and-int/2addr v5, v9

    .line 590
    int-to-long v7, v5

    .line 591
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    check-cast v5, Ljava/util/List;

    .line 596
    .line 597
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-static {v6, v5, p2, v7}, Lcom/google/android/gms/internal/measurement/e8;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Lcom/google/android/gms/internal/measurement/d8;)V

    .line 602
    .line 603
    .line 604
    goto/16 :goto_13

    .line 605
    .line 606
    :pswitch_2a
    and-int/2addr v5, v9

    .line 607
    int-to-long v7, v5

    .line 608
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 609
    .line 610
    .line 611
    move-result-object v5

    .line 612
    check-cast v5, Ljava/util/List;

    .line 613
    .line 614
    invoke-static {v6, v5, p2}, Lcom/google/android/gms/internal/measurement/e8;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 615
    .line 616
    .line 617
    goto/16 :goto_13

    .line 618
    .line 619
    :pswitch_2b
    and-int/2addr v5, v9

    .line 620
    int-to-long v7, v5

    .line 621
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    check-cast v5, Ljava/util/List;

    .line 626
    .line 627
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_13

    .line 631
    .line 632
    :pswitch_2c
    and-int/2addr v5, v9

    .line 633
    int-to-long v7, v5

    .line 634
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    check-cast v5, Ljava/util/List;

    .line 639
    .line 640
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 641
    .line 642
    .line 643
    goto/16 :goto_13

    .line 644
    .line 645
    :pswitch_2d
    and-int/2addr v5, v9

    .line 646
    int-to-long v7, v5

    .line 647
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    check-cast v5, Ljava/util/List;

    .line 652
    .line 653
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_13

    .line 657
    .line 658
    :pswitch_2e
    and-int/2addr v5, v9

    .line 659
    int-to-long v7, v5

    .line 660
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    check-cast v5, Ljava/util/List;

    .line 665
    .line 666
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 667
    .line 668
    .line 669
    goto/16 :goto_13

    .line 670
    .line 671
    :pswitch_2f
    and-int/2addr v5, v9

    .line 672
    int-to-long v7, v5

    .line 673
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    check-cast v5, Ljava/util/List;

    .line 678
    .line 679
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_13

    .line 683
    .line 684
    :pswitch_30
    and-int/2addr v5, v9

    .line 685
    int-to-long v7, v5

    .line 686
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    check-cast v5, Ljava/util/List;

    .line 691
    .line 692
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_13

    .line 696
    .line 697
    :pswitch_31
    and-int/2addr v5, v9

    .line 698
    int-to-long v7, v5

    .line 699
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v5

    .line 703
    check-cast v5, Ljava/util/List;

    .line 704
    .line 705
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_13

    .line 709
    .line 710
    :pswitch_32
    and-int/2addr v5, v9

    .line 711
    int-to-long v7, v5

    .line 712
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v5

    .line 716
    check-cast v5, Ljava/util/List;

    .line 717
    .line 718
    invoke-static {v6, v5, p2, v3}, Lcom/google/android/gms/internal/measurement/e8;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 719
    .line 720
    .line 721
    goto/16 :goto_13

    .line 722
    .line 723
    :pswitch_33
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result v7

    .line 727
    if-eqz v7, :cond_1

    .line 728
    .line 729
    :goto_1
    and-int/2addr v5, v9

    .line 730
    int-to-long v7, v5

    .line 731
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    invoke-virtual {p2, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/a6;->l(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 740
    .line 741
    .line 742
    goto/16 :goto_13

    .line 743
    .line 744
    :pswitch_34
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v7

    .line 748
    if-eqz v7, :cond_1

    .line 749
    .line 750
    and-int/2addr v5, v9

    .line 751
    int-to-long v7, v5

    .line 752
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 753
    .line 754
    .line 755
    move-result-wide v7

    .line 756
    :goto_2
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->b(IJ)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_13

    .line 760
    .line 761
    :pswitch_35
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    if-eqz v7, :cond_1

    .line 766
    .line 767
    and-int/2addr v5, v9

    .line 768
    int-to-long v7, v5

    .line 769
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 770
    .line 771
    .line 772
    move-result v5

    .line 773
    :goto_3
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->a(II)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_13

    .line 777
    .line 778
    :pswitch_36
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v7

    .line 782
    if-eqz v7, :cond_1

    .line 783
    .line 784
    and-int/2addr v5, v9

    .line 785
    int-to-long v7, v5

    .line 786
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 787
    .line 788
    .line 789
    move-result-wide v7

    .line 790
    :goto_4
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->q(IJ)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_13

    .line 794
    .line 795
    :pswitch_37
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    move-result v7

    .line 799
    if-eqz v7, :cond_1

    .line 800
    .line 801
    and-int/2addr v5, v9

    .line 802
    int-to-long v7, v5

    .line 803
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 804
    .line 805
    .line 806
    move-result v5

    .line 807
    :goto_5
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->p(II)V

    .line 808
    .line 809
    .line 810
    goto/16 :goto_13

    .line 811
    .line 812
    :pswitch_38
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    if-eqz v7, :cond_1

    .line 817
    .line 818
    and-int/2addr v5, v9

    .line 819
    int-to-long v7, v5

    .line 820
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 821
    .line 822
    .line 823
    move-result v5

    .line 824
    :goto_6
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->h(II)V

    .line 825
    .line 826
    .line 827
    goto/16 :goto_13

    .line 828
    .line 829
    :pswitch_39
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v7

    .line 833
    if-eqz v7, :cond_1

    .line 834
    .line 835
    and-int/2addr v5, v9

    .line 836
    int-to-long v7, v5

    .line 837
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    :goto_7
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->c(II)V

    .line 842
    .line 843
    .line 844
    goto/16 :goto_13

    .line 845
    .line 846
    :pswitch_3a
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 847
    .line 848
    .line 849
    move-result v7

    .line 850
    if-eqz v7, :cond_1

    .line 851
    .line 852
    :goto_8
    and-int/2addr v5, v9

    .line 853
    int-to-long v7, v5

    .line 854
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    move-result-object v5

    .line 858
    check-cast v5, Lcom/google/android/gms/internal/measurement/v5;

    .line 859
    .line 860
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->f(ILcom/google/android/gms/internal/measurement/v5;)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_13

    .line 864
    .line 865
    :pswitch_3b
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 866
    .line 867
    .line 868
    move-result v7

    .line 869
    if-eqz v7, :cond_1

    .line 870
    .line 871
    :goto_9
    and-int/2addr v5, v9

    .line 872
    int-to-long v7, v5

    .line 873
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 874
    .line 875
    .line 876
    move-result-object v5

    .line 877
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 878
    .line 879
    .line 880
    move-result-object v7

    .line 881
    invoke-virtual {p2, v6, v7, v5}, Lcom/google/android/gms/internal/measurement/a6;->o(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 882
    .line 883
    .line 884
    goto/16 :goto_13

    .line 885
    .line 886
    :pswitch_3c
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v7

    .line 890
    if-eqz v7, :cond_1

    .line 891
    .line 892
    :goto_a
    and-int/2addr v5, v9

    .line 893
    int-to-long v7, v5

    .line 894
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    move-result-object v5

    .line 898
    invoke-static {v6, v5, p2}, Lcom/google/android/gms/internal/measurement/v7;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 899
    .line 900
    .line 901
    goto/16 :goto_13

    .line 902
    .line 903
    :pswitch_3d
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 904
    .line 905
    .line 906
    move-result v7

    .line 907
    if-eqz v7, :cond_1

    .line 908
    .line 909
    and-int/2addr v5, v9

    .line 910
    int-to-long v7, v5

    .line 911
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 912
    .line 913
    .line 914
    move-result v5

    .line 915
    :goto_b
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->e(IZ)V

    .line 916
    .line 917
    .line 918
    goto/16 :goto_13

    .line 919
    .line 920
    :pswitch_3e
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    move-result v7

    .line 924
    if-eqz v7, :cond_1

    .line 925
    .line 926
    and-int/2addr v5, v9

    .line 927
    int-to-long v7, v5

    .line 928
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 929
    .line 930
    .line 931
    move-result v5

    .line 932
    :goto_c
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->i(II)V

    .line 933
    .line 934
    .line 935
    goto :goto_13

    .line 936
    :pswitch_3f
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    move-result v7

    .line 940
    if-eqz v7, :cond_1

    .line 941
    .line 942
    and-int/2addr v5, v9

    .line 943
    int-to-long v7, v5

    .line 944
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 945
    .line 946
    .line 947
    move-result-wide v7

    .line 948
    :goto_d
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->j(IJ)V

    .line 949
    .line 950
    .line 951
    goto :goto_13

    .line 952
    :pswitch_40
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 953
    .line 954
    .line 955
    move-result v7

    .line 956
    if-eqz v7, :cond_1

    .line 957
    .line 958
    and-int/2addr v5, v9

    .line 959
    int-to-long v7, v5

    .line 960
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 961
    .line 962
    .line 963
    move-result v5

    .line 964
    :goto_e
    invoke-virtual {p2, v6, v5}, Lcom/google/android/gms/internal/measurement/a6;->m(II)V

    .line 965
    .line 966
    .line 967
    goto :goto_13

    .line 968
    :pswitch_41
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 969
    .line 970
    .line 971
    move-result v7

    .line 972
    if-eqz v7, :cond_1

    .line 973
    .line 974
    and-int/2addr v5, v9

    .line 975
    int-to-long v7, v5

    .line 976
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 977
    .line 978
    .line 979
    move-result-wide v7

    .line 980
    :goto_f
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->d(IJ)V

    .line 981
    .line 982
    .line 983
    goto :goto_13

    .line 984
    :pswitch_42
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result v7

    .line 988
    if-eqz v7, :cond_1

    .line 989
    .line 990
    and-int/2addr v5, v9

    .line 991
    int-to-long v7, v5

    .line 992
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 993
    .line 994
    .line 995
    move-result-wide v7

    .line 996
    :goto_10
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->n(IJ)V

    .line 997
    .line 998
    .line 999
    goto :goto_13

    .line 1000
    :pswitch_43
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v7

    .line 1004
    if-eqz v7, :cond_1

    .line 1005
    .line 1006
    and-int/2addr v5, v9

    .line 1007
    int-to-long v7, v5

    .line 1008
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 1009
    .line 1010
    .line 1011
    move-result v5

    .line 1012
    :goto_11
    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/measurement/a6;->k(FI)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_13

    .line 1016
    :pswitch_44
    invoke-virtual {p0, v4, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v7

    .line 1020
    if-eqz v7, :cond_1

    .line 1021
    .line 1022
    and-int/2addr v5, v9

    .line 1023
    int-to-long v7, v5

    .line 1024
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v7

    .line 1028
    :goto_12
    invoke-virtual {p2, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/a6;->g(ID)V

    .line 1029
    .line 1030
    .line 1031
    :cond_1
    :goto_13
    add-int/lit8 v4, v4, 0x3

    .line 1032
    .line 1033
    goto/16 :goto_0

    .line 1034
    .line 1035
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 1036
    .line 1037
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/o8;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 1042
    .line 1043
    .line 1044
    return-void

    .line 1045
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 1046
    .line 1047
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 1048
    .line 1049
    .line 1050
    throw v1

    .line 1051
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->v(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 1052
    .line 1053
    .line 1054
    return-void

    .line 1055
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

.method public final k(I)Lcom/google/android/gms/internal/measurement/d8;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    add-int/2addr p1, p1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    .line 5
    .line 6
    aget-object v1, v0, p1

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/measurement/d8;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a8;->c:Lcom/google/android/gms/internal/measurement/a8;

    .line 14
    .line 15
    add-int/lit8 v2, p1, 0x1

    .line 16
    .line 17
    aget-object v2, v0, v2

    .line 18
    .line 19
    check-cast v2, Ljava/lang/Class;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/measurement/a8;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/d8;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    aput-object v1, v0, p1

    .line 26
    .line 27
    return-object v1
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final n(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v2, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, p3}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object p3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    :goto_1
    invoke-static {v0, v1, p2, p3}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->q(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final o(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    aget v1, v1, p1

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, p1, p3}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v3, p3}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object p3

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    :goto_2
    invoke-static {v2, v3, p2, p3}, Lcom/google/android/gms/internal/measurement/y8;->r(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->r(IILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final p(Ljava/lang/Object;)Z
    .locals 14
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
    const/4 v5, 0x1

    .line 11
    iget v6, p0, Lcom/google/android/gms/internal/measurement/v7;->i:I

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-ge v2, v6, :cond_f

    .line 15
    .line 16
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/v7;->h:[I

    .line 17
    .line 18
    aget v6, v6, v2

    .line 19
    .line 20
    iget-object v8, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 21
    .line 22
    aget v9, v8, v6

    .line 23
    .line 24
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v10

    .line 28
    add-int/lit8 v11, v6, 0x2

    .line 29
    .line 30
    aget v8, v8, v11

    .line 31
    .line 32
    and-int v11, v8, v0

    .line 33
    .line 34
    ushr-int/lit8 v8, v8, 0x14

    .line 35
    .line 36
    shl-int v8, v5, v8

    .line 37
    .line 38
    if-eq v11, v3, :cond_1

    .line 39
    .line 40
    if-eq v11, v0, :cond_0

    .line 41
    .line 42
    sget-object v3, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    .line 43
    .line 44
    int-to-long v12, v11

    .line 45
    invoke-virtual {v3, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :cond_0
    move v3, v11

    .line 50
    :cond_1
    const/high16 v11, 0x10000000

    .line 51
    .line 52
    and-int/2addr v11, v10

    .line 53
    if-eqz v11, :cond_5

    .line 54
    .line 55
    if-ne v3, v0, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    and-int v11, v4, v8

    .line 63
    .line 64
    if-eqz v11, :cond_3

    .line 65
    .line 66
    const/4 v11, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v11, 0x0

    .line 69
    :goto_1
    if-eqz v11, :cond_4

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    return v1

    .line 73
    :cond_5
    :goto_2
    ushr-int/lit8 v11, v10, 0x14

    .line 74
    .line 75
    and-int/lit16 v11, v11, 0xff

    .line 76
    .line 77
    const/16 v12, 0x9

    .line 78
    .line 79
    if-eq v11, v12, :cond_b

    .line 80
    .line 81
    const/16 v12, 0x11

    .line 82
    .line 83
    if-eq v11, v12, :cond_b

    .line 84
    .line 85
    const/16 v5, 0x1b

    .line 86
    .line 87
    if-eq v11, v5, :cond_9

    .line 88
    .line 89
    const/16 v5, 0x3c

    .line 90
    .line 91
    if-eq v11, v5, :cond_8

    .line 92
    .line 93
    const/16 v5, 0x44

    .line 94
    .line 95
    if-eq v11, v5, :cond_8

    .line 96
    .line 97
    const/16 v5, 0x31

    .line 98
    .line 99
    if-eq v11, v5, :cond_9

    .line 100
    .line 101
    const/16 v5, 0x32

    .line 102
    .line 103
    if-eq v11, v5, :cond_6

    .line 104
    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_6
    and-int v5, v10, v0

    .line 108
    .line 109
    int-to-long v8, v5

    .line 110
    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/google/android/gms/internal/measurement/m7;

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_7

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/google/android/gms/internal/measurement/l7;

    .line 128
    .line 129
    throw v7

    .line 130
    :cond_8
    invoke-virtual {p0, v9, v6, p1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_e

    .line 135
    .line 136
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    and-int v6, v10, v0

    .line 141
    .line 142
    int-to-long v6, v6

    .line 143
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/d8;->p(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    if-nez v5, :cond_e

    .line 152
    .line 153
    return v1

    .line 154
    :cond_9
    and-int v5, v10, v0

    .line 155
    .line 156
    int-to-long v7, v5

    .line 157
    invoke-static {v7, v8, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Ljava/util/List;

    .line 162
    .line 163
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    if-nez v7, :cond_e

    .line 168
    .line 169
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    const/4 v7, 0x0

    .line 174
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v8

    .line 178
    if-ge v7, v8, :cond_e

    .line 179
    .line 180
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/measurement/d8;->p(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-nez v8, :cond_a

    .line 189
    .line 190
    return v1

    .line 191
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_b
    if-ne v3, v0, :cond_c

    .line 195
    .line 196
    invoke-virtual {p0, v6, p1}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    goto :goto_4

    .line 201
    :cond_c
    and-int v7, v4, v8

    .line 202
    .line 203
    if-eqz v7, :cond_d

    .line 204
    .line 205
    goto :goto_4

    .line 206
    :cond_d
    const/4 v5, 0x0

    .line 207
    :goto_4
    if-eqz v5, :cond_e

    .line 208
    .line 209
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    and-int v6, v10, v0

    .line 214
    .line 215
    int-to-long v6, v6

    .line 216
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/measurement/d8;->p(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-nez v5, :cond_e

    .line 225
    .line 226
    return v1

    .line 227
    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 232
    .line 233
    if-nez v0, :cond_10

    .line 234
    .line 235
    return v5

    .line 236
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 239
    .line 240
    .line 241
    throw v7
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 5

    .line 1
    add-int/lit8 p1, p1, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

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
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    ushr-int/lit8 p1, p1, 0x14

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    shl-int p1, v3, p1

    .line 28
    .line 29
    or-int/2addr p1, v2

    .line 30
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->p(IJLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final r(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

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
    invoke-static {p1, v0, v1, p3}, Lcom/google/android/gms/internal/measurement/y8;->p(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final s(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/v7;->t(ILjava/lang/Object;)Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final t(ILjava/lang/Object;)Z
    .locals 9

    .line 1
    add-int/lit8 v0, p1, 0x2

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

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
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

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
    ushr-int/lit8 p1, p1, 0x14

    .line 30
    .line 31
    and-int/lit16 p1, p1, 0xff

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    packed-switch p1, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    return v7

    .line 51
    :cond_0
    return v6

    .line 52
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    cmp-long v0, p1, v2

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    return v7

    .line 61
    :cond_1
    return v6

    .line 62
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    return v7

    .line 69
    :cond_2
    return v6

    .line 70
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 71
    .line 72
    .line 73
    move-result-wide p1

    .line 74
    cmp-long v0, p1, v2

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return v7

    .line 79
    :cond_3
    return v6

    .line 80
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return v7

    .line 87
    :cond_4
    return v6

    .line 88
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    return v7

    .line 95
    :cond_5
    return v6

    .line 96
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_6

    .line 101
    .line 102
    return v7

    .line 103
    :cond_6
    return v6

    .line 104
    :pswitch_7
    sget-object p1, Lcom/google/android/gms/internal/measurement/v5;->b:Lcom/google/android/gms/internal/measurement/u5;

    .line 105
    .line 106
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/u5;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_7

    .line 115
    .line 116
    return v7

    .line 117
    :cond_7
    return v6

    .line 118
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-eqz p1, :cond_8

    .line 123
    .line 124
    return v7

    .line 125
    :cond_8
    return v6

    .line 126
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    instance-of p2, p1, Ljava/lang/String;

    .line 131
    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    check-cast p1, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_9

    .line 141
    .line 142
    return v7

    .line 143
    :cond_9
    return v6

    .line 144
    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/measurement/v5;

    .line 145
    .line 146
    if-eqz p2, :cond_c

    .line 147
    .line 148
    sget-object p2, Lcom/google/android/gms/internal/measurement/v5;->b:Lcom/google/android/gms/internal/measurement/u5;

    .line 149
    .line 150
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/measurement/u5;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    return v7

    .line 157
    :cond_b
    return v6

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    return p1

    .line 169
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_d

    .line 174
    .line 175
    return v7

    .line 176
    :cond_d
    return v6

    .line 177
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 178
    .line 179
    .line 180
    move-result-wide p1

    .line 181
    cmp-long v0, p1, v2

    .line 182
    .line 183
    if-eqz v0, :cond_e

    .line 184
    .line 185
    return v7

    .line 186
    :cond_e
    return v6

    .line 187
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-eqz p1, :cond_f

    .line 192
    .line 193
    return v7

    .line 194
    :cond_f
    return v6

    .line 195
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 196
    .line 197
    .line 198
    move-result-wide p1

    .line 199
    cmp-long v0, p1, v2

    .line 200
    .line 201
    if-eqz v0, :cond_10

    .line 202
    .line 203
    return v7

    .line 204
    :cond_10
    return v6

    .line 205
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->h(JLjava/lang/Object;)J

    .line 206
    .line 207
    .line 208
    move-result-wide p1

    .line 209
    cmp-long v0, p1, v2

    .line 210
    .line 211
    if-eqz v0, :cond_11

    .line 212
    .line 213
    return v7

    .line 214
    :cond_11
    return v6

    .line 215
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 220
    .line 221
    .line 222
    move-result p1

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
    invoke-static {v0, v1, p2}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 228
    .line 229
    .line 230
    move-result-wide p1

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 232
    .line 233
    .line 234
    move-result-wide p1

    .line 235
    cmp-long v0, p1, v2

    .line 236
    .line 237
    if-eqz v0, :cond_13

    .line 238
    .line 239
    return v7

    .line 240
    :cond_13
    return v6

    .line 241
    :cond_14
    invoke-static {v2, v3, p2}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    ushr-int/lit8 p2, v0, 0x14

    .line 246
    .line 247
    shl-int p2, v7, p2

    .line 248
    .line 249
    and-int/2addr p1, p2

    .line 250
    if-eqz p1, :cond_15

    .line 251
    .line 252
    return v7

    .line 253
    :cond_15
    return v6

    .line 254
    nop

    .line 255
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

.method public final u(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

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
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/measurement/y8;->g(JLjava/lang/Object;)I

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

.method public final v(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/measurement/a6;",
            ")V"
        }
    .end annotation

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
    iget-boolean v3, v0, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    .line 8
    .line 9
    if-nez v3, :cond_6

    .line 10
    .line 11
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    .line 12
    .line 13
    array-length v5, v3

    .line 14
    const v6, 0xfffff

    .line 15
    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const v9, 0xfffff

    .line 19
    .line 20
    .line 21
    const/4 v10, 0x0

    .line 22
    :goto_0
    if-ge v8, v5, :cond_5

    .line 23
    .line 24
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    .line 25
    .line 26
    .line 27
    move-result v11

    .line 28
    aget v12, v3, v8

    .line 29
    .line 30
    ushr-int/lit8 v13, v11, 0x14

    .line 31
    .line 32
    and-int/lit16 v13, v13, 0xff

    .line 33
    .line 34
    const/16 v14, 0x11

    .line 35
    .line 36
    const/4 v15, 0x1

    .line 37
    sget-object v7, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    .line 38
    .line 39
    if-gt v13, v14, :cond_1

    .line 40
    .line 41
    add-int/lit8 v14, v8, 0x2

    .line 42
    .line 43
    aget v14, v3, v14

    .line 44
    .line 45
    and-int v4, v14, v6

    .line 46
    .line 47
    if-eq v4, v9, :cond_0

    .line 48
    .line 49
    int-to-long v9, v4

    .line 50
    invoke-virtual {v7, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    move v9, v4

    .line 55
    :cond_0
    ushr-int/lit8 v4, v14, 0x14

    .line 56
    .line 57
    shl-int v4, v15, v4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v4, 0x0

    .line 61
    :goto_1
    and-int/2addr v11, v6

    .line 62
    move-object/from16 v16, v7

    .line 63
    .line 64
    int-to-long v6, v11

    .line 65
    packed-switch v13, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_2
    const/4 v13, 0x0

    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :pswitch_0
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    move-object/from16 v11, v16

    .line 78
    .line 79
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v2, v12, v6, v4}, Lcom/google/android/gms/internal/measurement/a6;->l(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :pswitch_1
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eqz v4, :cond_2

    .line 96
    .line 97
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v6

    .line 101
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->b(IJ)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :pswitch_2
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->a(II)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :pswitch_3
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_2

    .line 124
    .line 125
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v6

    .line 129
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->q(IJ)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :pswitch_4
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_2

    .line 138
    .line 139
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->p(II)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :pswitch_5
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-eqz v4, :cond_2

    .line 152
    .line 153
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->h(II)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :pswitch_6
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_2

    .line 166
    .line 167
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->c(II)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :pswitch_7
    move-object/from16 v11, v16

    .line 176
    .line 177
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    if-eqz v4, :cond_2

    .line 182
    .line 183
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    check-cast v4, Lcom/google/android/gms/internal/measurement/v5;

    .line 188
    .line 189
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->f(ILcom/google/android/gms/internal/measurement/v5;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :pswitch_8
    move-object/from16 v11, v16

    .line 194
    .line 195
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    if-eqz v4, :cond_2

    .line 200
    .line 201
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {v2, v12, v6, v4}, Lcom/google/android/gms/internal/measurement/a6;->o(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :pswitch_9
    move-object/from16 v11, v16

    .line 215
    .line 216
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_2

    .line 221
    .line 222
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/measurement/v7;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 227
    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :pswitch_a
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_2

    .line 236
    .line 237
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Ljava/lang/Boolean;

    .line 242
    .line 243
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    .line 245
    .line 246
    move-result v4

    .line 247
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->e(IZ)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :pswitch_b
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-eqz v4, :cond_2

    .line 257
    .line 258
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->i(II)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :pswitch_c
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_2

    .line 272
    .line 273
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 274
    .line 275
    .line 276
    move-result-wide v6

    .line 277
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->j(IJ)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_2

    .line 281
    .line 282
    :pswitch_d
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v4

    .line 286
    if-eqz v4, :cond_2

    .line 287
    .line 288
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->C(JLjava/lang/Object;)I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->m(II)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :pswitch_e
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v4

    .line 301
    if-eqz v4, :cond_2

    .line 302
    .line 303
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 304
    .line 305
    .line 306
    move-result-wide v6

    .line 307
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->d(IJ)V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :pswitch_f
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    if-eqz v4, :cond_2

    .line 317
    .line 318
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/v7;->j(JLjava/lang/Object;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v6

    .line 322
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->n(IJ)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :pswitch_10
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_2

    .line 332
    .line 333
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Ljava/lang/Float;

    .line 338
    .line 339
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    .line 340
    .line 341
    .line 342
    move-result v4

    .line 343
    invoke-virtual {v2, v4, v12}, Lcom/google/android/gms/internal/measurement/a6;->k(FI)V

    .line 344
    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :pswitch_11
    invoke-virtual {v0, v12, v8, v1}, Lcom/google/android/gms/internal/measurement/v7;->u(IILjava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    if-eqz v4, :cond_2

    .line 353
    .line 354
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    check-cast v4, Ljava/lang/Double;

    .line 359
    .line 360
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    .line 361
    .line 362
    .line 363
    move-result-wide v6

    .line 364
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->g(ID)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :pswitch_12
    move-object/from16 v11, v16

    .line 370
    .line 371
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v4

    .line 375
    if-nez v4, :cond_3

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    check-cast v1, Lcom/google/android/gms/internal/measurement/l7;

    .line 384
    .line 385
    const/4 v1, 0x0

    .line 386
    throw v1

    .line 387
    :pswitch_13
    move-object/from16 v11, v16

    .line 388
    .line 389
    aget v4, v3, v8

    .line 390
    .line 391
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    check-cast v6, Ljava/util/List;

    .line 396
    .line 397
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v4, v6, v2, v7}, Lcom/google/android/gms/internal/measurement/e8;->j(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Lcom/google/android/gms/internal/measurement/d8;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :pswitch_14
    move-object/from16 v11, v16

    .line 407
    .line 408
    aget v4, v3, v8

    .line 409
    .line 410
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v6

    .line 414
    check-cast v6, Ljava/util/List;

    .line 415
    .line 416
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_2

    .line 420
    .line 421
    :pswitch_15
    move-object/from16 v11, v16

    .line 422
    .line 423
    aget v4, v3, v8

    .line 424
    .line 425
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    check-cast v6, Ljava/util/List;

    .line 430
    .line 431
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_2

    .line 435
    .line 436
    :pswitch_16
    move-object/from16 v11, v16

    .line 437
    .line 438
    aget v4, v3, v8

    .line 439
    .line 440
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v6

    .line 444
    check-cast v6, Ljava/util/List;

    .line 445
    .line 446
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 447
    .line 448
    .line 449
    goto/16 :goto_2

    .line 450
    .line 451
    :pswitch_17
    move-object/from16 v11, v16

    .line 452
    .line 453
    aget v4, v3, v8

    .line 454
    .line 455
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v6

    .line 459
    check-cast v6, Ljava/util/List;

    .line 460
    .line 461
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 462
    .line 463
    .line 464
    goto/16 :goto_2

    .line 465
    .line 466
    :pswitch_18
    move-object/from16 v11, v16

    .line 467
    .line 468
    aget v4, v3, v8

    .line 469
    .line 470
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    check-cast v6, Ljava/util/List;

    .line 475
    .line 476
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_2

    .line 480
    .line 481
    :pswitch_19
    move-object/from16 v11, v16

    .line 482
    .line 483
    aget v4, v3, v8

    .line 484
    .line 485
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v6

    .line 489
    check-cast v6, Ljava/util/List;

    .line 490
    .line 491
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_2

    .line 495
    .line 496
    :pswitch_1a
    move-object/from16 v11, v16

    .line 497
    .line 498
    aget v4, v3, v8

    .line 499
    .line 500
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    check-cast v6, Ljava/util/List;

    .line 505
    .line 506
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_2

    .line 510
    .line 511
    :pswitch_1b
    move-object/from16 v11, v16

    .line 512
    .line 513
    aget v4, v3, v8

    .line 514
    .line 515
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    check-cast v6, Ljava/util/List;

    .line 520
    .line 521
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 522
    .line 523
    .line 524
    goto/16 :goto_2

    .line 525
    .line 526
    :pswitch_1c
    move-object/from16 v11, v16

    .line 527
    .line 528
    aget v4, v3, v8

    .line 529
    .line 530
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v6

    .line 534
    check-cast v6, Ljava/util/List;

    .line 535
    .line 536
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 537
    .line 538
    .line 539
    goto/16 :goto_2

    .line 540
    .line 541
    :pswitch_1d
    move-object/from16 v11, v16

    .line 542
    .line 543
    aget v4, v3, v8

    .line 544
    .line 545
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v6

    .line 549
    check-cast v6, Ljava/util/List;

    .line 550
    .line 551
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 552
    .line 553
    .line 554
    goto/16 :goto_2

    .line 555
    .line 556
    :pswitch_1e
    move-object/from16 v11, v16

    .line 557
    .line 558
    aget v4, v3, v8

    .line 559
    .line 560
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    check-cast v6, Ljava/util/List;

    .line 565
    .line 566
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 567
    .line 568
    .line 569
    goto/16 :goto_2

    .line 570
    .line 571
    :pswitch_1f
    move-object/from16 v11, v16

    .line 572
    .line 573
    aget v4, v3, v8

    .line 574
    .line 575
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v6

    .line 579
    check-cast v6, Ljava/util/List;

    .line 580
    .line 581
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 582
    .line 583
    .line 584
    goto/16 :goto_2

    .line 585
    .line 586
    :pswitch_20
    move-object/from16 v11, v16

    .line 587
    .line 588
    aget v4, v3, v8

    .line 589
    .line 590
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v6

    .line 594
    check-cast v6, Ljava/util/List;

    .line 595
    .line 596
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 597
    .line 598
    .line 599
    goto/16 :goto_2

    .line 600
    .line 601
    :pswitch_21
    move-object/from16 v11, v16

    .line 602
    .line 603
    aget v4, v3, v8

    .line 604
    .line 605
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 606
    .line 607
    .line 608
    move-result-object v6

    .line 609
    check-cast v6, Ljava/util/List;

    .line 610
    .line 611
    invoke-static {v4, v6, v2, v15}, Lcom/google/android/gms/internal/measurement/e8;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 612
    .line 613
    .line 614
    goto/16 :goto_2

    .line 615
    .line 616
    :pswitch_22
    move-object/from16 v11, v16

    .line 617
    .line 618
    aget v4, v3, v8

    .line 619
    .line 620
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    check-cast v6, Ljava/util/List;

    .line 625
    .line 626
    const/4 v12, 0x0

    .line 627
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->q(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_2

    .line 631
    .line 632
    :pswitch_23
    move-object/from16 v11, v16

    .line 633
    .line 634
    const/4 v12, 0x0

    .line 635
    aget v4, v3, v8

    .line 636
    .line 637
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v6

    .line 641
    check-cast v6, Ljava/util/List;

    .line 642
    .line 643
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->p(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_2

    .line 647
    .line 648
    :pswitch_24
    move-object/from16 v11, v16

    .line 649
    .line 650
    const/4 v12, 0x0

    .line 651
    aget v4, v3, v8

    .line 652
    .line 653
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v6

    .line 657
    check-cast v6, Ljava/util/List;

    .line 658
    .line 659
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->o(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 660
    .line 661
    .line 662
    goto/16 :goto_2

    .line 663
    .line 664
    :pswitch_25
    move-object/from16 v11, v16

    .line 665
    .line 666
    const/4 v12, 0x0

    .line 667
    aget v4, v3, v8

    .line 668
    .line 669
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    move-result-object v6

    .line 673
    check-cast v6, Ljava/util/List;

    .line 674
    .line 675
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->n(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_2

    .line 679
    .line 680
    :pswitch_26
    move-object/from16 v11, v16

    .line 681
    .line 682
    const/4 v12, 0x0

    .line 683
    aget v4, v3, v8

    .line 684
    .line 685
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v6

    .line 689
    check-cast v6, Ljava/util/List;

    .line 690
    .line 691
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->f(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_2

    .line 695
    .line 696
    :pswitch_27
    move-object/from16 v11, v16

    .line 697
    .line 698
    const/4 v12, 0x0

    .line 699
    aget v4, v3, v8

    .line 700
    .line 701
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 702
    .line 703
    .line 704
    move-result-object v6

    .line 705
    check-cast v6, Ljava/util/List;

    .line 706
    .line 707
    invoke-static {v4, v6, v2, v12}, Lcom/google/android/gms/internal/measurement/e8;->s(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_2

    .line 711
    .line 712
    :pswitch_28
    move-object/from16 v11, v16

    .line 713
    .line 714
    aget v4, v3, v8

    .line 715
    .line 716
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v6

    .line 720
    check-cast v6, Ljava/util/List;

    .line 721
    .line 722
    invoke-static {v4, v6, v2}, Lcom/google/android/gms/internal/measurement/e8;->d(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_2

    .line 726
    .line 727
    :pswitch_29
    move-object/from16 v11, v16

    .line 728
    .line 729
    aget v4, v3, v8

    .line 730
    .line 731
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v6

    .line 735
    check-cast v6, Ljava/util/List;

    .line 736
    .line 737
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    invoke-static {v4, v6, v2, v7}, Lcom/google/android/gms/internal/measurement/e8;->m(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Lcom/google/android/gms/internal/measurement/d8;)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_2

    .line 745
    .line 746
    :pswitch_2a
    move-object/from16 v11, v16

    .line 747
    .line 748
    aget v4, v3, v8

    .line 749
    .line 750
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v6

    .line 754
    check-cast v6, Ljava/util/List;

    .line 755
    .line 756
    invoke-static {v4, v6, v2}, Lcom/google/android/gms/internal/measurement/e8;->r(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_2

    .line 760
    .line 761
    :pswitch_2b
    move-object/from16 v11, v16

    .line 762
    .line 763
    aget v4, v3, v8

    .line 764
    .line 765
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    check-cast v6, Ljava/util/List;

    .line 770
    .line 771
    const/4 v13, 0x0

    .line 772
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->c(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_3

    .line 776
    .line 777
    :pswitch_2c
    move-object/from16 v11, v16

    .line 778
    .line 779
    const/4 v13, 0x0

    .line 780
    aget v4, v3, v8

    .line 781
    .line 782
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 783
    .line 784
    .line 785
    move-result-object v6

    .line 786
    check-cast v6, Ljava/util/List;

    .line 787
    .line 788
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->g(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 789
    .line 790
    .line 791
    goto/16 :goto_3

    .line 792
    .line 793
    :pswitch_2d
    move-object/from16 v11, v16

    .line 794
    .line 795
    const/4 v13, 0x0

    .line 796
    aget v4, v3, v8

    .line 797
    .line 798
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    move-result-object v6

    .line 802
    check-cast v6, Ljava/util/List;

    .line 803
    .line 804
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->h(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 805
    .line 806
    .line 807
    goto/16 :goto_3

    .line 808
    .line 809
    :pswitch_2e
    move-object/from16 v11, v16

    .line 810
    .line 811
    const/4 v13, 0x0

    .line 812
    aget v4, v3, v8

    .line 813
    .line 814
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v6

    .line 818
    check-cast v6, Ljava/util/List;

    .line 819
    .line 820
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->k(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 821
    .line 822
    .line 823
    goto/16 :goto_3

    .line 824
    .line 825
    :pswitch_2f
    move-object/from16 v11, v16

    .line 826
    .line 827
    const/4 v13, 0x0

    .line 828
    aget v4, v3, v8

    .line 829
    .line 830
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v6

    .line 834
    check-cast v6, Ljava/util/List;

    .line 835
    .line 836
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->u(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 837
    .line 838
    .line 839
    goto/16 :goto_3

    .line 840
    .line 841
    :pswitch_30
    move-object/from16 v11, v16

    .line 842
    .line 843
    const/4 v13, 0x0

    .line 844
    aget v4, v3, v8

    .line 845
    .line 846
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v6

    .line 850
    check-cast v6, Ljava/util/List;

    .line 851
    .line 852
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->l(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 853
    .line 854
    .line 855
    goto/16 :goto_3

    .line 856
    .line 857
    :pswitch_31
    move-object/from16 v11, v16

    .line 858
    .line 859
    const/4 v13, 0x0

    .line 860
    aget v4, v3, v8

    .line 861
    .line 862
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v6

    .line 866
    check-cast v6, Ljava/util/List;

    .line 867
    .line 868
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->i(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 869
    .line 870
    .line 871
    goto/16 :goto_3

    .line 872
    .line 873
    :pswitch_32
    move-object/from16 v11, v16

    .line 874
    .line 875
    const/4 v13, 0x0

    .line 876
    aget v4, v3, v8

    .line 877
    .line 878
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v6

    .line 882
    check-cast v6, Ljava/util/List;

    .line 883
    .line 884
    invoke-static {v4, v6, v2, v13}, Lcom/google/android/gms/internal/measurement/e8;->e(ILjava/util/List;Lcom/google/android/gms/internal/measurement/a6;Z)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_3

    .line 888
    .line 889
    :pswitch_33
    move-object/from16 v11, v16

    .line 890
    .line 891
    const/4 v13, 0x0

    .line 892
    and-int/2addr v4, v10

    .line 893
    if-eqz v4, :cond_4

    .line 894
    .line 895
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 896
    .line 897
    .line 898
    move-result-object v4

    .line 899
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 900
    .line 901
    .line 902
    move-result-object v6

    .line 903
    invoke-virtual {v2, v12, v6, v4}, Lcom/google/android/gms/internal/measurement/a6;->l(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 904
    .line 905
    .line 906
    goto/16 :goto_3

    .line 907
    .line 908
    :pswitch_34
    move-object/from16 v11, v16

    .line 909
    .line 910
    const/4 v13, 0x0

    .line 911
    and-int/2addr v4, v10

    .line 912
    if-eqz v4, :cond_4

    .line 913
    .line 914
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 915
    .line 916
    .line 917
    move-result-wide v6

    .line 918
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->b(IJ)V

    .line 919
    .line 920
    .line 921
    goto/16 :goto_3

    .line 922
    .line 923
    :pswitch_35
    move-object/from16 v11, v16

    .line 924
    .line 925
    const/4 v13, 0x0

    .line 926
    and-int/2addr v4, v10

    .line 927
    if-eqz v4, :cond_4

    .line 928
    .line 929
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 930
    .line 931
    .line 932
    move-result v4

    .line 933
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->a(II)V

    .line 934
    .line 935
    .line 936
    goto/16 :goto_3

    .line 937
    .line 938
    :pswitch_36
    move-object/from16 v11, v16

    .line 939
    .line 940
    const/4 v13, 0x0

    .line 941
    and-int/2addr v4, v10

    .line 942
    if-eqz v4, :cond_4

    .line 943
    .line 944
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 945
    .line 946
    .line 947
    move-result-wide v6

    .line 948
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->q(IJ)V

    .line 949
    .line 950
    .line 951
    goto/16 :goto_3

    .line 952
    .line 953
    :pswitch_37
    move-object/from16 v11, v16

    .line 954
    .line 955
    const/4 v13, 0x0

    .line 956
    and-int/2addr v4, v10

    .line 957
    if-eqz v4, :cond_4

    .line 958
    .line 959
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 960
    .line 961
    .line 962
    move-result v4

    .line 963
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->p(II)V

    .line 964
    .line 965
    .line 966
    goto/16 :goto_3

    .line 967
    .line 968
    :pswitch_38
    move-object/from16 v11, v16

    .line 969
    .line 970
    const/4 v13, 0x0

    .line 971
    and-int/2addr v4, v10

    .line 972
    if-eqz v4, :cond_4

    .line 973
    .line 974
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 975
    .line 976
    .line 977
    move-result v4

    .line 978
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->h(II)V

    .line 979
    .line 980
    .line 981
    goto/16 :goto_3

    .line 982
    .line 983
    :pswitch_39
    move-object/from16 v11, v16

    .line 984
    .line 985
    const/4 v13, 0x0

    .line 986
    and-int/2addr v4, v10

    .line 987
    if-eqz v4, :cond_4

    .line 988
    .line 989
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 990
    .line 991
    .line 992
    move-result v4

    .line 993
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->c(II)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_3

    .line 997
    .line 998
    :pswitch_3a
    move-object/from16 v11, v16

    .line 999
    .line 1000
    const/4 v13, 0x0

    .line 1001
    and-int/2addr v4, v10

    .line 1002
    if-eqz v4, :cond_4

    .line 1003
    .line 1004
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    check-cast v4, Lcom/google/android/gms/internal/measurement/v5;

    .line 1009
    .line 1010
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->f(ILcom/google/android/gms/internal/measurement/v5;)V

    .line 1011
    .line 1012
    .line 1013
    goto/16 :goto_3

    .line 1014
    .line 1015
    :pswitch_3b
    move-object/from16 v11, v16

    .line 1016
    .line 1017
    const/4 v13, 0x0

    .line 1018
    and-int/2addr v4, v10

    .line 1019
    if-eqz v4, :cond_4

    .line 1020
    .line 1021
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v4

    .line 1025
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v6

    .line 1029
    invoke-virtual {v2, v12, v6, v4}, Lcom/google/android/gms/internal/measurement/a6;->o(ILcom/google/android/gms/internal/measurement/d8;Ljava/lang/Object;)V

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_3

    .line 1033
    .line 1034
    :pswitch_3c
    move-object/from16 v11, v16

    .line 1035
    .line 1036
    const/4 v13, 0x0

    .line 1037
    and-int/2addr v4, v10

    .line 1038
    if-eqz v4, :cond_4

    .line 1039
    .line 1040
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v4

    .line 1044
    invoke-static {v12, v4, v2}, Lcom/google/android/gms/internal/measurement/v7;->w(ILjava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 1045
    .line 1046
    .line 1047
    goto/16 :goto_3

    .line 1048
    .line 1049
    :pswitch_3d
    const/4 v13, 0x0

    .line 1050
    and-int/2addr v4, v10

    .line 1051
    if-eqz v4, :cond_4

    .line 1052
    .line 1053
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->t(JLjava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v4

    .line 1057
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->e(IZ)V

    .line 1058
    .line 1059
    .line 1060
    goto :goto_3

    .line 1061
    :pswitch_3e
    move-object/from16 v11, v16

    .line 1062
    .line 1063
    const/4 v13, 0x0

    .line 1064
    and-int/2addr v4, v10

    .line 1065
    if-eqz v4, :cond_4

    .line 1066
    .line 1067
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1068
    .line 1069
    .line 1070
    move-result v4

    .line 1071
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->i(II)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_3

    .line 1075
    :pswitch_3f
    move-object/from16 v11, v16

    .line 1076
    .line 1077
    const/4 v13, 0x0

    .line 1078
    and-int/2addr v4, v10

    .line 1079
    if-eqz v4, :cond_4

    .line 1080
    .line 1081
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v6

    .line 1085
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->j(IJ)V

    .line 1086
    .line 1087
    .line 1088
    goto :goto_3

    .line 1089
    :pswitch_40
    move-object/from16 v11, v16

    .line 1090
    .line 1091
    const/4 v13, 0x0

    .line 1092
    and-int/2addr v4, v10

    .line 1093
    if-eqz v4, :cond_4

    .line 1094
    .line 1095
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 1096
    .line 1097
    .line 1098
    move-result v4

    .line 1099
    invoke-virtual {v2, v12, v4}, Lcom/google/android/gms/internal/measurement/a6;->m(II)V

    .line 1100
    .line 1101
    .line 1102
    goto :goto_3

    .line 1103
    :pswitch_41
    move-object/from16 v11, v16

    .line 1104
    .line 1105
    const/4 v13, 0x0

    .line 1106
    and-int/2addr v4, v10

    .line 1107
    if-eqz v4, :cond_4

    .line 1108
    .line 1109
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1110
    .line 1111
    .line 1112
    move-result-wide v6

    .line 1113
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->d(IJ)V

    .line 1114
    .line 1115
    .line 1116
    goto :goto_3

    .line 1117
    :pswitch_42
    move-object/from16 v11, v16

    .line 1118
    .line 1119
    const/4 v13, 0x0

    .line 1120
    and-int/2addr v4, v10

    .line 1121
    if-eqz v4, :cond_4

    .line 1122
    .line 1123
    invoke-virtual {v11, v1, v6, v7}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 1124
    .line 1125
    .line 1126
    move-result-wide v6

    .line 1127
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->n(IJ)V

    .line 1128
    .line 1129
    .line 1130
    goto :goto_3

    .line 1131
    :pswitch_43
    const/4 v13, 0x0

    .line 1132
    and-int/2addr v4, v10

    .line 1133
    if-eqz v4, :cond_4

    .line 1134
    .line 1135
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->f(JLjava/lang/Object;)F

    .line 1136
    .line 1137
    .line 1138
    move-result v4

    .line 1139
    invoke-virtual {v2, v4, v12}, Lcom/google/android/gms/internal/measurement/a6;->k(FI)V

    .line 1140
    .line 1141
    .line 1142
    goto :goto_3

    .line 1143
    :pswitch_44
    const/4 v13, 0x0

    .line 1144
    and-int/2addr v4, v10

    .line 1145
    if-eqz v4, :cond_4

    .line 1146
    .line 1147
    invoke-static {v6, v7, v1}, Lcom/google/android/gms/internal/measurement/y8;->e(JLjava/lang/Object;)D

    .line 1148
    .line 1149
    .line 1150
    move-result-wide v6

    .line 1151
    invoke-virtual {v2, v12, v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->g(ID)V

    .line 1152
    .line 1153
    .line 1154
    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x3

    .line 1155
    .line 1156
    const v6, 0xfffff

    .line 1157
    .line 1158
    .line 1159
    goto/16 :goto_0

    .line 1160
    .line 1161
    :cond_5
    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/v7;->l:Lcom/google/android/gms/internal/measurement/o8;

    .line 1162
    .line 1163
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/o8;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v1

    .line 1167
    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/measurement/o8;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/a6;)V

    .line 1168
    .line 1169
    .line 1170
    return-void

    .line 1171
    :cond_6
    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/v7;->m:Lcom/google/android/gms/internal/measurement/e6;

    .line 1172
    .line 1173
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/e6;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/i6;

    .line 1174
    .line 1175
    .line 1176
    const/4 v1, 0x0

    .line 1177
    throw v1

    .line 1178
    nop

    .line 1179
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

.method public final x(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/o5;)I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/measurement/o5;",
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

    move/from16 v12, p4

    move-object/from16 v13, p6

    sget-object v11, Lcom/google/android/gms/internal/measurement/v7;->o:Lsun/misc/Unsafe;

    move-object/from16 v4, p2

    move/from16 v0, p3

    move/from16 v1, p5

    move v6, v12

    move-object v3, v13

    const/4 v2, -0x1

    const v5, 0xfffff

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    iget-object v8, v15, Lcom/google/android/gms/internal/measurement/v7;->b:[Ljava/lang/Object;

    const/16 v19, 0x0

    iget-object v10, v15, Lcom/google/android/gms/internal/measurement/v7;->a:[I

    if-ge v0, v6, :cond_22

    add-int/lit8 v9, v0, 0x1

    aget-byte v0, v4, v0

    if-gez v0, :cond_0

    invoke-static {v0, v4, v9, v3}, Lcom/google/android/gms/internal/measurement/p5;->n(I[BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget v9, v3, Lcom/google/android/gms/internal/measurement/o5;->a:I

    move/from16 v33, v9

    move v9, v0

    move/from16 v0, v33

    :cond_0
    move/from16 v22, v6

    ushr-int/lit8 v6, v0, 0x3

    move-object/from16 v23, v3

    and-int/lit8 v3, v0, 0x7

    move/from16 v17, v0

    iget v0, v15, Lcom/google/android/gms/internal/measurement/v7;->d:I

    move/from16 v24, v1

    iget v1, v15, Lcom/google/android/gms/internal/measurement/v7;->c:I

    const/4 v12, 0x3

    if-le v6, v2, :cond_2

    div-int/lit8 v2, v16, 0x3

    if-lt v6, v1, :cond_1

    if-gt v6, v0, :cond_1

    .line 1
    invoke-virtual {v15, v6, v2}, Lcom/google/android/gms/internal/measurement/v7;->H(II)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    move v1, v0

    const/4 v0, -0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    if-lt v6, v1, :cond_3

    if-gt v6, v0, :cond_3

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v15, v6, v2}, Lcom/google/android/gms/internal/measurement/v7;->H(II)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    const/4 v0, -0x1

    :goto_2
    move v1, v0

    const/4 v0, -0x1

    :goto_3
    if-ne v1, v0, :cond_4

    move/from16 v22, v5

    move/from16 v27, v6

    move-object/from16 v20, v8

    move v2, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object v14, v15

    move/from16 v8, v17

    move/from16 v6, v24

    const/4 v9, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v23, -0x1

    goto/16 :goto_1c

    :cond_4
    add-int/lit8 v16, v1, 0x1

    .line 3
    aget v12, v10, v16

    ushr-int/lit8 v0, v12, 0x14

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v6

    const v6, 0xfffff

    and-int v2, v12, v6

    move/from16 v25, v7

    int-to-long v6, v2

    const/16 v2, 0x11

    move/from16 v26, v12

    if-gt v0, v2, :cond_15

    add-int/lit8 v2, v1, 0x2

    aget v2, v10, v2

    ushr-int/lit8 v23, v2, 0x14

    const/16 v27, 0x1

    shl-int v23, v27, v23

    const v12, 0xfffff

    and-int/2addr v2, v12

    if-eq v2, v5, :cond_6

    if-eq v5, v12, :cond_5

    int-to-long v12, v5

    move/from16 v5, v25

    invoke-virtual {v11, v14, v12, v13, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v12, v2

    invoke-virtual {v11, v14, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v12, v2

    move v13, v5

    goto :goto_4

    :cond_6
    move/from16 v12, v25

    move v13, v12

    move v12, v5

    :goto_4
    const/4 v2, 0x5

    packed-switch v0, :pswitch_data_0

    move-object/from16 v5, p6

    move v4, v1

    move-object/from16 v20, v8

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v0, :cond_13

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v0

    shl-int/lit8 v1, v21, 0x3

    or-int/lit8 v8, v1, 0x4

    move-object/from16 v1, p2

    move v2, v9

    move/from16 v3, p4

    move v9, v4

    move v4, v8

    move-object v8, v5

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p5;->d(Lcom/google/android/gms/internal/measurement/d8;[BIIILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    and-int v1, v13, v23

    if-nez v1, :cond_14

    iget-object v1, v8, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    goto/16 :goto_13

    :pswitch_0
    if-nez v3, :cond_7

    move-object/from16 v5, p6

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v8

    iget-wide v2, v5, Lcom/google/android/gms/internal/measurement/o5;->b:J

    invoke-static {v2, v3}, Lx5/a;->E(J)J

    move-result-wide v9

    move/from16 v2, v17

    const/16 v16, -0x1

    move-object v0, v11

    move v3, v1

    move-object/from16 v1, p1

    move v15, v3

    move/from16 v17, v12

    const/16 v18, 0x0

    move v12, v2

    move-wide v2, v6

    move-object v6, v4

    move-object v7, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v23

    move-object v4, v6

    move-object v5, v7

    goto/16 :goto_7

    :cond_7
    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    move-object/from16 v15, p0

    move v4, v1

    move-object/from16 v20, v8

    const/4 v2, 0x1

    move-object/from16 v8, p6

    goto/16 :goto_16

    :pswitch_1
    move-object/from16 v5, p6

    move v15, v1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-nez v3, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget v1, v5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-static {v1}, Lx5/a;->B(I)I

    move-result v1

    :cond_8
    :goto_5
    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_6

    :pswitch_2
    move-object/from16 v5, p6

    move v15, v1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-nez v3, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget v1, v5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    .line 4
    div-int/lit8 v2, v15, 0x3

    add-int/2addr v2, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget-object v2, v8, v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/t6;

    if-eqz v2, :cond_8

    .line 5
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/measurement/t6;->f(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/v7;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v2

    int-to-long v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v12, v1}, Lcom/google/android/gms/internal/measurement/p8;->c(ILjava/lang/Object;)V

    move v7, v13

    goto :goto_8

    :pswitch_3
    move-object/from16 v5, p6

    move v15, v1

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v0, :cond_a

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->a([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget-object v1, v5, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_6
    move v8, v0

    or-int v0, v13, v23

    :goto_7
    move v7, v0

    move v0, v8

    :goto_8
    move/from16 v6, p4

    move/from16 v1, p5

    move-object v3, v5

    move-object v13, v3

    move/from16 v16, v15

    move/from16 v5, v17

    move/from16 v2, v21

    move-object/from16 v15, p0

    move/from16 v17, v12

    goto/16 :goto_20

    :cond_a
    move-object/from16 v20, v8

    move v4, v15

    const/4 v2, 0x1

    move-object/from16 v15, p0

    goto/16 :goto_12

    :pswitch_4
    move-object/from16 v5, p6

    move v15, v1

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v0, :cond_c

    move v1, v15

    move-object/from16 v15, p0

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v0

    move/from16 v2, p4

    invoke-static {v0, v4, v9, v2, v5}, Lcom/google/android/gms/internal/measurement/p5;->f(Lcom/google/android/gms/internal/measurement/d8;[BIILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    and-int v3, v13, v23

    if-nez v3, :cond_b

    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    goto :goto_9

    :cond_b
    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v3

    :goto_9
    move/from16 v22, v2

    goto :goto_b

    :cond_c
    move/from16 v2, p4

    move v1, v15

    move-object/from16 v15, p0

    goto/16 :goto_e

    :pswitch_5
    move/from16 v2, p4

    move-object/from16 v5, p6

    const/4 v0, 0x2

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v0, :cond_f

    const/high16 v0, 0x20000000

    and-int v0, v26, v0

    if-nez v0, :cond_d

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->j([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    goto :goto_a

    :cond_d
    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->k([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    :goto_a
    iget-object v3, v5, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    :goto_b
    invoke-virtual {v11, v14, v6, v7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_6
    move/from16 v2, p4

    move-object/from16 v5, p6

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-nez v3, :cond_f

    invoke-static {v4, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    iget-wide v8, v5, Lcom/google/android/gms/internal/measurement/o5;->b:J

    const-wide/16 v19, 0x0

    cmp-long v3, v8, v19

    if-eqz v3, :cond_e

    const/4 v10, 0x1

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    :goto_c
    invoke-static {v14, v6, v7, v10}, Lcom/google/android/gms/internal/measurement/y8;->m(Ljava/lang/Object;JZ)V

    :goto_d
    or-int v7, v13, v23

    move/from16 v16, v1

    move-object v3, v5

    move-object v13, v3

    move/from16 v5, v17

    move/from16 v6, v22

    move/from16 v1, p5

    move/from16 v17, v12

    move v12, v2

    move/from16 v2, v21

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v5, p6

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v2, :cond_f

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v0

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v9, v9, 0x4

    or-int v7, v13, v23

    move-object v3, v5

    move-object v8, v3

    move v0, v9

    move/from16 v5, v17

    move/from16 v10, v21

    move/from16 v6, v22

    const v17, 0xfffff

    move v9, v1

    goto/16 :goto_18

    :pswitch_8
    move-object/from16 v5, p6

    const/4 v0, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v0, :cond_f

    invoke-static {v9, v4}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v19

    move-object v0, v11

    move v8, v1

    move-object/from16 v1, p1

    move-wide v2, v6

    move-object v7, v4

    move-object v6, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v9, v9, 0x8

    move-object v5, v6

    move v4, v8

    move-object v8, v7

    goto/16 :goto_11

    :cond_f
    :goto_e
    move v4, v1

    goto :goto_f

    :pswitch_9
    move-object/from16 v5, p6

    move-object v2, v4

    const/16 v16, -0x1

    const/16 v18, 0x0

    move v4, v1

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-nez v3, :cond_10

    invoke-static {v2, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->m([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v9

    iget v0, v5, Lcom/google/android/gms/internal/measurement/o5;->a:I

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-object v8, v2

    goto/16 :goto_11

    :cond_10
    :goto_f
    move-object/from16 v20, v8

    const/4 v2, 0x1

    goto/16 :goto_12

    :pswitch_a
    move-object/from16 v5, p6

    move-object v2, v4

    const/16 v16, -0x1

    const/16 v18, 0x0

    move v4, v1

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-nez v3, :cond_11

    invoke-static {v2, v9, v5}, Lcom/google/android/gms/internal/measurement/p5;->p([BILcom/google/android/gms/internal/measurement/o5;)I

    move-result v8

    iget-wide v9, v5, Lcom/google/android/gms/internal/measurement/o5;->b:J

    move-object v0, v11

    move-object/from16 v1, p1

    move/from16 p3, v8

    move-object v8, v2

    move-wide v2, v6

    move v7, v4

    move-object v6, v5

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v0, v13, v23

    move/from16 v1, p3

    move v9, v7

    move-object v4, v8

    move v7, v0

    move-object v8, v6

    move/from16 v6, v22

    goto/16 :goto_15

    :cond_11
    move-object/from16 v20, v8

    goto :goto_10

    :pswitch_b
    move-object/from16 v5, p6

    move-object/from16 v20, v8

    const/16 v16, -0x1

    const/16 v18, 0x0

    move-object v8, v4

    move v4, v1

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v2, :cond_12

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/p5;->c(I[B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v14, v6, v7, v0}, Lcom/google/android/gms/internal/measurement/y8;->o(Ljava/lang/Object;JF)V

    add-int/lit8 v9, v9, 0x4

    goto :goto_11

    :cond_12
    :goto_10
    move-object v8, v5

    const/4 v2, 0x1

    goto :goto_16

    :pswitch_c
    move-object/from16 v5, p6

    move-object/from16 v20, v8

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    move-object v8, v4

    move v4, v1

    move/from16 v33, v17

    move/from16 v17, v12

    move/from16 v12, v33

    if-ne v3, v2, :cond_13

    invoke-static {v9, v8}, Lcom/google/android/gms/internal/measurement/p5;->q(I[B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v14, v6, v7, v0, v1}, Lcom/google/android/gms/internal/measurement/y8;->n(Ljava/lang/Object;JD)V

    add-int/lit8 v9, v9, 0x8

    :goto_11
    or-int v0, v13, v23

    move v1, v9

    move/from16 v6, v22

    move v9, v4

    move-object v4, v8

    move-object v8, v5

    goto :goto_14

    :cond_13
    :goto_12
    move-object v8, v5

    goto :goto_16

    :cond_14
    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Lcom/google/android/gms/internal/measurement/o5;->c:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/x6;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q6;

    move-result-object v1

    :goto_13
    invoke-virtual {v11, v14, v6, v7, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v1, v13, v23

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v33, v1

    move v1, v0

    move/from16 v0, v33

    :goto_14
    move v7, v0

    :goto_15
    move v0, v1

    move-object v3, v8

    move/from16 v5, v17

    move/from16 v10, v21

    const v17, 0xfffff

    goto/16 :goto_18

    :goto_16
    move/from16 v6, p5

    move v2, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move v8, v12

    move v7, v13

    move-object v14, v15

    move/from16 v22, v17

    move/from16 v27, v21

    const/16 v16, 0x1

    const/16 v23, -0x1

    move v9, v4

    goto/16 :goto_1c

    :cond_15
    move v4, v1

    move-object/from16 v20, v8

    move-object v8, v13

    move/from16 v12, v17

    move/from16 v13, v25

    const/4 v2, 0x1

    const/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_19

    const/4 v1, 0x2

    if-ne v3, v1, :cond_18

    invoke-virtual {v11, v14, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/w6;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/w6;->c()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    const/16 v1, 0xa

    goto :goto_17

    :cond_16
    add-int/2addr v1, v1

    :goto_17
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/w6;->v(I)Lcom/google/android/gms/internal/measurement/w6;

    move-result-object v0

    invoke-virtual {v11, v14, v6, v7, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_17
    move-object v6, v0

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/measurement/v7;->k(I)Lcom/google/android/gms/internal/measurement/d8;

    move-result-object v0

    move v1, v12

    move-object/from16 v2, p2

    move-object/from16 v7, v23

    move v3, v9

    move v9, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v6

    move/from16 v10, v21

    const v17, 0xfffff

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/p5;->g(Lcom/google/android/gms/internal/measurement/d8;I[BIILcom/google/android/gms/internal/measurement/w6;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    move-object/from16 v4, p2

    move/from16 v6, p4

    move-object v3, v7

    move v7, v13

    move/from16 v5, v22

    :goto_18
    move/from16 v1, p5

    move-object v13, v8

    move/from16 v16, v9

    move v2, v10

    move/from16 v17, v12

    move/from16 v12, p4

    goto/16 :goto_0

    :cond_18
    move/from16 v22, v5

    move/from16 v26, v4

    move v15, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v17, v12

    move/from16 v30, v13

    move/from16 v27, v21

    const/16 v16, 0x1

    const/16 v23, -0x1

    goto/16 :goto_19

    :cond_19
    move/from16 v22, v5

    move/from16 v5, v21

    const v17, 0xfffff

    const/16 v1, 0x31

    if-gt v0, v1, :cond_1a

    move-object/from16 v23, v10

    move-object/from16 v21, v11

    move/from16 v1, v26

    int-to-long v10, v1

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    const/16 v24, 0x1

    move-object/from16 v2, p2

    move/from16 v25, v3

    move v3, v9

    move/from16 v26, v4

    move/from16 v4, p4

    move/from16 v27, v5

    move v5, v12

    move-wide/from16 v28, v6

    move/from16 v6, v27

    move/from16 v30, v13

    move/from16 v7, v25

    const v13, 0xfffff

    move/from16 v8, v26

    move v15, v9

    move-object/from16 v31, v23

    const/16 v16, 0x1

    const/16 v23, -0x1

    move-wide v9, v10

    move-object/from16 v32, v21

    move/from16 v11, p3

    move/from16 v17, v12

    move-wide/from16 v12, v28

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/google/android/gms/internal/measurement/v7;->G(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    move-object/from16 v14, p0

    move/from16 v21, v26

    if-eq v0, v15, :cond_1d

    goto/16 :goto_1a

    :cond_1a
    move/from16 p3, v0

    move/from16 v25, v3

    move/from16 v27, v5

    move-wide/from16 v28, v6

    move v15, v9

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v17, v12

    move/from16 v30, v13

    move/from16 v1, v26

    const/16 v16, 0x1

    const/16 v23, -0x1

    move/from16 v26, v4

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_1c

    move/from16 v7, v25

    const/4 v0, 0x2

    if-eq v7, v0, :cond_1b

    :goto_19
    move-object/from16 v14, p0

    move/from16 v6, p5

    move v2, v15

    move/from16 v8, v17

    move/from16 v9, v26

    goto :goto_1b

    :cond_1b
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v13, v26

    move-wide/from16 v10, v28

    invoke-virtual {v14, v15, v13, v10, v11}, Lcom/google/android/gms/internal/measurement/v7;->D(Ljava/lang/Object;IJ)V

    throw v19

    :cond_1c
    move-object/from16 v14, p0

    move v12, v15

    move/from16 v7, v25

    move/from16 v13, v26

    move-wide/from16 v10, v28

    move-object/from16 v15, p1

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v27

    move v15, v12

    move v12, v13

    move/from16 v21, v13

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/google/android/gms/internal/measurement/v7;->E(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    if-eq v0, v15, :cond_1d

    :goto_1a
    move-object/from16 v12, p1

    move/from16 v1, p5

    move-object/from16 v10, p6

    move/from16 v8, v17

    move/from16 v16, v21

    move/from16 v5, v22

    move/from16 v11, v27

    move/from16 v7, v30

    goto/16 :goto_1f

    :cond_1d
    move/from16 v6, p5

    move v2, v0

    move/from16 v8, v17

    move/from16 v9, v21

    :goto_1b
    move/from16 v7, v30

    :goto_1c
    if-ne v8, v6, :cond_1e

    if-eqz v6, :cond_1e

    move-object/from16 v12, p1

    move v0, v2

    move v1, v6

    move/from16 v5, v22

    goto/16 :goto_21

    :cond_1e
    iget-boolean v0, v14, Lcom/google/android/gms/internal/measurement/v7;->f:Z

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d6;->a()Lcom/google/android/gms/internal/measurement/d6;

    move-result-object v0

    move-object/from16 v10, p6

    iget-object v1, v10, Lcom/google/android/gms/internal/measurement/o5;->d:Lcom/google/android/gms/internal/measurement/d6;

    if-eq v1, v0, :cond_20

    iget-object v0, v14, Lcom/google/android/gms/internal/measurement/v7;->e:Lcom/google/android/gms/internal/measurement/s7;

    move/from16 v11, v27

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/measurement/d6;->b(Lcom/google/android/gms/internal/measurement/s7;I)Lcom/google/android/gms/internal/measurement/p6;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/v7;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p5;->l(I[BIILcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    move-object/from16 v12, p1

    goto :goto_1e

    :cond_1f
    move-object/from16 v12, p1

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/measurement/o6;

    throw v19

    :cond_20
    move-object/from16 v12, p1

    goto :goto_1d

    :cond_21
    move-object/from16 v12, p1

    move-object/from16 v10, p6

    :goto_1d
    move/from16 v11, v27

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/v7;->y(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/p8;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/p5;->l(I[BIILcom/google/android/gms/internal/measurement/p8;Lcom/google/android/gms/internal/measurement/o5;)I

    move-result v0

    :goto_1e
    move v1, v6

    move/from16 v16, v9

    move/from16 v5, v22

    :goto_1f
    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v17, v8

    move-object v3, v10

    move-object v13, v3

    move v2, v11

    move-object v15, v14

    move-object/from16 v11, v32

    move-object v14, v12

    :goto_20
    move v12, v6

    goto/16 :goto_0

    :cond_22
    move/from16 v24, v1

    move/from16 v22, v5

    move/from16 v30, v7

    move-object/from16 v20, v8

    move-object/from16 v31, v10

    move-object/from16 v32, v11

    move-object v12, v14

    move-object v14, v15

    const/16 v16, 0x1

    move/from16 v8, v17

    :goto_21
    const v2, 0xfffff

    if-eq v5, v2, :cond_23

    int-to-long v3, v5

    move-object/from16 v5, v32

    invoke-virtual {v5, v12, v3, v4, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_23
    iget v3, v14, Lcom/google/android/gms/internal/measurement/v7;->i:I

    :goto_22
    iget v4, v14, Lcom/google/android/gms/internal/measurement/v7;->j:I

    if-ge v3, v4, :cond_26

    iget-object v4, v14, Lcom/google/android/gms/internal/measurement/v7;->h:[I

    aget v4, v4, v3

    aget v5, v31, v4

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/v7;->a(I)I

    move-result v5

    and-int/2addr v5, v2

    int-to-long v5, v5

    invoke-static {v5, v6, v12}, Lcom/google/android/gms/internal/measurement/y8;->j(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_24

    goto :goto_23

    .line 6
    :cond_24
    div-int/lit8 v6, v4, 0x3

    add-int/2addr v6, v6

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v20, v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/t6;

    if-nez v6, :cond_25

    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 7
    :cond_25
    check-cast v5, Lcom/google/android/gms/internal/measurement/m7;

    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/measurement/v7;->l(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l7;

    throw v19

    :cond_26
    move/from16 v2, p4

    if-nez v1, :cond_28

    if-ne v0, v2, :cond_27

    goto :goto_24

    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->c()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v0

    throw v0

    :cond_28
    if-gt v0, v2, :cond_29

    if-ne v8, v1, :cond_29

    :goto_24
    return v0

    :cond_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/z6;->c()Lcom/google/android/gms/internal/measurement/z6;

    move-result-object v0

    throw v0

    nop

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
