.class public final Lcom/google/crypto/tink/shaded/protobuf/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/e1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/e1<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/crypto/tink/shaded/protobuf/q0;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:[I

.field public final k:I

.field public final l:I

.field public final m:Lcom/google/crypto/tink/shaded/protobuf/v0;

.field public final n:Lcom/google/crypto/tink/shaded/protobuf/g0;

.field public final o:Lcom/google/crypto/tink/shaded/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/j1<",
            "**>;"
        }
    .end annotation
.end field

.field public final p:Lcom/google/crypto/tink/shaded/protobuf/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/q<",
            "*>;"
        }
    .end annotation
.end field

.field public final q:Lcom/google/crypto/tink/shaded/protobuf/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->r:[I

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/n1;->o()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/q0;Z[IIILcom/google/crypto/tink/shaded/protobuf/v0;Lcom/google/crypto/tink/shaded/protobuf/g0;Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/l0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->c:I

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->d:I

    instance-of p1, p5, Lcom/google/crypto/tink/shaded/protobuf/x;

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->g:Z

    iput-boolean p6, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    invoke-virtual {p13, p5}, Lcom/google/crypto/tink/shaded/protobuf/q;->e(Lcom/google/crypto/tink/shaded/protobuf/q0;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->i:Z

    iput-object p7, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->j:[I

    iput p8, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->k:I

    iput p9, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->l:I

    iput-object p10, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->m:Lcom/google/crypto/tink/shaded/protobuf/v0;

    iput-object p11, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    iput-object p12, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    iput-object p13, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    iput-object p5, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->e:Lcom/google/crypto/tink/shaded/protobuf/q0;

    iput-object p14, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    return-void
.end method

.method public static I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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
    const-string v2, "Field "

    .line 33
    .line 34
    const-string v3, " for "

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Landroid/support/v4/media/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p0, " not found. Known fields are "

    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v1
.end method

.method public static P(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
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
    iget-object p2, p2, Lcom/google/crypto/tink/shaded/protobuf/m;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    .line 8
    .line 9
    invoke-virtual {p2, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/l;->K(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 14
    .line 15
    invoke-virtual {p2, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public static p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 4
    .line 5
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/k1;->f:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 15
    .line 16
    :cond_0
    return-object v0
.end method

.method public static u(JLjava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static w(Lcom/google/crypto/tink/shaded/protobuf/c1;Lcom/google/crypto/tink/shaded/protobuf/v0;Lcom/google/crypto/tink/shaded/protobuf/g0;Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/l0;)Lcom/google/crypto/tink/shaded/protobuf/t0;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/c1;",
            "Lcom/google/crypto/tink/shaded/protobuf/v0;",
            "Lcom/google/crypto/tink/shaded/protobuf/g0;",
            "Lcom/google/crypto/tink/shaded/protobuf/j1<",
            "**>;",
            "Lcom/google/crypto/tink/shaded/protobuf/q<",
            "*>;",
            "Lcom/google/crypto/tink/shaded/protobuf/l0;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/t0<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/c1;->c()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/c1;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_2

    and-int/lit16 v5, v5, 0x1fff

    const/4 v8, 0x1

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_1

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_1

    :cond_1
    shl-int/2addr v8, v9

    or-int/2addr v5, v8

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_4

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_3
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_3

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v11

    or-int/2addr v9, v8

    add-int/lit8 v11, v11, 0xd

    move v8, v12

    goto :goto_3

    :cond_3
    shl-int/2addr v8, v11

    or-int/2addr v9, v8

    move v8, v12

    :cond_4
    if-nez v9, :cond_5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->r:[I

    move-object v11, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_d

    :cond_5
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_7

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_6

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_4

    :cond_6
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_7
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_9

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_8

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_8
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_9
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_a

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_a
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_b
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_c

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_c
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_d
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_e

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_e
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_f
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_10

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_10
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_11
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v18, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_12

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v18

    goto :goto_a

    :cond_12
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v3, v18

    goto :goto_b

    :cond_13
    move/from16 v3, v16

    :goto_b
    add-int/lit8 v16, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_15

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v7, v16

    const/16 v16, 0xd

    :goto_c
    add-int/lit8 v19, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_14

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v16

    or-int/2addr v3, v7

    add-int/lit8 v16, v16, 0xd

    move/from16 v7, v19

    goto :goto_c

    :cond_14
    shl-int v7, v7, v16

    or-int/2addr v3, v7

    move/from16 v16, v19

    :cond_15
    add-int v7, v3, v14

    add-int/2addr v7, v15

    new-array v7, v7, [I

    mul-int/lit8 v15, v8, 0x2

    add-int/2addr v15, v9

    move v9, v13

    move v13, v3

    move v3, v8

    move/from16 v8, v16

    move/from16 v35, v11

    move-object v11, v7

    move/from16 v7, v35

    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/c1;->d()[Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/c1;->b()Lcom/google/crypto/tink/shaded/protobuf/q0;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v6, v9, 0x3

    new-array v6, v6, [I

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    add-int/2addr v14, v13

    move/from16 v23, v13

    move/from16 v24, v14

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_e
    if-ge v8, v4, :cond_33

    add-int/lit8 v25, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const v2, 0xd800

    if-lt v8, v2, :cond_17

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v2, v25

    const/16 v25, 0xd

    :goto_f
    add-int/lit8 v27, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v25

    or-int/2addr v8, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v2, v27

    move/from16 v4, v28

    goto :goto_f

    :cond_16
    shl-int v2, v2, v25

    or-int/2addr v8, v2

    move/from16 v2, v27

    goto :goto_10

    :cond_17
    move/from16 v28, v4

    move/from16 v2, v25

    :goto_10
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v25

    const/16 v25, 0xd

    :goto_11
    add-int/lit8 v27, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v29, v14

    const v14, 0xd800

    if-lt v4, v14, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v25

    or-int/2addr v2, v4

    add-int/lit8 v25, v25, 0xd

    move/from16 v4, v27

    move/from16 v14, v29

    goto :goto_11

    :cond_18
    shl-int v4, v4, v25

    or-int/2addr v2, v4

    move/from16 v4, v27

    goto :goto_12

    :cond_19
    move/from16 v29, v14

    move/from16 v4, v25

    :goto_12
    and-int/lit16 v14, v2, 0xff

    move/from16 v25, v13

    and-int/lit16 v13, v2, 0x400

    if-eqz v13, :cond_1a

    add-int/lit8 v13, v22, 0x1

    aput v21, v11, v22

    move/from16 v22, v13

    :cond_1a
    const/16 v13, 0x33

    move/from16 v31, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    if-lt v14, v13, :cond_22

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v4, v13, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v13, v32

    const/16 v32, 0xd

    :goto_13
    add-int/lit8 v33, v13, 0x1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v34, v12

    const v12, 0xd800

    if-lt v13, v12, :cond_1b

    and-int/lit16 v12, v13, 0x1fff

    shl-int v12, v12, v32

    or-int/2addr v4, v12

    add-int/lit8 v32, v32, 0xd

    move/from16 v13, v33

    move/from16 v12, v34

    goto :goto_13

    :cond_1b
    shl-int v12, v13, v32

    or-int/2addr v4, v12

    move/from16 v13, v33

    goto :goto_14

    :cond_1c
    move/from16 v34, v12

    move/from16 v13, v32

    :goto_14
    add-int/lit8 v12, v14, -0x33

    move/from16 v32, v13

    const/16 v13, 0x9

    if-eq v12, v13, :cond_1f

    const/16 v13, 0x11

    if-ne v12, v13, :cond_1d

    goto :goto_15

    :cond_1d
    const/16 v13, 0xc

    if-ne v12, v13, :cond_1e

    and-int/lit8 v12, v5, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1e

    div-int/lit8 v12, v21, 0x3

    const/16 v20, 0x2

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v13

    add-int/lit8 v13, v15, 0x1

    aget-object v15, v16, v15

    aput-object v15, v9, v12

    move v15, v13

    :cond_1e
    const/4 v13, 0x2

    goto :goto_16

    :cond_1f
    :goto_15
    div-int/lit8 v12, v21, 0x3

    const/4 v13, 0x2

    mul-int/lit8 v12, v12, 0x2

    const/16 v20, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v26, v15, 0x1

    aget-object v15, v16, v15

    aput-object v15, v9, v12

    move/from16 v15, v26

    :goto_16
    mul-int/lit8 v4, v4, 0x2

    aget-object v12, v16, v4

    instance-of v13, v12, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_20

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_17

    :cond_20
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/crypto/tink/shaded/protobuf/t0;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v16, v4

    :goto_17
    invoke-virtual {v10, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v13, v12

    add-int/lit8 v4, v4, 0x1

    aget-object v12, v16, v4

    move/from16 v27, v13

    instance-of v13, v12, Ljava/lang/reflect/Field;

    if-eqz v13, :cond_21

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_21
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/crypto/tink/shaded/protobuf/t0;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v16, v4

    :goto_18
    invoke-virtual {v10, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v12

    long-to-int v4, v12

    move v12, v15

    move/from16 v13, v27

    move/from16 v30, v32

    move/from16 v27, v7

    move v15, v8

    move v8, v4

    const/4 v4, 0x0

    goto/16 :goto_24

    :cond_22
    move/from16 v34, v12

    add-int/lit8 v12, v15, 0x1

    aget-object v13, v16, v15

    check-cast v13, Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/google/crypto/tink/shaded/protobuf/t0;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/16 v15, 0x9

    if-eq v14, v15, :cond_2a

    const/16 v15, 0x11

    if-ne v14, v15, :cond_23

    goto/16 :goto_1d

    :cond_23
    const/16 v15, 0x1b

    if-eq v14, v15, :cond_29

    const/16 v15, 0x31

    if-ne v14, v15, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v15, 0xc

    if-eq v14, v15, :cond_28

    const/16 v15, 0x1e

    if-eq v14, v15, :cond_28

    const/16 v15, 0x2c

    if-ne v14, v15, :cond_25

    goto :goto_1a

    :cond_25
    const/16 v15, 0x32

    if-ne v14, v15, :cond_27

    add-int/lit8 v15, v23, 0x1

    aput v21, v11, v23

    div-int/lit8 v23, v21, 0x3

    const/16 v26, 0x2

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v27, v12, 0x1

    aget-object v12, v16, v12

    aput-object v12, v9, v23

    and-int/lit16 v12, v2, 0x800

    if-eqz v12, :cond_26

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v12, v27, 0x1

    aget-object v27, v16, v27

    aput-object v27, v9, v23

    move/from16 v27, v7

    move/from16 v23, v15

    goto :goto_19

    :cond_26
    move/from16 v23, v15

    move/from16 v12, v27

    :cond_27
    move/from16 v27, v7

    :goto_19
    const/4 v7, 0x1

    goto :goto_1e

    :cond_28
    :goto_1a
    and-int/lit8 v15, v5, 0x1

    move/from16 v27, v7

    const/4 v7, 0x1

    if-ne v15, v7, :cond_2b

    div-int/lit8 v15, v21, 0x3

    const/16 v20, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v7

    add-int/lit8 v26, v12, 0x1

    aget-object v12, v16, v12

    aput-object v12, v9, v15

    goto :goto_1c

    :cond_29
    :goto_1b
    move/from16 v27, v7

    const/4 v7, 0x1

    const/16 v20, 0x2

    div-int/lit8 v15, v21, 0x3

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v7

    add-int/lit8 v26, v12, 0x1

    aget-object v12, v16, v12

    aput-object v12, v9, v15

    :goto_1c
    move v15, v8

    move/from16 v12, v26

    goto :goto_1f

    :cond_2a
    :goto_1d
    move/from16 v27, v7

    const/4 v7, 0x1

    const/16 v20, 0x2

    div-int/lit8 v15, v21, 0x3

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v7

    invoke-virtual {v13}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v20

    aput-object v20, v9, v15

    :cond_2b
    :goto_1e
    move v15, v8

    :goto_1f
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v13, v7

    and-int/lit8 v7, v5, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2f

    const/16 v7, 0x11

    if-gt v14, v7, :cond_2f

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v8, 0xd800

    if-lt v4, v8, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    const/16 v19, 0xd

    :goto_20
    add-int/lit8 v30, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2c

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v19

    or-int/2addr v4, v7

    add-int/lit8 v19, v19, 0xd

    move/from16 v7, v30

    goto :goto_20

    :cond_2c
    shl-int v7, v7, v19

    or-int/2addr v4, v7

    goto :goto_21

    :cond_2d
    move/from16 v30, v7

    :goto_21
    const/4 v7, 0x2

    mul-int/lit8 v19, v3, 0x2

    div-int/lit8 v26, v4, 0x20

    add-int v26, v26, v19

    aget-object v7, v16, v26

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2e

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_22

    :cond_2e
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/crypto/tink/shaded/protobuf/t0;->I(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v16, v26

    :goto_22
    invoke-virtual {v10, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    rem-int/lit8 v4, v4, 0x20

    goto :goto_23

    :cond_2f
    move/from16 v30, v4

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_23
    const/16 v7, 0x12

    if-lt v14, v7, :cond_30

    const/16 v7, 0x31

    if-gt v14, v7, :cond_30

    add-int/lit8 v7, v24, 0x1

    aput v13, v11, v24

    move/from16 v24, v7

    :cond_30
    :goto_24
    add-int/lit8 v7, v21, 0x1

    aput v15, v6, v21

    add-int/lit8 v10, v7, 0x1

    and-int/lit16 v15, v2, 0x200

    if-eqz v15, :cond_31

    const/high16 v15, 0x20000000

    goto :goto_25

    :cond_31
    const/4 v15, 0x0

    :goto_25
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_26

    :cond_32
    const/4 v2, 0x0

    :goto_26
    or-int/2addr v2, v15

    shl-int/lit8 v14, v14, 0x14

    or-int/2addr v2, v14

    or-int/2addr v2, v13

    aput v2, v6, v7

    add-int/lit8 v21, v10, 0x1

    shl-int/lit8 v2, v4, 0x14

    or-int/2addr v2, v8

    aput v2, v6, v10

    move v15, v12

    move/from16 v13, v25

    move/from16 v7, v27

    move/from16 v4, v28

    move/from16 v14, v29

    move/from16 v8, v30

    move/from16 v10, v31

    move/from16 v12, v34

    const/4 v2, 0x2

    goto/16 :goto_e

    :cond_33
    move/from16 v27, v7

    move/from16 v31, v10

    move/from16 v34, v12

    move/from16 v25, v13

    move/from16 v29, v14

    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/t0;

    invoke-virtual/range {p0 .. p0}, Lcom/google/crypto/tink/shaded/protobuf/c1;->b()Lcom/google/crypto/tink/shaded/protobuf/q0;

    move-result-object v1

    move-object v4, v0

    move-object v5, v6

    move-object v6, v9

    move/from16 v8, v34

    move-object v9, v1

    move/from16 v12, v25

    move/from16 v13, v29

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v4 .. v18}, Lcom/google/crypto/tink/shaded/protobuf/t0;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/q0;Z[IIILcom/google/crypto/tink/shaded/protobuf/v0;Lcom/google/crypto/tink/shaded/protobuf/g0;Lcom/google/crypto/tink/shaded/protobuf/j1;Lcom/google/crypto/tink/shaded/protobuf/q;Lcom/google/crypto/tink/shaded/protobuf/l0;)V

    return-object v0
.end method

.method public static x(JLjava/lang/Object;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static y(JLjava/lang/Object;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
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

    iget-object v12, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    aget v7, v12, v7

    const v12, 0xfffff

    and-int/2addr v7, v12

    int-to-long v12, v7

    const/4 v7, 0x1

    const/4 v15, 0x2

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    packed-switch p9, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    const/4 v7, 0x3

    if-ne v5, v7, :cond_9

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->m(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

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

    goto/16 :goto_5

    :pswitch_1
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->c(J)J

    move-result-wide v3

    goto/16 :goto_9

    :pswitch_2
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->b(I)I

    move-result v3

    goto/16 :goto_8

    :pswitch_3
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v3

    iget v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/google/crypto/tink/shaded/protobuf/z$b;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_2
    move v2, v3

    goto/16 :goto_f

    :pswitch_4
    if-ne v5, v15, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->b([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    :goto_3
    iget-object v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    goto/16 :goto_a

    :pswitch_5
    if-ne v5, v15, :cond_9

    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    invoke-virtual {v14, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_3

    invoke-virtual {v14, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_4

    :goto_5
    goto :goto_3

    :cond_4
    iget-object v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    move-result-object v3

    goto/16 :goto_a

    :pswitch_6
    if-ne v5, v15, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    if-nez v4, :cond_5

    const-string v3, ""

    goto :goto_a

    :cond_5
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_7

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/o1;->d([BII)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->a()Lcom/google/crypto/tink/shaded/protobuf/a0;

    move-result-object v1

    throw v1

    :cond_7
    :goto_6
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/z;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v14, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    goto/16 :goto_d

    :pswitch_7
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    const-wide/16 v5, 0x0

    cmp-long v11, v3, v5

    if-eqz v11, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_a

    :pswitch_8
    const/4 v2, 0x5

    if-ne v5, v2, :cond_9

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_b

    :pswitch_9
    if-ne v5, v7, :cond_9

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c

    :pswitch_a
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_a

    :pswitch_b
    if-nez v5, :cond_9

    invoke-static {v3, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_a
    invoke-virtual {v14, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_d

    :pswitch_c
    const/4 v2, 0x5

    if-ne v5, v2, :cond_9

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/e;->k(I[B)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_b
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_d

    :pswitch_d
    if-ne v5, v7, :cond_9

    invoke-static {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/e;->d(I[B)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_c
    invoke-virtual {v14, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_d
    invoke-virtual {v14, v1, v12, v13, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_f

    :cond_9
    :goto_e
    move v2, v4

    :goto_f
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

.method public final B(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
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
    move-object/from16 v11, p6

    .line 10
    .line 11
    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 12
    .line 13
    move/from16 v0, p3

    .line 14
    .line 15
    move/from16 v1, p5

    .line 16
    .line 17
    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v6, -0x1

    .line 21
    const/4 v7, 0x0

    .line 22
    :goto_0
    if-ge v0, v13, :cond_1e

    .line 23
    .line 24
    add-int/lit8 v4, v0, 0x1

    .line 25
    .line 26
    aget-byte v0, v12, v0

    .line 27
    .line 28
    if-gez v0, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->G(I[BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 35
    .line 36
    move/from16 v26, v4

    .line 37
    .line 38
    move v4, v0

    .line 39
    move/from16 v0, v26

    .line 40
    .line 41
    :cond_0
    ushr-int/lit8 v10, v0, 0x3

    .line 42
    .line 43
    and-int/lit8 v8, v0, 0x7

    .line 44
    .line 45
    iget v5, v15, Lcom/google/crypto/tink/shaded/protobuf/t0;->d:I

    .line 46
    .line 47
    move/from16 v18, v0

    .line 48
    .line 49
    iget v0, v15, Lcom/google/crypto/tink/shaded/protobuf/t0;->c:I

    .line 50
    .line 51
    move/from16 v19, v1

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    if-le v10, v2, :cond_2

    .line 55
    .line 56
    div-int/2addr v3, v1

    .line 57
    if-lt v10, v0, :cond_1

    .line 58
    .line 59
    if-gt v10, v5, :cond_1

    .line 60
    .line 61
    invoke-virtual {v15, v10, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->L(II)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    const/4 v0, -0x1

    .line 67
    :goto_1
    move v3, v0

    .line 68
    const/4 v0, -0x1

    .line 69
    const/4 v5, 0x0

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    if-lt v10, v0, :cond_3

    .line 72
    .line 73
    if-gt v10, v5, :cond_3

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v15, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/t0;->L(II)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 v5, 0x0

    .line 82
    const/4 v0, -0x1

    .line 83
    :goto_2
    move v3, v0

    .line 84
    const/4 v0, -0x1

    .line 85
    :goto_3
    if-ne v3, v0, :cond_4

    .line 86
    .line 87
    move v2, v4

    .line 88
    move/from16 v20, v6

    .line 89
    .line 90
    move/from16 v24, v7

    .line 91
    .line 92
    move-object/from16 v25, v9

    .line 93
    .line 94
    move/from16 v17, v10

    .line 95
    .line 96
    move/from16 v8, v18

    .line 97
    .line 98
    move/from16 v7, v19

    .line 99
    .line 100
    const/4 v14, 0x0

    .line 101
    const/16 v16, 0x0

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    goto/16 :goto_1a

    .line 106
    .line 107
    :cond_4
    add-int/lit8 v0, v3, 0x1

    .line 108
    .line 109
    iget-object v2, v15, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 110
    .line 111
    aget v0, v2, v0

    .line 112
    .line 113
    const/high16 v17, 0xff00000

    .line 114
    .line 115
    and-int v17, v0, v17

    .line 116
    .line 117
    ushr-int/lit8 v1, v17, 0x14

    .line 118
    .line 119
    const v17, 0xfffff

    .line 120
    .line 121
    .line 122
    and-int v5, v0, v17

    .line 123
    .line 124
    int-to-long v12, v5

    .line 125
    const/16 v5, 0x11

    .line 126
    .line 127
    move/from16 v19, v0

    .line 128
    .line 129
    if-gt v1, v5, :cond_12

    .line 130
    .line 131
    add-int/lit8 v5, v3, 0x2

    .line 132
    .line 133
    aget v2, v2, v5

    .line 134
    .line 135
    ushr-int/lit8 v5, v2, 0x14

    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    shl-int v22, v0, v5

    .line 139
    .line 140
    and-int v2, v2, v17

    .line 141
    .line 142
    if-eq v2, v6, :cond_6

    .line 143
    .line 144
    const/4 v5, -0x1

    .line 145
    if-eq v6, v5, :cond_5

    .line 146
    .line 147
    int-to-long v5, v6

    .line 148
    invoke-virtual {v9, v14, v5, v6, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 149
    .line 150
    .line 151
    :cond_5
    int-to-long v5, v2

    .line 152
    invoke-virtual {v9, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    move v6, v2

    .line 157
    :cond_6
    const/4 v2, 0x5

    .line 158
    packed-switch v1, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    move-object/from16 v12, p2

    .line 162
    .line 163
    move/from16 v13, p4

    .line 164
    .line 165
    move v5, v4

    .line 166
    move/from16 v17, v10

    .line 167
    .line 168
    move/from16 v21, v18

    .line 169
    .line 170
    const/16 v16, 0x0

    .line 171
    .line 172
    const/16 v18, -0x1

    .line 173
    .line 174
    move v10, v3

    .line 175
    goto/16 :goto_13

    .line 176
    .line 177
    :pswitch_0
    const/4 v1, 0x3

    .line 178
    if-ne v8, v1, :cond_8

    .line 179
    .line 180
    shl-int/lit8 v0, v10, 0x3

    .line 181
    .line 182
    or-int/lit8 v5, v0, 0x4

    .line 183
    .line 184
    invoke-virtual {v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    move/from16 v8, v18

    .line 189
    .line 190
    move-object/from16 v1, p2

    .line 191
    .line 192
    move v2, v4

    .line 193
    move v4, v3

    .line 194
    move/from16 v3, p4

    .line 195
    .line 196
    move/from16 v17, v10

    .line 197
    .line 198
    move v10, v4

    .line 199
    move v4, v5

    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    const/16 v18, -0x1

    .line 203
    .line 204
    move-object/from16 v5, p6

    .line 205
    .line 206
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/e;->m(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    and-int v1, v7, v22

    .line 211
    .line 212
    if-nez v1, :cond_7

    .line 213
    .line 214
    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_7
    invoke-virtual {v9, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    :goto_4
    invoke-virtual {v9, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    or-int v1, v7, v22

    .line 231
    .line 232
    move-object/from16 v12, p2

    .line 233
    .line 234
    move/from16 v13, p4

    .line 235
    .line 236
    move v7, v1

    .line 237
    move/from16 v21, v8

    .line 238
    .line 239
    goto/16 :goto_12

    .line 240
    .line 241
    :cond_8
    move/from16 v17, v10

    .line 242
    .line 243
    move/from16 v8, v18

    .line 244
    .line 245
    const/16 v16, 0x0

    .line 246
    .line 247
    const/16 v18, -0x1

    .line 248
    .line 249
    move v10, v3

    .line 250
    move-object/from16 v12, p2

    .line 251
    .line 252
    move/from16 v13, p4

    .line 253
    .line 254
    move v5, v4

    .line 255
    move/from16 v21, v8

    .line 256
    .line 257
    goto/16 :goto_13

    .line 258
    .line 259
    :pswitch_1
    move/from16 v17, v10

    .line 260
    .line 261
    move/from16 v5, v18

    .line 262
    .line 263
    const/16 v16, 0x0

    .line 264
    .line 265
    const/16 v18, -0x1

    .line 266
    .line 267
    move v10, v3

    .line 268
    if-nez v8, :cond_9

    .line 269
    .line 270
    move-wide v1, v12

    .line 271
    move-object/from16 v12, p2

    .line 272
    .line 273
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    iget-wide v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 278
    .line 279
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/j;->c(J)J

    .line 280
    .line 281
    .line 282
    move-result-wide v3

    .line 283
    move/from16 v13, p4

    .line 284
    .line 285
    move v8, v0

    .line 286
    move/from16 v21, v5

    .line 287
    .line 288
    move-wide v4, v3

    .line 289
    move-wide v2, v1

    .line 290
    goto/16 :goto_f

    .line 291
    .line 292
    :cond_9
    move-object/from16 v12, p2

    .line 293
    .line 294
    goto/16 :goto_6

    .line 295
    .line 296
    :pswitch_2
    move/from16 v17, v10

    .line 297
    .line 298
    move-wide v1, v12

    .line 299
    move/from16 v5, v18

    .line 300
    .line 301
    const/16 v16, 0x0

    .line 302
    .line 303
    const/16 v18, -0x1

    .line 304
    .line 305
    move-object/from16 v12, p2

    .line 306
    .line 307
    move v10, v3

    .line 308
    if-nez v8, :cond_c

    .line 309
    .line 310
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    iget v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 315
    .line 316
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/j;->b(I)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    goto :goto_5

    .line 321
    :pswitch_3
    move/from16 v17, v10

    .line 322
    .line 323
    move-wide v1, v12

    .line 324
    move/from16 v5, v18

    .line 325
    .line 326
    const/16 v16, 0x0

    .line 327
    .line 328
    const/16 v18, -0x1

    .line 329
    .line 330
    move-object/from16 v12, p2

    .line 331
    .line 332
    move v10, v3

    .line 333
    if-nez v8, :cond_c

    .line 334
    .line 335
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    iget v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 340
    .line 341
    invoke-virtual {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    .line 342
    .line 343
    .line 344
    move-result-object v4

    .line 345
    if-eqz v4, :cond_b

    .line 346
    .line 347
    invoke-interface {v4}, Lcom/google/crypto/tink/shaded/protobuf/z$b;->a()Z

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    if-eqz v4, :cond_a

    .line 352
    .line 353
    goto :goto_5

    .line 354
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    int-to-long v2, v3

    .line 359
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    invoke-virtual {v1, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/k1;->b(ILjava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    move/from16 v13, p4

    .line 367
    .line 368
    goto/16 :goto_c

    .line 369
    .line 370
    :cond_b
    :goto_5
    move/from16 v13, p4

    .line 371
    .line 372
    move/from16 v21, v5

    .line 373
    .line 374
    move-wide/from16 v26, v1

    .line 375
    .line 376
    move v1, v3

    .line 377
    move-wide/from16 v2, v26

    .line 378
    .line 379
    goto/16 :goto_e

    .line 380
    .line 381
    :pswitch_4
    move/from16 v17, v10

    .line 382
    .line 383
    move-wide v1, v12

    .line 384
    move/from16 v5, v18

    .line 385
    .line 386
    const/4 v0, 0x2

    .line 387
    const/16 v16, 0x0

    .line 388
    .line 389
    const/16 v18, -0x1

    .line 390
    .line 391
    move-object/from16 v12, p2

    .line 392
    .line 393
    move v10, v3

    .line 394
    if-ne v8, v0, :cond_c

    .line 395
    .line 396
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->b([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    iget-object v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 401
    .line 402
    invoke-virtual {v9, v14, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 403
    .line 404
    .line 405
    move/from16 v13, p4

    .line 406
    .line 407
    move/from16 v21, v5

    .line 408
    .line 409
    goto/16 :goto_11

    .line 410
    .line 411
    :cond_c
    :goto_6
    move/from16 v13, p4

    .line 412
    .line 413
    goto/16 :goto_d

    .line 414
    .line 415
    :pswitch_5
    move/from16 v17, v10

    .line 416
    .line 417
    move-wide v1, v12

    .line 418
    move/from16 v5, v18

    .line 419
    .line 420
    const/4 v0, 0x2

    .line 421
    const/16 v16, 0x0

    .line 422
    .line 423
    const/16 v18, -0x1

    .line 424
    .line 425
    move-object/from16 v12, p2

    .line 426
    .line 427
    move v10, v3

    .line 428
    if-ne v8, v0, :cond_c

    .line 429
    .line 430
    invoke-virtual {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    move/from16 v13, p4

    .line 435
    .line 436
    invoke-static {v0, v12, v4, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    and-int v3, v7, v22

    .line 441
    .line 442
    if-nez v3, :cond_d

    .line 443
    .line 444
    :goto_7
    iget-object v3, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 445
    .line 446
    goto :goto_8

    .line 447
    :cond_d
    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    iget-object v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 452
    .line 453
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    goto :goto_8

    .line 458
    :pswitch_6
    move/from16 v17, v10

    .line 459
    .line 460
    move-wide v1, v12

    .line 461
    move/from16 v5, v18

    .line 462
    .line 463
    const/4 v0, 0x2

    .line 464
    const/16 v16, 0x0

    .line 465
    .line 466
    const/16 v18, -0x1

    .line 467
    .line 468
    move-object/from16 v12, p2

    .line 469
    .line 470
    move/from16 v13, p4

    .line 471
    .line 472
    move v10, v3

    .line 473
    if-ne v8, v0, :cond_10

    .line 474
    .line 475
    const/high16 v0, 0x20000000

    .line 476
    .line 477
    and-int v0, v19, v0

    .line 478
    .line 479
    if-nez v0, :cond_e

    .line 480
    .line 481
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->B([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    goto :goto_7

    .line 486
    :cond_e
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->E([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    goto :goto_7

    .line 491
    :goto_8
    invoke-virtual {v9, v14, v1, v2, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 492
    .line 493
    .line 494
    goto :goto_a

    .line 495
    :pswitch_7
    move/from16 v17, v10

    .line 496
    .line 497
    move-wide v1, v12

    .line 498
    move/from16 v5, v18

    .line 499
    .line 500
    const/16 v16, 0x0

    .line 501
    .line 502
    const/16 v18, -0x1

    .line 503
    .line 504
    move-object/from16 v12, p2

    .line 505
    .line 506
    move/from16 v13, p4

    .line 507
    .line 508
    move v10, v3

    .line 509
    if-nez v8, :cond_10

    .line 510
    .line 511
    invoke-static {v12, v4, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 512
    .line 513
    .line 514
    move-result v3

    .line 515
    move-wide/from16 v20, v1

    .line 516
    .line 517
    iget-wide v0, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 518
    .line 519
    const-wide/16 v23, 0x0

    .line 520
    .line 521
    cmp-long v2, v0, v23

    .line 522
    .line 523
    if-eqz v2, :cond_f

    .line 524
    .line 525
    move-wide/from16 v1, v20

    .line 526
    .line 527
    const/4 v0, 0x1

    .line 528
    goto :goto_9

    .line 529
    :cond_f
    move-wide/from16 v1, v20

    .line 530
    .line 531
    const/4 v0, 0x0

    .line 532
    :goto_9
    invoke-static {v14, v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->p(Ljava/lang/Object;JZ)V

    .line 533
    .line 534
    .line 535
    or-int v0, v7, v22

    .line 536
    .line 537
    goto :goto_b

    .line 538
    :pswitch_8
    move/from16 v17, v10

    .line 539
    .line 540
    move-wide v0, v12

    .line 541
    move/from16 v5, v18

    .line 542
    .line 543
    const/16 v16, 0x0

    .line 544
    .line 545
    const/16 v18, -0x1

    .line 546
    .line 547
    move-object/from16 v12, p2

    .line 548
    .line 549
    move/from16 v13, p4

    .line 550
    .line 551
    move v10, v3

    .line 552
    if-ne v8, v2, :cond_10

    .line 553
    .line 554
    invoke-static {v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    invoke-virtual {v9, v14, v0, v1, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 559
    .line 560
    .line 561
    add-int/lit8 v0, v4, 0x4

    .line 562
    .line 563
    :goto_a
    or-int v1, v7, v22

    .line 564
    .line 565
    move v3, v0

    .line 566
    move v0, v1

    .line 567
    :goto_b
    move v7, v0

    .line 568
    move v0, v3

    .line 569
    :goto_c
    move/from16 v21, v5

    .line 570
    .line 571
    goto/16 :goto_12

    .line 572
    .line 573
    :pswitch_9
    move/from16 v17, v10

    .line 574
    .line 575
    move-wide v0, v12

    .line 576
    move/from16 v5, v18

    .line 577
    .line 578
    const/4 v2, 0x1

    .line 579
    const/16 v16, 0x0

    .line 580
    .line 581
    const/16 v18, -0x1

    .line 582
    .line 583
    move-object/from16 v12, p2

    .line 584
    .line 585
    move/from16 v13, p4

    .line 586
    .line 587
    move v10, v3

    .line 588
    if-ne v8, v2, :cond_10

    .line 589
    .line 590
    invoke-static {v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 591
    .line 592
    .line 593
    move-result-wide v19

    .line 594
    move-wide v2, v0

    .line 595
    move-object v0, v9

    .line 596
    move-object/from16 v1, p1

    .line 597
    .line 598
    move v8, v4

    .line 599
    move/from16 v21, v5

    .line 600
    .line 601
    move-wide/from16 v4, v19

    .line 602
    .line 603
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 604
    .line 605
    .line 606
    add-int/lit8 v4, v8, 0x8

    .line 607
    .line 608
    goto/16 :goto_10

    .line 609
    .line 610
    :cond_10
    :goto_d
    move/from16 v21, v5

    .line 611
    .line 612
    move v5, v4

    .line 613
    goto/16 :goto_13

    .line 614
    .line 615
    :pswitch_a
    move v5, v4

    .line 616
    move/from16 v17, v10

    .line 617
    .line 618
    move/from16 v21, v18

    .line 619
    .line 620
    const/16 v16, 0x0

    .line 621
    .line 622
    const/16 v18, -0x1

    .line 623
    .line 624
    move v10, v3

    .line 625
    move-wide v2, v12

    .line 626
    move-object/from16 v12, p2

    .line 627
    .line 628
    move/from16 v13, p4

    .line 629
    .line 630
    if-nez v8, :cond_11

    .line 631
    .line 632
    invoke-static {v12, v5, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 637
    .line 638
    :goto_e
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 639
    .line 640
    .line 641
    goto/16 :goto_11

    .line 642
    .line 643
    :pswitch_b
    move v5, v4

    .line 644
    move/from16 v17, v10

    .line 645
    .line 646
    move/from16 v21, v18

    .line 647
    .line 648
    const/16 v16, 0x0

    .line 649
    .line 650
    const/16 v18, -0x1

    .line 651
    .line 652
    move v10, v3

    .line 653
    move-wide v2, v12

    .line 654
    move-object/from16 v12, p2

    .line 655
    .line 656
    move/from16 v13, p4

    .line 657
    .line 658
    if-nez v8, :cond_11

    .line 659
    .line 660
    invoke-static {v12, v5, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    iget-wide v4, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 665
    .line 666
    move v8, v0

    .line 667
    :goto_f
    move-object v0, v9

    .line 668
    move-object/from16 v1, p1

    .line 669
    .line 670
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 671
    .line 672
    .line 673
    or-int v7, v7, v22

    .line 674
    .line 675
    move v0, v8

    .line 676
    goto :goto_12

    .line 677
    :pswitch_c
    move v5, v4

    .line 678
    move/from16 v17, v10

    .line 679
    .line 680
    move/from16 v21, v18

    .line 681
    .line 682
    const/16 v16, 0x0

    .line 683
    .line 684
    const/16 v18, -0x1

    .line 685
    .line 686
    move v10, v3

    .line 687
    move-wide v3, v12

    .line 688
    move-object/from16 v12, p2

    .line 689
    .line 690
    move/from16 v13, p4

    .line 691
    .line 692
    if-ne v8, v2, :cond_11

    .line 693
    .line 694
    invoke-static {v5, v12}, Lcom/google/crypto/tink/shaded/protobuf/e;->k(I[B)F

    .line 695
    .line 696
    .line 697
    move-result v0

    .line 698
    invoke-static {v14, v3, v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->u(Ljava/lang/Object;JF)V

    .line 699
    .line 700
    .line 701
    add-int/lit8 v4, v5, 0x4

    .line 702
    .line 703
    goto :goto_10

    .line 704
    :pswitch_d
    move v5, v4

    .line 705
    move/from16 v17, v10

    .line 706
    .line 707
    move/from16 v21, v18

    .line 708
    .line 709
    const/16 v16, 0x0

    .line 710
    .line 711
    const/16 v18, -0x1

    .line 712
    .line 713
    move v10, v3

    .line 714
    move-wide v3, v12

    .line 715
    move-object/from16 v12, p2

    .line 716
    .line 717
    move/from16 v13, p4

    .line 718
    .line 719
    if-ne v8, v0, :cond_11

    .line 720
    .line 721
    invoke-static {v5, v12}, Lcom/google/crypto/tink/shaded/protobuf/e;->d(I[B)D

    .line 722
    .line 723
    .line 724
    move-result-wide v0

    .line 725
    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->t(Ljava/lang/Object;JD)V

    .line 726
    .line 727
    .line 728
    add-int/lit8 v4, v5, 0x8

    .line 729
    .line 730
    :goto_10
    move v0, v4

    .line 731
    :goto_11
    or-int v7, v7, v22

    .line 732
    .line 733
    :goto_12
    move/from16 v1, p5

    .line 734
    .line 735
    move v3, v10

    .line 736
    move/from16 v2, v17

    .line 737
    .line 738
    goto :goto_15

    .line 739
    :cond_11
    :goto_13
    move v4, v5

    .line 740
    move-object/from16 v25, v9

    .line 741
    .line 742
    move/from16 v18, v10

    .line 743
    .line 744
    goto/16 :goto_17

    .line 745
    .line 746
    :cond_12
    move v5, v4

    .line 747
    move/from16 v17, v10

    .line 748
    .line 749
    move/from16 v21, v18

    .line 750
    .line 751
    const/16 v16, 0x0

    .line 752
    .line 753
    const/16 v18, -0x1

    .line 754
    .line 755
    move v10, v3

    .line 756
    move-wide v3, v12

    .line 757
    move-object/from16 v12, p2

    .line 758
    .line 759
    move/from16 v13, p4

    .line 760
    .line 761
    const/16 v0, 0x1b

    .line 762
    .line 763
    if-ne v1, v0, :cond_16

    .line 764
    .line 765
    const/4 v0, 0x2

    .line 766
    if-ne v8, v0, :cond_15

    .line 767
    .line 768
    invoke-virtual {v9, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 773
    .line 774
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->o0()Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    if-nez v1, :cond_14

    .line 779
    .line 780
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 781
    .line 782
    .line 783
    move-result v1

    .line 784
    if-nez v1, :cond_13

    .line 785
    .line 786
    const/16 v1, 0xa

    .line 787
    .line 788
    goto :goto_14

    .line 789
    :cond_13
    mul-int/lit8 v1, v1, 0x2

    .line 790
    .line 791
    :goto_14
    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->F(I)Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    invoke-virtual {v9, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 796
    .line 797
    .line 798
    :cond_14
    move-object v8, v0

    .line 799
    invoke-virtual {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    move/from16 v1, v21

    .line 804
    .line 805
    move-object/from16 v2, p2

    .line 806
    .line 807
    move v3, v5

    .line 808
    move/from16 v4, p4

    .line 809
    .line 810
    move-object v5, v8

    .line 811
    move/from16 v20, v6

    .line 812
    .line 813
    move-object/from16 v6, p6

    .line 814
    .line 815
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/e;->p(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 816
    .line 817
    .line 818
    move-result v0

    .line 819
    move/from16 v1, p5

    .line 820
    .line 821
    move v3, v10

    .line 822
    move/from16 v2, v17

    .line 823
    .line 824
    move/from16 v6, v20

    .line 825
    .line 826
    :goto_15
    move/from16 v4, v21

    .line 827
    .line 828
    goto/16 :goto_0

    .line 829
    .line 830
    :cond_15
    move/from16 v20, v6

    .line 831
    .line 832
    move v15, v5

    .line 833
    move/from16 v24, v7

    .line 834
    .line 835
    move-object/from16 v25, v9

    .line 836
    .line 837
    move/from16 v18, v10

    .line 838
    .line 839
    goto :goto_16

    .line 840
    :cond_16
    move/from16 v20, v6

    .line 841
    .line 842
    const/16 v0, 0x31

    .line 843
    .line 844
    if-gt v1, v0, :cond_17

    .line 845
    .line 846
    move/from16 v0, v19

    .line 847
    .line 848
    int-to-long v11, v0

    .line 849
    move-object/from16 v0, p0

    .line 850
    .line 851
    move v6, v1

    .line 852
    move-object/from16 v1, p1

    .line 853
    .line 854
    move-object/from16 v2, p2

    .line 855
    .line 856
    move-wide/from16 v22, v3

    .line 857
    .line 858
    move v3, v5

    .line 859
    move/from16 v4, p4

    .line 860
    .line 861
    move v15, v5

    .line 862
    move/from16 v5, v21

    .line 863
    .line 864
    move/from16 p3, v6

    .line 865
    .line 866
    move/from16 v6, v17

    .line 867
    .line 868
    move/from16 v24, v7

    .line 869
    .line 870
    move v7, v8

    .line 871
    move v8, v10

    .line 872
    move-object/from16 v25, v9

    .line 873
    .line 874
    move/from16 v18, v10

    .line 875
    .line 876
    move-wide v9, v11

    .line 877
    move-object/from16 v12, p6

    .line 878
    .line 879
    move/from16 v11, p3

    .line 880
    .line 881
    move-wide/from16 v12, v22

    .line 882
    .line 883
    move-object/from16 v14, p6

    .line 884
    .line 885
    invoke-virtual/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/t0;->D(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 886
    .line 887
    .line 888
    move-result v4

    .line 889
    if-eq v4, v15, :cond_18

    .line 890
    .line 891
    move v0, v4

    .line 892
    goto/16 :goto_18

    .line 893
    .line 894
    :cond_17
    move/from16 p3, v1

    .line 895
    .line 896
    move-wide/from16 v22, v3

    .line 897
    .line 898
    move v15, v5

    .line 899
    move/from16 v24, v7

    .line 900
    .line 901
    move-object/from16 v25, v9

    .line 902
    .line 903
    move/from16 v18, v10

    .line 904
    .line 905
    move/from16 v0, v19

    .line 906
    .line 907
    const/16 v1, 0x32

    .line 908
    .line 909
    move/from16 v9, p3

    .line 910
    .line 911
    if-ne v9, v1, :cond_1a

    .line 912
    .line 913
    const/4 v1, 0x2

    .line 914
    if-eq v8, v1, :cond_19

    .line 915
    .line 916
    :goto_16
    move v4, v15

    .line 917
    :cond_18
    move/from16 v6, v20

    .line 918
    .line 919
    move/from16 v7, v24

    .line 920
    .line 921
    :goto_17
    move v2, v4

    .line 922
    move/from16 v20, v6

    .line 923
    .line 924
    move/from16 v24, v7

    .line 925
    .line 926
    move/from16 v8, v21

    .line 927
    .line 928
    const/4 v14, 0x0

    .line 929
    move/from16 v7, p5

    .line 930
    .line 931
    goto :goto_1a

    .line 932
    :cond_19
    move-object/from16 v0, p0

    .line 933
    .line 934
    move-object/from16 v1, p1

    .line 935
    .line 936
    move-object/from16 v2, p2

    .line 937
    .line 938
    move v3, v15

    .line 939
    move/from16 v4, p4

    .line 940
    .line 941
    move/from16 v5, v18

    .line 942
    .line 943
    move-wide/from16 v6, v22

    .line 944
    .line 945
    move-object/from16 v8, p6

    .line 946
    .line 947
    invoke-virtual/range {v0 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->z(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/e$a;)V

    .line 948
    .line 949
    .line 950
    const/4 v14, 0x0

    .line 951
    throw v14

    .line 952
    :cond_1a
    move v10, v0

    .line 953
    const/4 v14, 0x0

    .line 954
    move-object/from16 v0, p0

    .line 955
    .line 956
    move-object/from16 v1, p1

    .line 957
    .line 958
    move-object/from16 v2, p2

    .line 959
    .line 960
    move v3, v15

    .line 961
    move/from16 v4, p4

    .line 962
    .line 963
    move/from16 v5, v21

    .line 964
    .line 965
    move/from16 v6, v17

    .line 966
    .line 967
    move v7, v8

    .line 968
    move v8, v10

    .line 969
    move-wide/from16 v10, v22

    .line 970
    .line 971
    move/from16 v12, v18

    .line 972
    .line 973
    move-object/from16 v13, p6

    .line 974
    .line 975
    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/t0;->A(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 976
    .line 977
    .line 978
    move-result v0

    .line 979
    if-eq v0, v15, :cond_1b

    .line 980
    .line 981
    :goto_18
    move-object/from16 v15, p0

    .line 982
    .line 983
    move-object/from16 v14, p1

    .line 984
    .line 985
    move-object/from16 v12, p2

    .line 986
    .line 987
    move/from16 v13, p4

    .line 988
    .line 989
    move/from16 v1, p5

    .line 990
    .line 991
    move-object/from16 v11, p6

    .line 992
    .line 993
    move/from16 v2, v17

    .line 994
    .line 995
    move/from16 v3, v18

    .line 996
    .line 997
    move/from16 v6, v20

    .line 998
    .line 999
    move/from16 v4, v21

    .line 1000
    .line 1001
    :goto_19
    move/from16 v7, v24

    .line 1002
    .line 1003
    move-object/from16 v9, v25

    .line 1004
    .line 1005
    goto/16 :goto_0

    .line 1006
    .line 1007
    :cond_1b
    move/from16 v7, p5

    .line 1008
    .line 1009
    move v2, v0

    .line 1010
    move/from16 v8, v21

    .line 1011
    .line 1012
    :goto_1a
    if-ne v8, v7, :cond_1c

    .line 1013
    .line 1014
    if-eqz v7, :cond_1c

    .line 1015
    .line 1016
    move-object/from16 v9, p0

    .line 1017
    .line 1018
    move v0, v2

    .line 1019
    move v1, v7

    .line 1020
    move v4, v8

    .line 1021
    move/from16 v6, v20

    .line 1022
    .line 1023
    move/from16 v7, v24

    .line 1024
    .line 1025
    goto :goto_1c

    .line 1026
    :cond_1c
    move-object/from16 v9, p0

    .line 1027
    .line 1028
    iget-boolean v0, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 1029
    .line 1030
    move-object/from16 v10, p6

    .line 1031
    .line 1032
    if-eqz v0, :cond_1d

    .line 1033
    .line 1034
    iget-object v0, v10, Lcom/google/crypto/tink/shaded/protobuf/e$a;->d:Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 1035
    .line 1036
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/p;->a()Lcom/google/crypto/tink/shaded/protobuf/p;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v1

    .line 1040
    if-eq v0, v1, :cond_1d

    .line 1041
    .line 1042
    iget-object v5, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->e:Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 1043
    .line 1044
    move v0, v8

    .line 1045
    move-object/from16 v1, p2

    .line 1046
    .line 1047
    move/from16 v3, p4

    .line 1048
    .line 1049
    move-object/from16 v4, p1

    .line 1050
    .line 1051
    move-object/from16 v6, p6

    .line 1052
    .line 1053
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/e;->f(I[BIILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/q0;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 1054
    .line 1055
    .line 1056
    move-result v0

    .line 1057
    goto :goto_1b

    .line 1058
    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v4

    .line 1062
    move v0, v8

    .line 1063
    move-object/from16 v1, p2

    .line 1064
    .line 1065
    move/from16 v3, p4

    .line 1066
    .line 1067
    move-object/from16 v5, p6

    .line 1068
    .line 1069
    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/e;->F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 1070
    .line 1071
    .line 1072
    move-result v0

    .line 1073
    :goto_1b
    move-object/from16 v14, p1

    .line 1074
    .line 1075
    move-object/from16 v12, p2

    .line 1076
    .line 1077
    move/from16 v13, p4

    .line 1078
    .line 1079
    move v1, v7

    .line 1080
    move v4, v8

    .line 1081
    move-object v15, v9

    .line 1082
    move-object v11, v10

    .line 1083
    move/from16 v2, v17

    .line 1084
    .line 1085
    move/from16 v3, v18

    .line 1086
    .line 1087
    move/from16 v6, v20

    .line 1088
    .line 1089
    goto :goto_19

    .line 1090
    :cond_1e
    move/from16 v19, v1

    .line 1091
    .line 1092
    move/from16 v20, v6

    .line 1093
    .line 1094
    move/from16 v24, v7

    .line 1095
    .line 1096
    move-object/from16 v25, v9

    .line 1097
    .line 1098
    move-object v9, v15

    .line 1099
    const/4 v14, 0x0

    .line 1100
    :goto_1c
    const/4 v2, -0x1

    .line 1101
    if-eq v6, v2, :cond_1f

    .line 1102
    .line 1103
    int-to-long v2, v6

    .line 1104
    move-object/from16 v5, p1

    .line 1105
    .line 1106
    move-object/from16 v6, v25

    .line 1107
    .line 1108
    invoke-virtual {v6, v5, v2, v3, v7}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_1d

    .line 1112
    :cond_1f
    move-object/from16 v5, p1

    .line 1113
    .line 1114
    :goto_1d
    iget v2, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->k:I

    .line 1115
    .line 1116
    :goto_1e
    iget v3, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->l:I

    .line 1117
    .line 1118
    if-ge v2, v3, :cond_20

    .line 1119
    .line 1120
    iget-object v3, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->j:[I

    .line 1121
    .line 1122
    aget v3, v3, v2

    .line 1123
    .line 1124
    iget-object v6, v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 1125
    .line 1126
    invoke-virtual {v9, v5, v3, v14, v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    .line 1127
    .line 1128
    .line 1129
    add-int/lit8 v2, v2, 0x1

    .line 1130
    .line 1131
    goto :goto_1e

    .line 1132
    :cond_20
    move/from16 v2, p4

    .line 1133
    .line 1134
    if-nez v1, :cond_22

    .line 1135
    .line 1136
    if-ne v0, v2, :cond_21

    .line 1137
    .line 1138
    goto :goto_1f

    .line 1139
    :cond_21
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    throw v0

    .line 1144
    :cond_22
    if-gt v0, v2, :cond_23

    .line 1145
    .line 1146
    if-ne v4, v1, :cond_23

    .line 1147
    .line 1148
    :goto_1f
    return v0

    .line 1149
    :cond_23
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    throw v0

    .line 1154
    nop

    .line 1155
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

.method public final C(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 2
    .line 3
    const/4 v7, -0x1

    .line 4
    const/4 v8, 0x0

    .line 5
    move-object/from16 v12, p0

    .line 6
    .line 7
    move-object/from16 v13, p1

    .line 8
    .line 9
    move-object/from16 v10, p2

    .line 10
    .line 11
    move/from16 v0, p3

    .line 12
    .line 13
    move/from16 v9, p4

    .line 14
    .line 15
    move-object/from16 v11, p5

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v0, v9, :cond_12

    .line 20
    .line 21
    add-int/lit8 v3, v0, 0x1

    .line 22
    .line 23
    aget-byte v0, v10, v0

    .line 24
    .line 25
    if-gez v0, :cond_0

    .line 26
    .line 27
    invoke-static {v0, v10, v3, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->G(I[BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iget v0, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 32
    .line 33
    :cond_0
    move v15, v3

    .line 34
    ushr-int/lit8 v14, v0, 0x3

    .line 35
    .line 36
    and-int/lit8 v3, v0, 0x7

    .line 37
    .line 38
    iget v4, v12, Lcom/google/crypto/tink/shaded/protobuf/t0;->d:I

    .line 39
    .line 40
    iget v5, v12, Lcom/google/crypto/tink/shaded/protobuf/t0;->c:I

    .line 41
    .line 42
    if-le v14, v1, :cond_1

    .line 43
    .line 44
    div-int/lit8 v2, v2, 0x3

    .line 45
    .line 46
    if-lt v14, v5, :cond_2

    .line 47
    .line 48
    if-gt v14, v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v12, v14, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->L(II)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    if-lt v14, v5, :cond_2

    .line 56
    .line 57
    if-gt v14, v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v12, v14, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->L(II)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, -0x1

    .line 65
    :goto_1
    move v4, v1

    .line 66
    if-ne v4, v7, :cond_3

    .line 67
    .line 68
    move v5, v14

    .line 69
    move/from16 v16, v15

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    goto/16 :goto_11

    .line 73
    .line 74
    :cond_3
    add-int/lit8 v1, v4, 0x1

    .line 75
    .line 76
    iget-object v2, v12, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 77
    .line 78
    aget v1, v2, v1

    .line 79
    .line 80
    const/high16 v2, 0xff00000

    .line 81
    .line 82
    and-int/2addr v2, v1

    .line 83
    ushr-int/lit8 v2, v2, 0x14

    .line 84
    .line 85
    const v5, 0xfffff

    .line 86
    .line 87
    .line 88
    and-int/2addr v5, v1

    .line 89
    int-to-long v7, v5

    .line 90
    const/16 v5, 0x11

    .line 91
    .line 92
    move/from16 p3, v14

    .line 93
    .line 94
    const/4 v14, 0x2

    .line 95
    if-gt v2, v5, :cond_9

    .line 96
    .line 97
    const/4 v5, 0x1

    .line 98
    packed-switch v2, :pswitch_data_0

    .line 99
    .line 100
    .line 101
    goto/16 :goto_e

    .line 102
    .line 103
    :pswitch_0
    if-nez v3, :cond_c

    .line 104
    .line 105
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iget-wide v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 110
    .line 111
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j;->c(J)J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    move v15, v0

    .line 116
    move v14, v4

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :pswitch_1
    if-nez v3, :cond_4

    .line 120
    .line 121
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 126
    .line 127
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/j;->b(I)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    move v14, v4

    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :pswitch_2
    if-nez v3, :cond_4

    .line 135
    .line 136
    move v14, v4

    .line 137
    goto/16 :goto_6

    .line 138
    .line 139
    :cond_4
    move v14, v4

    .line 140
    goto/16 :goto_b

    .line 141
    .line 142
    :pswitch_3
    if-ne v3, v14, :cond_c

    .line 143
    .line 144
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->b([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    goto :goto_2

    .line 149
    :pswitch_4
    if-ne v3, v14, :cond_c

    .line 150
    .line 151
    invoke-virtual {v12, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0, v10, v15, v9, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->o(Lcom/google/crypto/tink/shaded/protobuf/e1;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {v6, v13, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-nez v1, :cond_5

    .line 164
    .line 165
    :goto_2
    iget-object v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    iget-object v2, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->c:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    goto :goto_3

    .line 175
    :pswitch_5
    if-ne v3, v14, :cond_c

    .line 176
    .line 177
    const/high16 v0, 0x20000000

    .line 178
    .line 179
    and-int/2addr v0, v1

    .line 180
    if-nez v0, :cond_6

    .line 181
    .line 182
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->B([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->E([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    goto :goto_2

    .line 192
    :goto_3
    invoke-virtual {v6, v13, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :pswitch_6
    if-nez v3, :cond_c

    .line 197
    .line 198
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    iget-wide v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 203
    .line 204
    const-wide/16 v14, 0x0

    .line 205
    .line 206
    cmp-long v3, v1, v14

    .line 207
    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    const/4 v5, 0x0

    .line 212
    :goto_4
    invoke-static {v13, v7, v8, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->p(Ljava/lang/Object;JZ)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :pswitch_7
    const/4 v1, 0x5

    .line 217
    if-ne v3, v1, :cond_c

    .line 218
    .line 219
    invoke-static {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/e;->g(I[B)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    invoke-virtual {v6, v13, v7, v8, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 224
    .line 225
    .line 226
    add-int/lit8 v0, v15, 0x4

    .line 227
    .line 228
    :goto_5
    move/from16 v5, p3

    .line 229
    .line 230
    goto/16 :goto_13

    .line 231
    .line 232
    :pswitch_8
    if-ne v3, v5, :cond_c

    .line 233
    .line 234
    invoke-static {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/e;->i(I[B)J

    .line 235
    .line 236
    .line 237
    move-result-wide v16

    .line 238
    move-object v0, v6

    .line 239
    move-object/from16 v1, p1

    .line 240
    .line 241
    move-wide v2, v7

    .line 242
    move v14, v4

    .line 243
    move-wide/from16 v4, v16

    .line 244
    .line 245
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 246
    .line 247
    .line 248
    goto :goto_9

    .line 249
    :pswitch_9
    move v14, v4

    .line 250
    if-nez v3, :cond_8

    .line 251
    .line 252
    :goto_6
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iget v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 257
    .line 258
    :goto_7
    invoke-virtual {v6, v13, v7, v8, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 259
    .line 260
    .line 261
    goto :goto_a

    .line 262
    :pswitch_a
    move v14, v4

    .line 263
    if-nez v3, :cond_8

    .line 264
    .line 265
    invoke-static {v10, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/e;->J([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    iget-wide v1, v11, Lcom/google/crypto/tink/shaded/protobuf/e$a;->b:J

    .line 270
    .line 271
    move v15, v0

    .line 272
    :goto_8
    move-wide v4, v1

    .line 273
    move-object v0, v6

    .line 274
    move-object/from16 v1, p1

    .line 275
    .line 276
    move-wide v2, v7

    .line 277
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 278
    .line 279
    .line 280
    move v0, v15

    .line 281
    goto :goto_a

    .line 282
    :pswitch_b
    move v14, v4

    .line 283
    const/4 v1, 0x5

    .line 284
    if-ne v3, v1, :cond_8

    .line 285
    .line 286
    invoke-static {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/e;->k(I[B)F

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-static {v13, v7, v8, v0}, Lcom/google/crypto/tink/shaded/protobuf/n1;->u(Ljava/lang/Object;JF)V

    .line 291
    .line 292
    .line 293
    add-int/lit8 v0, v15, 0x4

    .line 294
    .line 295
    goto :goto_a

    .line 296
    :pswitch_c
    move v14, v4

    .line 297
    if-ne v3, v5, :cond_8

    .line 298
    .line 299
    invoke-static {v15, v10}, Lcom/google/crypto/tink/shaded/protobuf/e;->d(I[B)D

    .line 300
    .line 301
    .line 302
    move-result-wide v0

    .line 303
    invoke-static {v13, v7, v8, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->t(Ljava/lang/Object;JD)V

    .line 304
    .line 305
    .line 306
    :goto_9
    add-int/lit8 v0, v15, 0x8

    .line 307
    .line 308
    :goto_a
    move/from16 v5, p3

    .line 309
    .line 310
    move v2, v14

    .line 311
    goto/16 :goto_14

    .line 312
    .line 313
    :cond_8
    :goto_b
    move/from16 v5, p3

    .line 314
    .line 315
    move v4, v14

    .line 316
    :goto_c
    move v1, v15

    .line 317
    goto :goto_f

    .line 318
    :cond_9
    const/16 v5, 0x1b

    .line 319
    .line 320
    if-ne v2, v5, :cond_d

    .line 321
    .line 322
    if-ne v3, v14, :cond_c

    .line 323
    .line 324
    invoke-virtual {v6, v13, v7, v8}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 329
    .line 330
    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->o0()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_b

    .line 335
    .line 336
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-nez v2, :cond_a

    .line 341
    .line 342
    const/16 v2, 0xa

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :cond_a
    mul-int/lit8 v2, v2, 0x2

    .line 346
    .line 347
    :goto_d
    invoke-interface {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->F(I)Lcom/google/crypto/tink/shaded/protobuf/z$c;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v6, v13, v7, v8, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 352
    .line 353
    .line 354
    :cond_b
    move-object/from16 v19, v1

    .line 355
    .line 356
    invoke-virtual {v12, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    move/from16 v5, p3

    .line 361
    .line 362
    move v1, v15

    .line 363
    move v15, v0

    .line 364
    move-object/from16 v16, p2

    .line 365
    .line 366
    move/from16 v17, v1

    .line 367
    .line 368
    move/from16 v18, p4

    .line 369
    .line 370
    move-object/from16 v20, p5

    .line 371
    .line 372
    invoke-static/range {v14 .. v20}, Lcom/google/crypto/tink/shaded/protobuf/e;->p(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    goto/16 :goto_13

    .line 377
    .line 378
    :cond_c
    :goto_e
    move/from16 v5, p3

    .line 379
    .line 380
    goto :goto_c

    .line 381
    :goto_f
    move v9, v1

    .line 382
    goto :goto_10

    .line 383
    :cond_d
    move/from16 v5, p3

    .line 384
    .line 385
    move v9, v15

    .line 386
    const/16 v10, 0x31

    .line 387
    .line 388
    if-gt v2, v10, :cond_e

    .line 389
    .line 390
    int-to-long v10, v1

    .line 391
    move-object/from16 v14, p0

    .line 392
    .line 393
    move-object/from16 v15, p1

    .line 394
    .line 395
    move-object/from16 v16, p2

    .line 396
    .line 397
    move/from16 v17, v9

    .line 398
    .line 399
    move/from16 v18, p4

    .line 400
    .line 401
    move/from16 v19, v0

    .line 402
    .line 403
    move/from16 v20, v5

    .line 404
    .line 405
    move/from16 v21, v3

    .line 406
    .line 407
    move/from16 v22, v4

    .line 408
    .line 409
    move-wide/from16 v23, v10

    .line 410
    .line 411
    move/from16 v25, v2

    .line 412
    .line 413
    move-wide/from16 v26, v7

    .line 414
    .line 415
    move-object/from16 v28, p5

    .line 416
    .line 417
    invoke-virtual/range {v14 .. v28}, Lcom/google/crypto/tink/shaded/protobuf/t0;->D(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-eq v1, v9, :cond_11

    .line 422
    .line 423
    goto :goto_12

    .line 424
    :cond_e
    const/16 v10, 0x32

    .line 425
    .line 426
    if-ne v2, v10, :cond_10

    .line 427
    .line 428
    if-eq v3, v14, :cond_f

    .line 429
    .line 430
    :goto_10
    move/from16 v16, v9

    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_f
    move-object/from16 v14, p0

    .line 434
    .line 435
    move-object/from16 v15, p1

    .line 436
    .line 437
    move-object/from16 v16, p2

    .line 438
    .line 439
    move/from16 v17, v9

    .line 440
    .line 441
    move/from16 v18, p4

    .line 442
    .line 443
    move/from16 v19, v4

    .line 444
    .line 445
    move-wide/from16 v20, v7

    .line 446
    .line 447
    move-object/from16 v22, p5

    .line 448
    .line 449
    invoke-virtual/range {v14 .. v22}, Lcom/google/crypto/tink/shaded/protobuf/t0;->z(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/e$a;)V

    .line 450
    .line 451
    .line 452
    const/4 v0, 0x0

    .line 453
    throw v0

    .line 454
    :cond_10
    move-object/from16 v14, p0

    .line 455
    .line 456
    move-object/from16 v15, p1

    .line 457
    .line 458
    move-object/from16 v16, p2

    .line 459
    .line 460
    move/from16 v17, v9

    .line 461
    .line 462
    move/from16 v18, p4

    .line 463
    .line 464
    move/from16 v19, v0

    .line 465
    .line 466
    move/from16 v20, v5

    .line 467
    .line 468
    move/from16 v21, v3

    .line 469
    .line 470
    move/from16 v22, v1

    .line 471
    .line 472
    move/from16 v23, v2

    .line 473
    .line 474
    move-wide/from16 v24, v7

    .line 475
    .line 476
    move/from16 v26, v4

    .line 477
    .line 478
    move-object/from16 v27, p5

    .line 479
    .line 480
    invoke-virtual/range {v14 .. v27}, Lcom/google/crypto/tink/shaded/protobuf/t0;->A(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    if-eq v1, v9, :cond_11

    .line 485
    .line 486
    goto :goto_12

    .line 487
    :cond_11
    move/from16 v16, v1

    .line 488
    .line 489
    :goto_11
    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->p(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 490
    .line 491
    .line 492
    move-result-object v18

    .line 493
    move v14, v0

    .line 494
    move-object/from16 v15, p2

    .line 495
    .line 496
    move/from16 v17, p4

    .line 497
    .line 498
    move-object/from16 v19, p5

    .line 499
    .line 500
    invoke-static/range {v14 .. v19}, Lcom/google/crypto/tink/shaded/protobuf/e;->F(I[BIILcom/google/crypto/tink/shaded/protobuf/k1;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    :goto_12
    move-object/from16 v12, p0

    .line 505
    .line 506
    move-object/from16 v13, p1

    .line 507
    .line 508
    move-object/from16 v10, p2

    .line 509
    .line 510
    move/from16 v9, p4

    .line 511
    .line 512
    move-object/from16 v11, p5

    .line 513
    .line 514
    move v0, v1

    .line 515
    :goto_13
    move v2, v4

    .line 516
    :goto_14
    move v1, v5

    .line 517
    const/4 v7, -0x1

    .line 518
    const/4 v8, 0x0

    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_12
    if-ne v0, v9, :cond_13

    .line 522
    .line 523
    return-void

    .line 524
    :cond_13
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->e()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    throw v0

    .line 529
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

.method public final D(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/e$a;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v2, p7

    move/from16 v8, p8

    move-wide/from16 v5, p12

    move-object/from16 v7, p14

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    invoke-virtual {v9, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/crypto/tink/shaded/protobuf/z$c;

    invoke-interface {v10}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->o0()Z

    move-result v11

    const/4 v12, 0x2

    if-nez v11, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_0

    const/16 v11, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v11, v11, 0x2

    :goto_0
    invoke-interface {v10, v11}, Lcom/google/crypto/tink/shaded/protobuf/z$c;->F(I)Lcom/google/crypto/tink/shaded/protobuf/z$c;

    move-result-object v10

    invoke-virtual {v9, p1, v5, v6, v10}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    const/4 v5, 0x5

    const/4 v6, 0x1

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const/4 v1, 0x3

    if-ne v2, v1, :cond_f

    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/e;->n(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_1
    if-ne v2, v12, :cond_2

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->w([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_2
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->A(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_2
    if-ne v2, v12, :cond_3

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->v([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_3
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->z(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_3
    if-ne v2, v12, :cond_4

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->x([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_f

    move/from16 v2, p5

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v10

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->I(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v2

    :goto_1
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/x;

    iget-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/k1;->f:Lcom/google/crypto/tink/shaded/protobuf/k1;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    :cond_5
    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    move-result-object v4

    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    move/from16 v6, p6

    invoke-static {v6, v10, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->z(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/z$b;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/k1;

    if-eqz v3, :cond_6

    iput-object v3, v1, Lcom/google/crypto/tink/shaded/protobuf/x;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/k1;

    :cond_6
    move v1, v2

    goto/16 :goto_3

    :pswitch_4
    if-ne v2, v12, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->c(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_5
    if-ne v2, v12, :cond_f

    invoke-virtual {p0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v10

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/e;->p(Lcom/google/crypto/tink/shaded/protobuf/e1;I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_6
    if-ne v2, v12, :cond_f

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    const-wide/16 v5, 0x0

    cmp-long v8, v1, v5

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    if-nez v8, :cond_7

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->C(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_7
    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->D(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_7
    if-ne v2, v12, :cond_8

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->q([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_8
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->a(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_8
    if-ne v2, v12, :cond_9

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->s([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_9
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->h(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_9
    if-ne v2, v12, :cond_a

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->t([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_a
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->j(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :pswitch_a
    if-ne v2, v12, :cond_b

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->x([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->I(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :pswitch_b
    if-ne v2, v12, :cond_c

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->y([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :cond_c
    if-nez v2, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->K(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :pswitch_c
    if-ne v2, v12, :cond_d

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->u([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :cond_d
    if-ne v2, v5, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->l(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :pswitch_d
    if-ne v2, v12, :cond_e

    invoke-static {p2, v4, v10, v7}, Lcom/google/crypto/tink/shaded/protobuf/e;->r([BILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v2, v6, :cond_f

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v10

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/crypto/tink/shaded/protobuf/e;->e(I[BIILcom/google/crypto/tink/shaded/protobuf/z$c;Lcom/google/crypto/tink/shaded/protobuf/e$a;)I

    move-result v1

    goto :goto_3

    :cond_f
    :goto_2
    move v1, v4

    :goto_3
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

.method public final E(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            "Lcom/google/crypto/tink/shaded/protobuf/e1<",
            "TE;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    invoke-virtual {v0, p2, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p4, p1, p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/d1;->J(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V

    return-void
.end method

.method public final F(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            "Lcom/google/crypto/tink/shaded/protobuf/e1<",
            "TE;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    iget-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1, p4, p5}, Lcom/google/crypto/tink/shaded/protobuf/d1;->g(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V

    return-void
.end method

.method public final G(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    if-eqz v0, :cond_1

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/d1;->L()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->g:Z

    and-int/2addr p2, v1

    if-eqz v0, :cond_2

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/d1;->y()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/d1;->C()Lcom/google/crypto/tink/shaded/protobuf/i;

    move-result-object p2

    :goto_1
    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final H(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0xfffff

    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    and-int/2addr p2, v1

    if-eqz v0, :cond_1

    int-to-long v0, p2

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->B(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    int-to-long v0, p2

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->A(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public final J(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

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
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-static {v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    or-int/2addr p1, v0

    .line 27
    invoke-static {p1, v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final K(IILjava/lang/Object;)V
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-static {p1, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final L(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    div-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    add-int/lit8 v1, v1, -0x1

    .line 7
    .line 8
    :goto_0
    if-gt p2, v1, :cond_2

    .line 9
    .line 10
    add-int v2, v1, p2

    .line 11
    .line 12
    ushr-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    mul-int/lit8 v3, v2, 0x3

    .line 15
    .line 16
    aget v4, v0, v3

    .line 17
    .line 18
    if-ne p1, v4, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    if-ge p1, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v2, v2, -0x1

    .line 24
    .line 25
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    move p2, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 p1, -0x1

    .line 32
    return p1
.end method

.method public final M(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final N(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
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
    iget-boolean v4, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 8
    .line 9
    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->i()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->l()Ljava/util/Iterator;

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
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

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
    iget-boolean v9, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    .line 56
    .line 57
    const v16, 0xfffff

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

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
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->a(Ljava/util/Map$Entry;)V

    .line 109
    .line 110
    .line 111
    if-ltz v14, :cond_4

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->j(Ljava/util/Map$Entry;)V

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
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->h(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :pswitch_1
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_5

    .line 163
    .line 164
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v7

    .line 168
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->p(IJ)V

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :pswitch_2
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_5

    .line 177
    .line 178
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->o(II)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :pswitch_3
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_5

    .line 191
    .line 192
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->n(IJ)V

    .line 197
    .line 198
    .line 199
    goto :goto_3

    .line 200
    :pswitch_4
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_5

    .line 205
    .line 206
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->m(II)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :pswitch_5
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    if-eqz v3, :cond_5

    .line 219
    .line 220
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->d(II)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :pswitch_6
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_5

    .line 233
    .line 234
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->q(II)V

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :pswitch_7
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 253
    .line 254
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :pswitch_8
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->k(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_3

    .line 276
    .line 277
    :pswitch_9
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v14, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->P(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_3

    .line 291
    .line 292
    :pswitch_a
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_5

    .line 297
    .line 298
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->a(IZ)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_3

    .line 312
    .line 313
    :pswitch_b
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    if-eqz v3, :cond_5

    .line 318
    .line 319
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->e(II)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_3

    .line 327
    .line 328
    :pswitch_c
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v3

    .line 332
    if-eqz v3, :cond_5

    .line 333
    .line 334
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 335
    .line 336
    .line 337
    move-result-wide v7

    .line 338
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->f(IJ)V

    .line 339
    .line 340
    .line 341
    goto/16 :goto_3

    .line 342
    .line 343
    :pswitch_d
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    if-eqz v3, :cond_5

    .line 348
    .line 349
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(II)V

    .line 354
    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_e
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    if-eqz v3, :cond_5

    .line 363
    .line 364
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v7

    .line 368
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->r(IJ)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_3

    .line 372
    .line 373
    :pswitch_f
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-eqz v3, :cond_5

    .line 378
    .line 379
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 380
    .line 381
    .line 382
    move-result-wide v7

    .line 383
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->j(IJ)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_3

    .line 387
    .line 388
    :pswitch_10
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v3

    .line 392
    if-eqz v3, :cond_5

    .line 393
    .line 394
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v3, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->g(FI)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_3

    .line 408
    .line 409
    :pswitch_11
    invoke-virtual {v0, v14, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result v3

    .line 413
    if-eqz v3, :cond_5

    .line 414
    .line 415
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->c(ID)V

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
    invoke-virtual {v0, v2, v14, v3, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->O(Lcom/google/crypto/tink/shaded/protobuf/m;ILjava/lang/Object;I)V

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-static {v7, v3, v2, v8}, Lcom/google/crypto/tink/shaded/protobuf/f1;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Lcom/google/crypto/tink/shaded/protobuf/e1;)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->V(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 758
    .line 759
    .line 760
    move-result-object v8

    .line 761
    invoke-static {v7, v3, v2, v8}, Lcom/google/crypto/tink/shaded/protobuf/f1;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Lcom/google/crypto/tink/shaded/protobuf/e1;)V

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
    invoke-static {v7, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->V(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v7, v3, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 900
    .line 901
    .line 902
    move-result-object v7

    .line 903
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->h(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->p(IJ)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->o(II)V

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->n(IJ)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->m(II)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->d(II)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->q(II)V

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
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 995
    .line 996
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

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
    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v7

    .line 1013
    invoke-virtual {v2, v14, v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->k(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

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
    invoke-static {v14, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->P(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v3

    .line 1039
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->a(IZ)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->e(II)V

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->f(IJ)V

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
    invoke-virtual {v2, v14, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(II)V

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->r(IJ)V

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
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->j(IJ)V

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
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 1109
    .line 1110
    .line 1111
    move-result v3

    .line 1112
    invoke-virtual {v2, v3, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->g(FI)V

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
    invoke-static {v8, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 1122
    .line 1123
    .line 1124
    move-result-wide v7

    .line 1125
    invoke-virtual {v2, v14, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/m;->c(ID)V

    .line 1126
    .line 1127
    .line 1128
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x3

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
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->j(Ljava/util/Map$Entry;)V

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
    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 1160
    .line 1161
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 1162
    .line 1163
    .line 1164
    move-result-object v1

    .line 1165
    invoke-virtual {v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->s(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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

.method public final O(Lcom/google/crypto/tink/shaded/protobuf/m;ILjava/lang/Object;I)V
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
    invoke-virtual {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 8
    .line 9
    invoke-interface {v0, p4}, Lcom/google/crypto/tink/shaded/protobuf/l0;->c(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p3}, Lcom/google/crypto/tink/shaded/protobuf/l0;->h(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/m;->a:Lcom/google/crypto/tink/shaded/protobuf/l;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/google/crypto/tink/shaded/protobuf/k0;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p4

    .line 33
    if-nez p4, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    check-cast p3, Ljava/util/Map$Entry;

    .line 41
    .line 42
    const/4 p4, 0x2

    .line 43
    invoke-virtual {p1, p2, p4}, Lcom/google/crypto/tink/shaded/protobuf/l;->L(II)V

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

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
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
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-ge v0, v2, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const v3, 0xfffff

    .line 15
    .line 16
    .line 17
    and-int v4, v2, v3

    .line 18
    .line 19
    int-to-long v4, v4

    .line 20
    aget v6, v1, v0

    .line 21
    .line 22
    const/high16 v7, 0xff00000

    .line 23
    .line 24
    and-int/2addr v2, v7

    .line 25
    ushr-int/lit8 v2, v2, 0x14

    .line 26
    .line 27
    packed-switch v2, :pswitch_data_0

    .line 28
    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :pswitch_0
    invoke-virtual {p0, v6, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    aget v1, v1, v0

    .line 44
    .line 45
    and-int/2addr v2, v3

    .line 46
    int-to-long v2, v2

    .line 47
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_0

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_0
    invoke-static {v2, v3, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v2, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    if-eqz v5, :cond_4

    .line 73
    .line 74
    :goto_1
    invoke-static {v2, v3, p1, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->K(IILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto/16 :goto_8

    .line 81
    .line 82
    :pswitch_2
    invoke-virtual {p0, v6, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    :goto_2
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {v4, v5, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v6, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->K(IILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :pswitch_3
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/f1;->a:Ljava/lang/Class;

    .line 101
    .line 102
    invoke-static {v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 111
    .line 112
    invoke-interface {v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v4, v5, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :pswitch_4
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    .line 122
    .line 123
    invoke-virtual {v1, v4, v5, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/g0;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto/16 :goto_8

    .line 127
    .line 128
    :pswitch_5
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :pswitch_6
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_4

    .line 141
    .line 142
    goto/16 :goto_5

    .line 143
    .line 144
    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_4

    .line 149
    .line 150
    goto/16 :goto_6

    .line 151
    .line 152
    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_4

    .line 157
    .line 158
    goto/16 :goto_5

    .line 159
    .line 160
    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    goto/16 :goto_5

    .line 167
    .line 168
    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_4

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :pswitch_c
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    and-int/2addr v1, v3

    .line 187
    int-to-long v1, v1

    .line 188
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    if-nez v3, :cond_2

    .line 193
    .line 194
    goto/16 :goto_8

    .line 195
    .line 196
    :cond_2
    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-static {v1, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    if-eqz v3, :cond_3

    .line 205
    .line 206
    if-eqz v4, :cond_3

    .line 207
    .line 208
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    goto :goto_3

    .line 213
    :cond_3
    if-eqz v4, :cond_4

    .line 214
    .line 215
    :goto_3
    invoke-static {v1, v2, p1, v4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->J(ILjava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_8

    .line 222
    .line 223
    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_4

    .line 228
    .line 229
    :goto_4
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-static {v4, v5, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_7

    .line 237
    :pswitch_e
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_4

    .line 242
    .line 243
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-static {p1, v4, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->p(Ljava/lang/Object;JZ)V

    .line 248
    .line 249
    .line 250
    goto :goto_7

    .line 251
    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    if-eqz v1, :cond_4

    .line 256
    .line 257
    goto :goto_5

    .line 258
    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    if-eqz v1, :cond_4

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_4

    .line 270
    .line 271
    :goto_5
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 272
    .line 273
    .line 274
    move-result v1

    .line 275
    invoke-static {v1, v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    goto :goto_7

    .line 279
    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_4

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-eqz v1, :cond_4

    .line 291
    .line 292
    :goto_6
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->w(Ljava/lang/Object;JJ)V

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_4

    .line 305
    .line 306
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 307
    .line 308
    .line 309
    move-result v1

    .line 310
    invoke-static {p1, v4, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->u(Ljava/lang/Object;JF)V

    .line 311
    .line 312
    .line 313
    goto :goto_7

    .line 314
    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_4

    .line 319
    .line 320
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 321
    .line 322
    .line 323
    move-result-wide v1

    .line 324
    invoke-static {p1, v4, v5, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->t(Ljava/lang/Object;JD)V

    .line 325
    .line 326
    .line 327
    :goto_7
    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->J(ILjava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_4
    :goto_8
    add-int/lit8 v0, v0, 0x3

    .line 331
    .line 332
    goto/16 :goto_0

    .line 333
    .line 334
    :cond_5
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/f1;->a:Ljava/lang/Class;

    .line 335
    .line 336
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 337
    .line 338
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 354
    .line 355
    if-eqz v0, :cond_6

    .line 356
    .line 357
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 358
    .line 359
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->B(Lcom/google/crypto/tink/shaded/protobuf/q;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_6
    return-void

    .line 363
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

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

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
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v9

    .line 39
    invoke-static {v5, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-ne v9, v5, :cond_0

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_1
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-eqz v5, :cond_1

    .line 63
    .line 64
    goto/16 :goto_2

    .line 65
    .line 66
    :pswitch_1
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :pswitch_2
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_1

    .line 85
    .line 86
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :pswitch_3
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_1

    .line 107
    .line 108
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v7

    .line 116
    cmp-long v9, v5, v7

    .line 117
    .line 118
    if-nez v9, :cond_1

    .line 119
    .line 120
    goto/16 :goto_2

    .line 121
    .line 122
    :pswitch_4
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-eqz v5, :cond_1

    .line 127
    .line 128
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    if-ne v5, v6, :cond_1

    .line 137
    .line 138
    goto/16 :goto_2

    .line 139
    .line 140
    :pswitch_5
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_1

    .line 145
    .line 146
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v7

    .line 154
    cmp-long v9, v5, v7

    .line 155
    .line 156
    if-nez v9, :cond_1

    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :pswitch_6
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-eqz v5, :cond_1

    .line 165
    .line 166
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-ne v5, v6, :cond_1

    .line 175
    .line 176
    goto/16 :goto_2

    .line 177
    .line 178
    :pswitch_7
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_1

    .line 183
    .line 184
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result v6

    .line 192
    if-ne v5, v6, :cond_1

    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :pswitch_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-eqz v5, :cond_1

    .line 201
    .line 202
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-ne v5, v6, :cond_1

    .line 211
    .line 212
    goto/16 :goto_2

    .line 213
    .line 214
    :pswitch_9
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_1

    .line 219
    .line 220
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_1

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :pswitch_a
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_1

    .line 241
    .line 242
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v6

    .line 250
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v5

    .line 254
    if-eqz v5, :cond_1

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :pswitch_b
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    if-eqz v5, :cond_1

    .line 263
    .line 264
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v6

    .line 272
    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/f1;->C(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    if-eqz v5, :cond_1

    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :pswitch_c
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_1

    .line 285
    .line 286
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-ne v5, v6, :cond_1

    .line 295
    .line 296
    goto/16 :goto_2

    .line 297
    .line 298
    :pswitch_d
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    if-eqz v5, :cond_1

    .line 303
    .line 304
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 305
    .line 306
    .line 307
    move-result v5

    .line 308
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 309
    .line 310
    .line 311
    move-result v6

    .line 312
    if-ne v5, v6, :cond_1

    .line 313
    .line 314
    goto/16 :goto_2

    .line 315
    .line 316
    :pswitch_e
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    if-eqz v5, :cond_1

    .line 321
    .line 322
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 323
    .line 324
    .line 325
    move-result-wide v5

    .line 326
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 327
    .line 328
    .line 329
    move-result-wide v7

    .line 330
    cmp-long v9, v5, v7

    .line 331
    .line 332
    if-nez v9, :cond_1

    .line 333
    .line 334
    goto/16 :goto_2

    .line 335
    .line 336
    :pswitch_f
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v5

    .line 340
    if-eqz v5, :cond_1

    .line 341
    .line 342
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 343
    .line 344
    .line 345
    move-result v5

    .line 346
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 347
    .line 348
    .line 349
    move-result v6

    .line 350
    if-ne v5, v6, :cond_1

    .line 351
    .line 352
    goto :goto_2

    .line 353
    :pswitch_10
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    if-eqz v5, :cond_1

    .line 358
    .line 359
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 360
    .line 361
    .line 362
    move-result-wide v5

    .line 363
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v7

    .line 367
    cmp-long v9, v5, v7

    .line 368
    .line 369
    if-nez v9, :cond_1

    .line 370
    .line 371
    goto :goto_2

    .line 372
    :pswitch_11
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-eqz v5, :cond_1

    .line 377
    .line 378
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 379
    .line 380
    .line 381
    move-result-wide v5

    .line 382
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 383
    .line 384
    .line 385
    move-result-wide v7

    .line 386
    cmp-long v9, v5, v7

    .line 387
    .line 388
    if-nez v9, :cond_1

    .line 389
    .line 390
    goto :goto_2

    .line 391
    :pswitch_12
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-eqz v5, :cond_1

    .line 396
    .line 397
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 406
    .line 407
    .line 408
    move-result v6

    .line 409
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    if-ne v5, v6, :cond_1

    .line 414
    .line 415
    goto :goto_2

    .line 416
    :pswitch_13
    invoke-virtual {p0, v3, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->k(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v5

    .line 420
    if-eqz v5, :cond_1

    .line 421
    .line 422
    invoke-static {v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 423
    .line 424
    .line 425
    move-result-wide v5

    .line 426
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 427
    .line 428
    .line 429
    move-result-wide v5

    .line 430
    invoke-static {v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 431
    .line 432
    .line 433
    move-result-wide v7

    .line 434
    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 435
    .line 436
    .line 437
    move-result-wide v7

    .line 438
    cmp-long v9, v5, v7

    .line 439
    .line 440
    if-nez v9, :cond_1

    .line 441
    .line 442
    goto :goto_2

    .line 443
    :cond_1
    const/4 v4, 0x0

    .line 444
    :goto_2
    if-nez v4, :cond_2

    .line 445
    .line 446
    return v2

    .line 447
    :cond_2
    add-int/lit8 v3, v3, 0x3

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 452
    .line 453
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_4

    .line 466
    .line 467
    return v2

    .line 468
    :cond_4
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 469
    .line 470
    if-eqz v0, :cond_5

    .line 471
    .line 472
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 473
    .line 474
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 479
    .line 480
    .line 481
    move-result-object p2

    .line 482
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result p1

    .line 486
    return p1

    .line 487
    :cond_5
    return v4

    .line 488
    nop

    .line 489
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

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->m:Lcom/google/crypto/tink/shaded/protobuf/v0;

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->e:Lcom/google/crypto/tink/shaded/protobuf/q0;

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/v0;->a(Lcom/google/crypto/tink/shaded/protobuf/q0;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    :goto_1
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    goto/16 :goto_d

    .line 158
    .line 159
    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v4

    .line 178
    goto/16 :goto_c

    .line 179
    .line 180
    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    :goto_9
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/z;->a(Z)I

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

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
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

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
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/z;->b(J)I

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
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/k1;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    add-int/2addr v0, v3

    .line 335
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 336
    .line 337
    if-eqz v1, :cond_3

    .line 338
    .line 339
    mul-int/lit8 v0, v0, 0x35

    .line 340
    .line 341
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 342
    .line 343
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->hashCode()I

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

.method public final e(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->k:I

    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->j:[I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->l:I

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    invoke-interface {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/l0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v1

    :goto_2
    if-ge v2, v0, :cond_2

    aget v3, v1, v2

    int-to-long v3, v3

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    invoke-virtual {v5, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/g0;->a(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->j(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->f(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->k:I

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    if-ge v2, v4, :cond_11

    .line 9
    .line 10
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->j:[I

    .line 11
    .line 12
    aget v4, v4, v2

    .line 13
    .line 14
    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 15
    .line 16
    aget v7, v6, v4

    .line 17
    .line 18
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 19
    .line 20
    .line 21
    move-result v8

    .line 22
    const v9, 0xfffff

    .line 23
    .line 24
    .line 25
    iget-boolean v10, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    .line 26
    .line 27
    if-nez v10, :cond_0

    .line 28
    .line 29
    add-int/lit8 v11, v4, 0x2

    .line 30
    .line 31
    aget v6, v6, v11

    .line 32
    .line 33
    and-int v11, v6, v9

    .line 34
    .line 35
    ushr-int/lit8 v6, v6, 0x14

    .line 36
    .line 37
    shl-int v6, v5, v6

    .line 38
    .line 39
    if-eq v11, v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 42
    .line 43
    int-to-long v12, v11

    .line 44
    invoke-virtual {v0, p1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    move v0, v11

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const/4 v6, 0x0

    .line 51
    :cond_1
    :goto_1
    const/high16 v11, 0x10000000

    .line 52
    .line 53
    and-int/2addr v11, v8

    .line 54
    if-eqz v11, :cond_2

    .line 55
    .line 56
    const/4 v11, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v11, 0x0

    .line 59
    :goto_2
    if-eqz v11, :cond_5

    .line 60
    .line 61
    if-eqz v10, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    goto :goto_3

    .line 68
    :cond_3
    and-int v11, v3, v6

    .line 69
    .line 70
    if-eqz v11, :cond_4

    .line 71
    .line 72
    const/4 v11, 0x1

    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/4 v11, 0x0

    .line 75
    :goto_3
    if-nez v11, :cond_5

    .line 76
    .line 77
    return v1

    .line 78
    :cond_5
    const/high16 v11, 0xff00000

    .line 79
    .line 80
    and-int/2addr v11, v8

    .line 81
    ushr-int/lit8 v11, v11, 0x14

    .line 82
    .line 83
    const/16 v12, 0x9

    .line 84
    .line 85
    if-eq v11, v12, :cond_d

    .line 86
    .line 87
    const/16 v12, 0x11

    .line 88
    .line 89
    if-eq v11, v12, :cond_d

    .line 90
    .line 91
    const/16 v6, 0x1b

    .line 92
    .line 93
    if-eq v11, v6, :cond_9

    .line 94
    .line 95
    const/16 v6, 0x3c

    .line 96
    .line 97
    if-eq v11, v6, :cond_8

    .line 98
    .line 99
    const/16 v6, 0x44

    .line 100
    .line 101
    if-eq v11, v6, :cond_8

    .line 102
    .line 103
    const/16 v6, 0x31

    .line 104
    .line 105
    if-eq v11, v6, :cond_9

    .line 106
    .line 107
    const/16 v5, 0x32

    .line 108
    .line 109
    if-eq v11, v5, :cond_6

    .line 110
    .line 111
    goto/16 :goto_7

    .line 112
    .line 113
    :cond_6
    and-int v5, v8, v9

    .line 114
    .line 115
    int-to-long v5, v5

    .line 116
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 121
    .line 122
    invoke-interface {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/l0;->h(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-eqz v5, :cond_7

    .line 131
    .line 132
    goto/16 :goto_7

    .line 133
    .line 134
    :cond_7
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-interface {v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/l0;->c(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 p1, 0x0

    .line 142
    throw p1

    .line 143
    :cond_8
    invoke-virtual {p0, v7, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    if-eqz v5, :cond_10

    .line 148
    .line 149
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    and-int v5, v8, v9

    .line 154
    .line 155
    int-to-long v5, v5

    .line 156
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/e1;->f(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-nez v4, :cond_10

    .line 165
    .line 166
    return v1

    .line 167
    :cond_9
    and-int v6, v8, v9

    .line 168
    .line 169
    int-to-long v6, v6

    .line 170
    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    check-cast v6, Ljava/util/List;

    .line 175
    .line 176
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    if-eqz v7, :cond_a

    .line 181
    .line 182
    goto :goto_5

    .line 183
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    const/4 v7, 0x0

    .line 188
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-ge v7, v8, :cond_c

    .line 193
    .line 194
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-interface {v4, v8}, Lcom/google/crypto/tink/shaded/protobuf/e1;->f(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-nez v8, :cond_b

    .line 203
    .line 204
    const/4 v5, 0x0

    .line 205
    goto :goto_5

    .line 206
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_c
    :goto_5
    if-nez v5, :cond_10

    .line 210
    .line 211
    return v1

    .line 212
    :cond_d
    if-eqz v10, :cond_e

    .line 213
    .line 214
    invoke-virtual {p0, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    goto :goto_6

    .line 219
    :cond_e
    and-int/2addr v6, v3

    .line 220
    if-eqz v6, :cond_f

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_f
    const/4 v5, 0x0

    .line 224
    :goto_6
    if-eqz v5, :cond_10

    .line 225
    .line 226
    invoke-virtual {p0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    and-int v5, v8, v9

    .line 231
    .line 232
    int-to-long v5, v5

    .line 233
    invoke-static {v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-interface {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/e1;->f(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v4

    .line 241
    if-nez v4, :cond_10

    .line 242
    .line 243
    return v1

    .line 244
    :cond_10
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 245
    .line 246
    goto/16 :goto_0

    .line 247
    .line 248
    :cond_11
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 249
    .line 250
    if-eqz v0, :cond_12

    .line 251
    .line 252
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 253
    .line 254
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/t;->j()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-nez p1, :cond_12

    .line 263
    .line 264
    return v1

    .line 265
    :cond_12
    return v5
.end method

.method public final g(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
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
    iget-boolean v3, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    .line 11
    .line 12
    if-eqz v3, :cond_8

    .line 13
    .line 14
    iget-boolean v4, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 15
    .line 16
    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->i()Z

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    if-nez v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/t;->l()Ljava/util/Iterator;

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
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

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
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->a(Ljava/util/Map$Entry;)V

    .line 59
    .line 60
    .line 61
    if-ltz v12, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->j(Ljava/util/Map$Entry;)V

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
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 110
    .line 111
    .line 112
    move-result-object v13

    .line 113
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->h(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :pswitch_1
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v13

    .line 129
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->p(IJ)V

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :pswitch_2
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->o(II)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :pswitch_3
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v13

    .line 161
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->n(IJ)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :pswitch_4
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->m(II)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :pswitch_5
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->d(II)V

    .line 194
    .line 195
    .line 196
    goto :goto_3

    .line 197
    :pswitch_6
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 206
    .line 207
    .line 208
    move-result v11

    .line 209
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->q(II)V

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :pswitch_7
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    check-cast v11, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 226
    .line 227
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_3

    .line 231
    .line 232
    :pswitch_8
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 245
    .line 246
    .line 247
    move-result-object v13

    .line 248
    invoke-virtual {v2, v12, v13, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->k(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :pswitch_9
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-static {v12, v11, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->P(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_3

    .line 269
    .line 270
    :pswitch_a
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->a(IZ)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_3

    .line 292
    .line 293
    :pswitch_b
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->e(II)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :pswitch_c
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v13

    .line 322
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->f(IJ)V

    .line 323
    .line 324
    .line 325
    goto/16 :goto_3

    .line 326
    .line 327
    :pswitch_d
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 336
    .line 337
    .line 338
    move-result v11

    .line 339
    invoke-virtual {v2, v12, v11}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(II)V

    .line 340
    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :pswitch_e
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 353
    .line 354
    .line 355
    move-result-wide v13

    .line 356
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->r(IJ)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_3

    .line 360
    .line 361
    :pswitch_f
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 370
    .line 371
    .line 372
    move-result-wide v13

    .line 373
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->j(IJ)V

    .line 374
    .line 375
    .line 376
    goto/16 :goto_3

    .line 377
    .line 378
    :pswitch_10
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/m;->g(FI)V

    .line 397
    .line 398
    .line 399
    goto/16 :goto_3

    .line 400
    .line 401
    :pswitch_11
    invoke-virtual {v0, v12, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {v2, v12, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/m;->c(ID)V

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v11

    .line 430
    invoke-virtual {v0, v2, v12, v11, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->O(Lcom/google/crypto/tink/shaded/protobuf/m;ILjava/lang/Object;I)V

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
    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v11

    .line 443
    check-cast v11, Ljava/util/List;

    .line 444
    .line 445
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 446
    .line 447
    .line 448
    move-result-object v13

    .line 449
    invoke-static {v12, v11, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/f1;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Lcom/google/crypto/tink/shaded/protobuf/e1;)V

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    check-cast v3, Ljava/util/List;

    .line 465
    .line 466
    invoke-static {v12, v3, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    check-cast v4, Ljava/util/List;

    .line 483
    .line 484
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v4

    .line 500
    check-cast v4, Ljava/util/List;

    .line 501
    .line 502
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    check-cast v4, Ljava/util/List;

    .line 519
    .line 520
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    check-cast v4, Ljava/util/List;

    .line 537
    .line 538
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    move-result-object v4

    .line 554
    check-cast v4, Ljava/util/List;

    .line 555
    .line 556
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    check-cast v4, Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v4

    .line 590
    check-cast v4, Ljava/util/List;

    .line 591
    .line 592
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    check-cast v4, Ljava/util/List;

    .line 609
    .line 610
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v4

    .line 626
    check-cast v4, Ljava/util/List;

    .line 627
    .line 628
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    check-cast v4, Ljava/util/List;

    .line 645
    .line 646
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->V(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v4

    .line 662
    check-cast v4, Ljava/util/List;

    .line 663
    .line 664
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    check-cast v4, Ljava/util/List;

    .line 681
    .line 682
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v4

    .line 698
    check-cast v4, Ljava/util/List;

    .line 699
    .line 700
    invoke-static {v3, v4, v2, v14}, Lcom/google/crypto/tink/shaded/protobuf/f1;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    check-cast v4, Ljava/util/List;

    .line 717
    .line 718
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->S(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    check-cast v4, Ljava/util/List;

    .line 735
    .line 736
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->R(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    check-cast v4, Ljava/util/List;

    .line 753
    .line 754
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->Q(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v4

    .line 770
    check-cast v4, Ljava/util/List;

    .line 771
    .line 772
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    move-result-object v4

    .line 788
    check-cast v4, Ljava/util/List;

    .line 789
    .line 790
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 803
    .line 804
    .line 805
    move-result-object v4

    .line 806
    check-cast v4, Ljava/util/List;

    .line 807
    .line 808
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->U(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v4

    .line 824
    check-cast v4, Ljava/util/List;

    .line 825
    .line 826
    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Ljava/util/List;

    .line 843
    .line 844
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 845
    .line 846
    .line 847
    move-result-object v11

    .line 848
    invoke-static {v3, v4, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/f1;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Lcom/google/crypto/tink/shaded/protobuf/e1;)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 861
    .line 862
    .line 863
    move-result-object v4

    .line 864
    check-cast v4, Ljava/util/List;

    .line 865
    .line 866
    invoke-static {v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/f1;->T(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v4

    .line 882
    check-cast v4, Ljava/util/List;

    .line 883
    .line 884
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Ljava/util/List;

    .line 901
    .line 902
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v4

    .line 918
    check-cast v4, Ljava/util/List;

    .line 919
    .line 920
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    check-cast v4, Ljava/util/List;

    .line 937
    .line 938
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    move-result-object v4

    .line 954
    check-cast v4, Ljava/util/List;

    .line 955
    .line 956
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->V(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    move-result-object v4

    .line 972
    check-cast v4, Ljava/util/List;

    .line 973
    .line 974
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v4

    .line 990
    check-cast v4, Ljava/util/List;

    .line 991
    .line 992
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-static {v11, v12, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    check-cast v4, Ljava/util/List;

    .line 1009
    .line 1010
    invoke-static {v3, v4, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/f1;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/m;Z)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v4

    .line 1034
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->h(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 1051
    .line 1052
    .line 1053
    move-result-wide v3

    .line 1054
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->p(IJ)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1071
    .line 1072
    .line 1073
    move-result v3

    .line 1074
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->o(II)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 1091
    .line 1092
    .line 1093
    move-result-wide v3

    .line 1094
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->n(IJ)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1111
    .line 1112
    .line 1113
    move-result v3

    .line 1114
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->m(II)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1131
    .line 1132
    .line 1133
    move-result v3

    .line 1134
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->d(II)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->q(II)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v3

    .line 1174
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 1175
    .line 1176
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->b(ILcom/google/crypto/tink/shaded/protobuf/i;)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v3

    .line 1196
    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v4

    .line 1200
    invoke-virtual {v2, v12, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->k(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    invoke-static {v12, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->P(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v3

    .line 1240
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->a(IZ)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1257
    .line 1258
    .line 1259
    move-result v3

    .line 1260
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->e(II)V

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
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 1277
    .line 1278
    .line 1279
    move-result-wide v3

    .line 1280
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->f(IJ)V

    .line 1281
    .line 1282
    .line 1283
    goto :goto_4

    .line 1284
    :pswitch_40
    move-object/from16 v16, v4

    .line 1285
    .line 1286
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 1296
    .line 1297
    .line 1298
    move-result v3

    .line 1299
    invoke-virtual {v2, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/m;->i(II)V

    .line 1300
    .line 1301
    .line 1302
    goto :goto_4

    .line 1303
    :pswitch_41
    move-object/from16 v16, v4

    .line 1304
    .line 1305
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 1315
    .line 1316
    .line 1317
    move-result-wide v3

    .line 1318
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->r(IJ)V

    .line 1319
    .line 1320
    .line 1321
    goto :goto_4

    .line 1322
    :pswitch_42
    move-object/from16 v16, v4

    .line 1323
    .line 1324
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 1334
    .line 1335
    .line 1336
    move-result-wide v3

    .line 1337
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->j(IJ)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_4

    .line 1341
    :pswitch_43
    move-object/from16 v16, v4

    .line 1342
    .line 1343
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 1353
    .line 1354
    .line 1355
    move-result v3

    .line 1356
    invoke-virtual {v2, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/m;->g(FI)V

    .line 1357
    .line 1358
    .line 1359
    goto :goto_4

    .line 1360
    :pswitch_44
    move-object/from16 v16, v4

    .line 1361
    .line 1362
    invoke-virtual {v0, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

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
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 1372
    .line 1373
    .line 1374
    move-result-wide v3

    .line 1375
    invoke-virtual {v2, v12, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/m;->c(ID)V

    .line 1376
    .line 1377
    .line 1378
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, 0x3

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
    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/q;->j(Ljava/util/Map$Entry;)V

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
    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 1408
    .line 1409
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v1

    .line 1413
    invoke-virtual {v3, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->s(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 1414
    .line 1415
    .line 1416
    goto :goto_6

    .line 1417
    :cond_8
    invoke-virtual/range {p0 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->N(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V

    .line 1418
    .line 1419
    .line 1420
    :goto_6
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

.method public final h(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/crypto/tink/shaded/protobuf/e$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/t0;->C(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/e$a;)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/t0;->B(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/p;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 1
    iget-object v12, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->j:[I

    iget v13, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->l:I

    iget v14, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->k:I

    const/4 v7, 0x0

    const/16 v16, 0x0

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->z()I

    move-result v1

    .line 2
    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->c:I

    if-lt v1, v2, :cond_1

    iget v2, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->d:I

    if-gt v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->L(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v3, v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_a

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_3

    :goto_2
    if-ge v14, v13, :cond_2

    .line 3
    aget v0, v12, v14

    invoke-virtual {v8, v9, v0, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_16

    goto/16 :goto_29

    :cond_3
    :try_start_1
    iget-boolean v2, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v3, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    if-nez v2, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v2, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->e:Lcom/google/crypto/tink/shaded/protobuf/q0;

    invoke-virtual {v3, v10, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/q;->b(Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/q0;I)Lcom/google/crypto/tink/shaded/protobuf/x$e;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    if-eqz v1, :cond_6

    if-nez v16, :cond_5

    :try_start_3
    invoke-virtual {v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/q;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v16, v2

    :cond_5
    :try_start_4
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/q;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    :cond_6
    invoke-virtual {v11}, Lcom/google/crypto/tink/shaded/protobuf/j1;->p()V

    if-nez v7, :cond_7

    invoke-virtual {v11, v9}, Lcom/google/crypto/tink/shaded/protobuf/j1;->f(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v7, v1

    :cond_7
    :try_start_5
    invoke-virtual {v11, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_8
    :goto_4
    if-ge v14, v13, :cond_9

    aget v0, v12, v14

    invoke-virtual {v8, v9, v0, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_9
    if-eqz v7, :cond_16

    goto/16 :goto_29

    :cond_a
    :try_start_6
    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/high16 v2, 0xff00000

    and-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x14

    const v5, 0xfffff

    iget-object v6, v8, Lcom/google/crypto/tink/shaded/protobuf/t0;->n:Lcom/google/crypto/tink/shaded/protobuf/g0;

    packed-switch v2, :pswitch_data_0

    move-object v15, v7

    if-nez v15, :cond_12

    :try_start_7
    invoke-virtual {v11}, Lcom/google/crypto/tink/shaded/protobuf/j1;->m()Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v1
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0$a; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_23

    :pswitch_0
    and-int v2, v4, v5

    int-to-long v4, v2

    :try_start_8
    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->r(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_1
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->w()J

    move-result-wide v17

    :goto_5
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_2
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->v()I

    move-result v2

    :goto_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_3
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->j()J

    move-result-wide v17

    goto :goto_5

    :pswitch_4
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->G()I

    move-result v2

    goto :goto_6

    :pswitch_5
    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->s()I

    move-result v2

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-interface {v6}, Lcom/google/crypto/tink/shaded/protobuf/z$b;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    move-object v15, v7

    goto/16 :goto_1b

    :cond_c
    :goto_7
    and-int/2addr v4, v5

    int-to-long v4, v4

    goto :goto_6

    :pswitch_6
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->l()I

    move-result v2

    goto :goto_6

    :pswitch_7
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->C()Lcom/google/crypto/tink/shaded/protobuf/i;

    move-result-object v2

    goto/16 :goto_8

    :pswitch_8
    invoke-virtual {v8, v1, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-static {v4, v5, v9}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v6

    invoke-interface {v0, v6, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->t(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    move-result-object v2

    goto :goto_8

    :cond_d
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->t(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v9, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->J(ILjava/lang/Object;)V

    goto :goto_9

    :pswitch_9
    invoke-virtual {v8, v9, v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->G(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;)V

    goto :goto_9

    :pswitch_a
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->i()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_8

    :pswitch_b
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->h()I

    move-result v2

    goto/16 :goto_6

    :pswitch_c
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->c()J

    move-result-wide v17

    goto/16 :goto_5

    :pswitch_d
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->E()I

    move-result v2

    goto/16 :goto_6

    :pswitch_e
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->b()J

    move-result-wide v17

    goto/16 :goto_5

    :pswitch_f
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->K()J

    move-result-wide v17

    goto/16 :goto_5

    :pswitch_10
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_8

    :pswitch_11
    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->readDouble()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_8
    invoke-static {v4, v5, v9, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    invoke-virtual {v8, v1, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->K(IILjava/lang/Object;)V

    goto :goto_a

    :pswitch_12
    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->v(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/d1;)V

    :goto_a
    move-object v15, v7

    goto/16 :goto_22

    :catch_0
    move-object v15, v7

    goto/16 :goto_24

    :pswitch_13
    and-int v1, v4, v5

    int-to-long v4, v1

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v6
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0$a; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v3, v4

    move-object/from16 v5, p2

    move-object v15, v7

    move-object/from16 v7, p3

    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/t0;->E(Ljava/lang/Object;JLcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V

    goto/16 :goto_22

    :pswitch_14
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto :goto_c

    :pswitch_15
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_d

    :pswitch_16
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_e

    :pswitch_17
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_f

    :pswitch_18
    move-object v15, v7

    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-virtual {v6, v4, v5, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_b
    invoke-interface {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->q(Ljava/util/List;)V

    goto/16 :goto_10

    :pswitch_19
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_11

    :pswitch_1a
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_12

    :pswitch_1b
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_13

    :pswitch_1c
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_14

    :pswitch_1d
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_15

    :pswitch_1e
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_16

    :pswitch_1f
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_17

    :pswitch_20
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_18

    :pswitch_21
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    goto/16 :goto_19

    :goto_c
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->e(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_d
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->a(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_e
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->o(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_f
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->d(Ljava/util/List;)V

    goto/16 :goto_22

    :pswitch_22
    move-object v15, v7

    and-int v2, v4, v5

    int-to-long v4, v2

    invoke-virtual {v6, v4, v5, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :goto_10
    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    move-result-object v3

    invoke-static {v1, v2, v3, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/f1;->z(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/z$b;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    :goto_11
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->f(Ljava/util/List;)V

    goto/16 :goto_22

    :pswitch_23
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->H(Ljava/util/List;)V

    goto/16 :goto_22

    :pswitch_24
    move-object v15, v7

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v4

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/t0;->F(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)V

    goto/16 :goto_22

    :pswitch_25
    move-object v15, v7

    invoke-virtual {v8, v9, v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->H(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;)V

    goto/16 :goto_22

    :goto_12
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->x(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_13
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->u(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_14
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->M(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_15
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->p(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_16
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->k(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_17
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->n(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_18
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->D(Ljava/util/List;)V

    goto/16 :goto_22

    :goto_19
    invoke-virtual {v6, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/g0;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/d1;->I(Ljava/util/List;)V

    goto/16 :goto_22

    :pswitch_26
    move-object v15, v7

    invoke-virtual {v8, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-static {v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->r(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    :goto_1a
    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/z;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/x;

    move-result-object v1

    goto/16 :goto_1d

    :cond_e
    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v4

    invoke-interface {v0, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->r(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1e

    :pswitch_27
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->w()J

    move-result-wide v4

    goto/16 :goto_20

    :pswitch_28
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->v()I

    move-result v4

    goto/16 :goto_1f

    :pswitch_29
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->j()J

    move-result-wide v4

    goto/16 :goto_20

    :pswitch_2a
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->G()I

    move-result v4

    goto/16 :goto_1f

    :pswitch_2b
    move-object v15, v7

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->s()I

    move-result v2

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    move-result-object v6

    if-eqz v6, :cond_10

    invoke-interface {v6}, Lcom/google/crypto/tink/shaded/protobuf/z$b;->a()Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_1c

    :cond_f
    :goto_1b
    invoke-static {v1, v2, v15, v11}, Lcom/google/crypto/tink/shaded/protobuf/f1;->D(IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0

    :cond_10
    :goto_1c
    and-int v1, v4, v5

    int-to-long v4, v1

    invoke-static {v2, v4, v5, v9}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_2c
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->l()I

    move-result v4

    goto/16 :goto_1f

    :pswitch_2d
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->C()Lcom/google/crypto/tink/shaded/protobuf/i;

    move-result-object v4

    goto :goto_1e

    :pswitch_2e
    move-object v15, v7

    invoke-virtual {v8, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-static {v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->t(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_1a

    :goto_1d
    and-int v2, v4, v5

    int-to-long v2, v2

    invoke-static {v2, v3, v9, v1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_22

    :cond_11
    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    move-result-object v4

    invoke-interface {v0, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/d1;->t(Lcom/google/crypto/tink/shaded/protobuf/e1;Lcom/google/crypto/tink/shaded/protobuf/p;)Ljava/lang/Object;

    move-result-object v4

    :goto_1e
    invoke-static {v1, v2, v9, v4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_2f
    move-object v15, v7

    invoke-virtual {v8, v9, v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/t0;->G(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/d1;)V

    goto :goto_21

    :catchall_0
    move-exception v0

    goto/16 :goto_2a

    :pswitch_30
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->i()Z

    move-result v4

    invoke-static {v9, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->p(Ljava/lang/Object;JZ)V

    goto :goto_21

    :pswitch_31
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->h()I

    move-result v4

    goto :goto_1f

    :pswitch_32
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->c()J

    move-result-wide v4

    goto :goto_20

    :pswitch_33
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->E()I

    move-result v4

    :goto_1f
    invoke-static {v4, v1, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/n1;->v(IJLjava/lang/Object;)V

    goto :goto_21

    :pswitch_34
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->b()J

    move-result-wide v4

    goto :goto_20

    :pswitch_35
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->K()J

    move-result-wide v4

    :goto_20
    invoke-static {v9, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->w(Ljava/lang/Object;JJ)V

    goto :goto_21

    :pswitch_36
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->readFloat()F

    move-result v4

    invoke-static {v9, v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/n1;->u(Ljava/lang/Object;JF)V

    goto :goto_21

    :pswitch_37
    move-object v15, v7

    and-int v1, v4, v5

    int-to-long v1, v1

    invoke-interface/range {p2 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->readDouble()D

    move-result-wide v4

    invoke-static {v9, v1, v2, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/n1;->t(Ljava/lang/Object;JD)V

    :goto_21
    invoke-virtual {v8, v3, v9}, Lcom/google/crypto/tink/shaded/protobuf/t0;->J(ILjava/lang/Object;)V
    :try_end_9
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0$a; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_22
    move-object v7, v15

    goto/16 :goto_0

    :goto_23
    move-object v7, v1

    goto :goto_25

    :catch_1
    :goto_24
    move-object v7, v15

    goto :goto_27

    :cond_12
    move-object v7, v15

    :goto_25
    :try_start_a
    invoke-virtual {v11, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z

    move-result v1
    :try_end_a
    .catch Lcom/google/crypto/tink/shaded/protobuf/a0$a; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-nez v1, :cond_0

    :goto_26
    if-ge v14, v13, :cond_13

    aget v0, v12, v14

    invoke-virtual {v8, v9, v0, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_26

    :cond_13
    if-eqz v7, :cond_16

    goto :goto_29

    :catch_2
    :goto_27
    :try_start_b
    invoke-virtual {v11}, Lcom/google/crypto/tink/shaded/protobuf/j1;->p()V

    if-nez v7, :cond_14

    invoke-virtual {v11, v9}, Lcom/google/crypto/tink/shaded/protobuf/j1;->f(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    move-result-object v1

    move-object v7, v1

    :cond_14
    invoke-virtual {v11, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-nez v1, :cond_0

    :goto_28
    if-ge v14, v13, :cond_15

    aget v0, v12, v14

    invoke-virtual {v8, v9, v0, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_28

    :cond_15
    if-eqz v7, :cond_16

    :goto_29
    invoke-virtual {v11, v9, v7}, Lcom/google/crypto/tink/shaded/protobuf/j1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    return-void

    :catchall_1
    move-exception v0

    goto :goto_2b

    :catchall_2
    move-exception v0

    move-object v15, v7

    :goto_2a
    move-object v7, v15

    :goto_2b
    if-ge v14, v13, :cond_17

    aget v1, v12, v14

    invoke-virtual {v8, v9, v1, v7, v11}, Lcom/google/crypto/tink/shaded/protobuf/t0;->l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2b

    :cond_17
    if-eqz v7, :cond_18

    invoke-virtual {v11, v9, v7}, Lcom/google/crypto/tink/shaded/protobuf/j1;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_19
        :pswitch_22
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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

.method public final j(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->r(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->q(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final k(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/j1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 2
    .line 3
    aget v0, v0, p2

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0xfffff

    .line 10
    .line 11
    .line 12
    and-int/2addr v0, v1

    .line 13
    int-to-long v0, v0

    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/l0;->e(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-interface {v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->c(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/k0;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    check-cast p2, Ljava/util/Map$Entry;

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/z$b;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    if-nez p3, :cond_3

    .line 77
    .line 78
    invoke-virtual {p4}, Lcom/google/crypto/tink/shaded/protobuf/j1;->m()Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    throw p1

    .line 89
    :cond_4
    return-void
.end method

.method public final m(I)Lcom/google/crypto/tink/shaded/protobuf/z$b;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/z$b;

    return-object p1
.end method

.method public final n(I)Ljava/lang/Object;
    .locals 1

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;
    .locals 3

    .line 1
    div-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->b:[Ljava/lang/Object;

    .line 6
    .line 7
    aget-object v1, v0, p1

    .line 8
    .line 9
    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/a1;->c:Lcom/google/crypto/tink/shaded/protobuf/a1;

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
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/a1;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/e1;

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

.method public final q(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x0

    .line 9
    :goto_0
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 10
    .line 11
    array-length v8, v7

    .line 12
    if-ge v4, v8, :cond_6

    .line 13
    .line 14
    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 15
    .line 16
    .line 17
    move-result v8

    .line 18
    aget v9, v7, v4

    .line 19
    .line 20
    const/high16 v10, 0xff00000

    .line 21
    .line 22
    and-int/2addr v10, v8

    .line 23
    ushr-int/lit8 v10, v10, 0x14

    .line 24
    .line 25
    const/16 v11, 0x11

    .line 26
    .line 27
    const v12, 0xfffff

    .line 28
    .line 29
    .line 30
    iget-boolean v13, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->i:Z

    .line 31
    .line 32
    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 33
    .line 34
    if-gt v10, v11, :cond_0

    .line 35
    .line 36
    add-int/lit8 v11, v4, 0x2

    .line 37
    .line 38
    aget v7, v7, v11

    .line 39
    .line 40
    and-int v11, v7, v12

    .line 41
    .line 42
    ushr-int/lit8 v15, v7, 0x14

    .line 43
    .line 44
    const/16 v16, 0x1

    .line 45
    .line 46
    shl-int v15, v16, v15

    .line 47
    .line 48
    move/from16 v17, v4

    .line 49
    .line 50
    if-eq v11, v2, :cond_2

    .line 51
    .line 52
    int-to-long v3, v11

    .line 53
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    move v2, v11

    .line 58
    goto :goto_2

    .line 59
    :cond_0
    move/from16 v17, v4

    .line 60
    .line 61
    if-eqz v13, :cond_1

    .line 62
    .line 63
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/u;->b:Lcom/google/crypto/tink/shaded/protobuf/u;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/u;->n()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-lt v10, v3, :cond_1

    .line 70
    .line 71
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/u;->c:Lcom/google/crypto/tink/shaded/protobuf/u;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/u;->n()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-gt v10, v3, :cond_1

    .line 78
    .line 79
    add-int/lit8 v4, v17, 0x2

    .line 80
    .line 81
    aget v3, v7, v4

    .line 82
    .line 83
    and-int/2addr v3, v12

    .line 84
    move v7, v3

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    const/4 v7, 0x0

    .line 87
    :goto_1
    const/4 v15, 0x0

    .line 88
    :cond_2
    :goto_2
    and-int v3, v8, v12

    .line 89
    .line 90
    int-to-long v3, v3

    .line 91
    move/from16 v8, v17

    .line 92
    .line 93
    packed-switch v10, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto/16 :goto_18

    .line 97
    .line 98
    :pswitch_0
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_5

    .line 103
    .line 104
    goto/16 :goto_4

    .line 105
    .line 106
    :pswitch_1
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_5

    .line 111
    .line 112
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    goto/16 :goto_5

    .line 117
    .line 118
    :pswitch_2
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :pswitch_3
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :pswitch_4
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    .line 144
    goto/16 :goto_8

    .line 145
    .line 146
    :pswitch_5
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_5

    .line 151
    .line 152
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    goto/16 :goto_9

    .line 157
    .line 158
    :pswitch_6
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_5

    .line 163
    .line 164
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    goto/16 :goto_a

    .line 169
    .line 170
    :pswitch_7
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_5

    .line 175
    .line 176
    goto/16 :goto_b

    .line 177
    .line 178
    :pswitch_8
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_5

    .line 183
    .line 184
    goto/16 :goto_c

    .line 185
    .line 186
    :pswitch_9
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    if-eqz v7, :cond_5

    .line 191
    .line 192
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 197
    .line 198
    if-eqz v4, :cond_4

    .line 199
    .line 200
    goto/16 :goto_d

    .line 201
    .line 202
    :pswitch_a
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_5

    .line 207
    .line 208
    goto/16 :goto_f

    .line 209
    .line 210
    :pswitch_b
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_5

    .line 215
    .line 216
    goto/16 :goto_10

    .line 217
    .line 218
    :pswitch_c
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    if-eqz v3, :cond_5

    .line 223
    .line 224
    goto/16 :goto_11

    .line 225
    .line 226
    :pswitch_d
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_5

    .line 231
    .line 232
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    goto/16 :goto_12

    .line 237
    .line 238
    :pswitch_e
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    if-eqz v7, :cond_5

    .line 243
    .line 244
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 245
    .line 246
    .line 247
    move-result-wide v3

    .line 248
    goto/16 :goto_13

    .line 249
    .line 250
    :pswitch_f
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v7

    .line 254
    if-eqz v7, :cond_5

    .line 255
    .line 256
    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 257
    .line 258
    .line 259
    move-result-wide v3

    .line 260
    goto/16 :goto_14

    .line 261
    .line 262
    :pswitch_10
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    if-eqz v3, :cond_5

    .line 267
    .line 268
    goto/16 :goto_15

    .line 269
    .line 270
    :pswitch_11
    invoke-virtual {v0, v9, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-eqz v3, :cond_5

    .line 275
    .line 276
    goto/16 :goto_16

    .line 277
    .line 278
    :pswitch_12
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    iget-object v7, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 287
    .line 288
    invoke-interface {v7, v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l0;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    goto/16 :goto_17

    .line 293
    .line 294
    :pswitch_13
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    check-cast v3, Ljava/util/List;

    .line 299
    .line 300
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 301
    .line 302
    .line 303
    move-result-object v4

    .line 304
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/f1;->j(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    goto/16 :goto_17

    .line 309
    .line 310
    :pswitch_14
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Ljava/util/List;

    .line 315
    .line 316
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->t(Ljava/util/List;)I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    if-lez v3, :cond_5

    .line 321
    .line 322
    if-eqz v13, :cond_3

    .line 323
    .line 324
    goto/16 :goto_3

    .line 325
    .line 326
    :pswitch_15
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    check-cast v3, Ljava/util/List;

    .line 331
    .line 332
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->r(Ljava/util/List;)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-lez v3, :cond_5

    .line 337
    .line 338
    if-eqz v13, :cond_3

    .line 339
    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :pswitch_16
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, Ljava/util/List;

    .line 347
    .line 348
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 349
    .line 350
    .line 351
    move-result v3

    .line 352
    if-lez v3, :cond_5

    .line 353
    .line 354
    if-eqz v13, :cond_3

    .line 355
    .line 356
    goto/16 :goto_3

    .line 357
    .line 358
    :pswitch_17
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    check-cast v3, Ljava/util/List;

    .line 363
    .line 364
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-lez v3, :cond_5

    .line 369
    .line 370
    if-eqz v13, :cond_3

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :pswitch_18
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    check-cast v3, Ljava/util/List;

    .line 379
    .line 380
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->e(Ljava/util/List;)I

    .line 381
    .line 382
    .line 383
    move-result v3

    .line 384
    if-lez v3, :cond_5

    .line 385
    .line 386
    if-eqz v13, :cond_3

    .line 387
    .line 388
    goto/16 :goto_3

    .line 389
    .line 390
    :pswitch_19
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    check-cast v3, Ljava/util/List;

    .line 395
    .line 396
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->w(Ljava/util/List;)I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-lez v3, :cond_5

    .line 401
    .line 402
    if-eqz v13, :cond_3

    .line 403
    .line 404
    goto/16 :goto_3

    .line 405
    .line 406
    :pswitch_1a
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Ljava/util/List;

    .line 411
    .line 412
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->b(Ljava/util/List;)I

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-lez v3, :cond_5

    .line 417
    .line 418
    if-eqz v13, :cond_3

    .line 419
    .line 420
    goto/16 :goto_3

    .line 421
    .line 422
    :pswitch_1b
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    check-cast v3, Ljava/util/List;

    .line 427
    .line 428
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 429
    .line 430
    .line 431
    move-result v3

    .line 432
    if-lez v3, :cond_5

    .line 433
    .line 434
    if-eqz v13, :cond_3

    .line 435
    .line 436
    goto :goto_3

    .line 437
    :pswitch_1c
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    check-cast v3, Ljava/util/List;

    .line 442
    .line 443
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    if-lez v3, :cond_5

    .line 448
    .line 449
    if-eqz v13, :cond_3

    .line 450
    .line 451
    goto :goto_3

    .line 452
    :pswitch_1d
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    check-cast v3, Ljava/util/List;

    .line 457
    .line 458
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->l(Ljava/util/List;)I

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    if-lez v3, :cond_5

    .line 463
    .line 464
    if-eqz v13, :cond_3

    .line 465
    .line 466
    goto :goto_3

    .line 467
    :pswitch_1e
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    check-cast v3, Ljava/util/List;

    .line 472
    .line 473
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->y(Ljava/util/List;)I

    .line 474
    .line 475
    .line 476
    move-result v3

    .line 477
    if-lez v3, :cond_5

    .line 478
    .line 479
    if-eqz v13, :cond_3

    .line 480
    .line 481
    goto :goto_3

    .line 482
    :pswitch_1f
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    check-cast v3, Ljava/util/List;

    .line 487
    .line 488
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->n(Ljava/util/List;)I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    if-lez v3, :cond_5

    .line 493
    .line 494
    if-eqz v13, :cond_3

    .line 495
    .line 496
    goto :goto_3

    .line 497
    :pswitch_20
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    check-cast v3, Ljava/util/List;

    .line 502
    .line 503
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    if-lez v3, :cond_5

    .line 508
    .line 509
    if-eqz v13, :cond_3

    .line 510
    .line 511
    goto :goto_3

    .line 512
    :pswitch_21
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    check-cast v3, Ljava/util/List;

    .line 517
    .line 518
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 519
    .line 520
    .line 521
    move-result v3

    .line 522
    if-lez v3, :cond_5

    .line 523
    .line 524
    if-eqz v13, :cond_3

    .line 525
    .line 526
    :goto_3
    int-to-long v10, v7

    .line 527
    invoke-virtual {v14, v1, v10, v11, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 528
    .line 529
    .line 530
    :cond_3
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 531
    .line 532
    .line 533
    move-result v4

    .line 534
    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 535
    .line 536
    .line 537
    move-result v7

    .line 538
    add-int/2addr v7, v4

    .line 539
    add-int/2addr v7, v3

    .line 540
    add-int/2addr v7, v5

    .line 541
    move v5, v7

    .line 542
    goto/16 :goto_18

    .line 543
    .line 544
    :pswitch_22
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    check-cast v3, Ljava/util/List;

    .line 549
    .line 550
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->s(ILjava/util/List;)I

    .line 551
    .line 552
    .line 553
    move-result v3

    .line 554
    goto/16 :goto_17

    .line 555
    .line 556
    :pswitch_23
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    check-cast v3, Ljava/util/List;

    .line 561
    .line 562
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->q(ILjava/util/List;)I

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    goto/16 :goto_17

    .line 567
    .line 568
    :pswitch_24
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    check-cast v3, Ljava/util/List;

    .line 573
    .line 574
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->d(ILjava/util/List;)I

    .line 575
    .line 576
    .line 577
    move-result v3

    .line 578
    goto/16 :goto_17

    .line 579
    .line 580
    :pswitch_25
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 581
    .line 582
    .line 583
    move-result-object v3

    .line 584
    check-cast v3, Ljava/util/List;

    .line 585
    .line 586
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->v(ILjava/util/List;)I

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    goto/16 :goto_17

    .line 591
    .line 592
    :pswitch_26
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    check-cast v3, Ljava/util/List;

    .line 597
    .line 598
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->c(ILjava/util/List;)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    goto/16 :goto_17

    .line 603
    .line 604
    :pswitch_27
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    check-cast v3, Ljava/util/List;

    .line 609
    .line 610
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 611
    .line 612
    .line 613
    move-result-object v4

    .line 614
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/f1;->p(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    goto/16 :goto_17

    .line 619
    .line 620
    :pswitch_28
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    check-cast v3, Ljava/util/List;

    .line 625
    .line 626
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->u(ILjava/util/List;)I

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    goto/16 :goto_17

    .line 631
    .line 632
    :pswitch_29
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    check-cast v3, Ljava/util/List;

    .line 637
    .line 638
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->a(ILjava/util/List;)I

    .line 639
    .line 640
    .line 641
    move-result v3

    .line 642
    goto/16 :goto_17

    .line 643
    .line 644
    :pswitch_2a
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    check-cast v3, Ljava/util/List;

    .line 649
    .line 650
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->k(ILjava/util/List;)I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    goto/16 :goto_17

    .line 655
    .line 656
    :pswitch_2b
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v3

    .line 660
    check-cast v3, Ljava/util/List;

    .line 661
    .line 662
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->x(ILjava/util/List;)I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    goto/16 :goto_17

    .line 667
    .line 668
    :pswitch_2c
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    check-cast v3, Ljava/util/List;

    .line 673
    .line 674
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->m(ILjava/util/List;)I

    .line 675
    .line 676
    .line 677
    move-result v3

    .line 678
    goto/16 :goto_17

    .line 679
    .line 680
    :pswitch_2d
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    check-cast v3, Ljava/util/List;

    .line 685
    .line 686
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->f(ILjava/util/List;)I

    .line 687
    .line 688
    .line 689
    move-result v3

    .line 690
    goto/16 :goto_17

    .line 691
    .line 692
    :pswitch_2e
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    check-cast v3, Ljava/util/List;

    .line 697
    .line 698
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->h(ILjava/util/List;)I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    goto/16 :goto_17

    .line 703
    .line 704
    :pswitch_2f
    and-int v7, v6, v15

    .line 705
    .line 706
    if-eqz v7, :cond_5

    .line 707
    .line 708
    :goto_4
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 713
    .line 714
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(ILcom/google/crypto/tink/shaded/protobuf/q0;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    goto/16 :goto_17

    .line 723
    .line 724
    :pswitch_30
    and-int v7, v6, v15

    .line 725
    .line 726
    if-eqz v7, :cond_5

    .line 727
    .line 728
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 729
    .line 730
    .line 731
    move-result-wide v3

    .line 732
    :goto_5
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)I

    .line 733
    .line 734
    .line 735
    move-result v3

    .line 736
    goto/16 :goto_17

    .line 737
    .line 738
    :pswitch_31
    and-int v7, v6, v15

    .line 739
    .line 740
    if-eqz v7, :cond_5

    .line 741
    .line 742
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    :goto_6
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    goto/16 :goto_17

    .line 751
    .line 752
    :pswitch_32
    and-int v3, v6, v15

    .line 753
    .line 754
    if-eqz v3, :cond_5

    .line 755
    .line 756
    :goto_7
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(I)I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    goto/16 :goto_17

    .line 761
    .line 762
    :pswitch_33
    and-int v3, v6, v15

    .line 763
    .line 764
    if-eqz v3, :cond_5

    .line 765
    .line 766
    :goto_8
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(I)I

    .line 767
    .line 768
    .line 769
    move-result v3

    .line 770
    goto/16 :goto_17

    .line 771
    .line 772
    :pswitch_34
    and-int v7, v6, v15

    .line 773
    .line 774
    if-eqz v7, :cond_5

    .line 775
    .line 776
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    :goto_9
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)I

    .line 781
    .line 782
    .line 783
    move-result v3

    .line 784
    goto/16 :goto_17

    .line 785
    .line 786
    :pswitch_35
    and-int v7, v6, v15

    .line 787
    .line 788
    if-eqz v7, :cond_5

    .line 789
    .line 790
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    :goto_a
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->u(II)I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    goto/16 :goto_17

    .line 799
    .line 800
    :pswitch_36
    and-int v7, v6, v15

    .line 801
    .line 802
    if-eqz v7, :cond_5

    .line 803
    .line 804
    :goto_b
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v3

    .line 808
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 809
    .line 810
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(ILcom/google/crypto/tink/shaded/protobuf/i;)I

    .line 811
    .line 812
    .line 813
    move-result v3

    .line 814
    goto/16 :goto_17

    .line 815
    .line 816
    :pswitch_37
    and-int v7, v6, v15

    .line 817
    .line 818
    if-eqz v7, :cond_5

    .line 819
    .line 820
    :goto_c
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v3

    .line 824
    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 825
    .line 826
    .line 827
    move-result-object v4

    .line 828
    invoke-static {v9, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->o(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    goto/16 :goto_17

    .line 833
    .line 834
    :pswitch_38
    and-int v7, v6, v15

    .line 835
    .line 836
    if-eqz v7, :cond_5

    .line 837
    .line 838
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v3

    .line 842
    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 843
    .line 844
    if-eqz v4, :cond_4

    .line 845
    .line 846
    :goto_d
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 847
    .line 848
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(ILcom/google/crypto/tink/shaded/protobuf/i;)I

    .line 849
    .line 850
    .line 851
    move-result v3

    .line 852
    goto :goto_e

    .line 853
    :cond_4
    check-cast v3, Ljava/lang/String;

    .line 854
    .line 855
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->r(ILjava/lang/String;)I

    .line 856
    .line 857
    .line 858
    move-result v3

    .line 859
    :goto_e
    add-int/2addr v3, v5

    .line 860
    move v5, v3

    .line 861
    goto :goto_18

    .line 862
    :pswitch_39
    and-int v3, v6, v15

    .line 863
    .line 864
    if-eqz v3, :cond_5

    .line 865
    .line 866
    :goto_f
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(I)I

    .line 867
    .line 868
    .line 869
    move-result v3

    .line 870
    goto :goto_17

    .line 871
    :pswitch_3a
    and-int v3, v6, v15

    .line 872
    .line 873
    if-eqz v3, :cond_5

    .line 874
    .line 875
    :goto_10
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(I)I

    .line 876
    .line 877
    .line 878
    move-result v3

    .line 879
    goto :goto_17

    .line 880
    :pswitch_3b
    and-int v3, v6, v15

    .line 881
    .line 882
    if-eqz v3, :cond_5

    .line 883
    .line 884
    :goto_11
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(I)I

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    goto :goto_17

    .line 889
    :pswitch_3c
    and-int v7, v6, v15

    .line 890
    .line 891
    if-eqz v7, :cond_5

    .line 892
    .line 893
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    .line 894
    .line 895
    .line 896
    move-result v3

    .line 897
    :goto_12
    invoke-static {v9, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(II)I

    .line 898
    .line 899
    .line 900
    move-result v3

    .line 901
    goto :goto_17

    .line 902
    :pswitch_3d
    and-int v7, v6, v15

    .line 903
    .line 904
    if-eqz v7, :cond_5

    .line 905
    .line 906
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 907
    .line 908
    .line 909
    move-result-wide v3

    .line 910
    :goto_13
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->w(IJ)I

    .line 911
    .line 912
    .line 913
    move-result v3

    .line 914
    goto :goto_17

    .line 915
    :pswitch_3e
    and-int v7, v6, v15

    .line 916
    .line 917
    if-eqz v7, :cond_5

    .line 918
    .line 919
    invoke-virtual {v14, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    .line 920
    .line 921
    .line 922
    move-result-wide v3

    .line 923
    :goto_14
    invoke-static {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(IJ)I

    .line 924
    .line 925
    .line 926
    move-result v3

    .line 927
    goto :goto_17

    .line 928
    :pswitch_3f
    and-int v3, v6, v15

    .line 929
    .line 930
    if-eqz v3, :cond_5

    .line 931
    .line 932
    :goto_15
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(I)I

    .line 933
    .line 934
    .line 935
    move-result v3

    .line 936
    goto :goto_17

    .line 937
    :pswitch_40
    and-int v3, v6, v15

    .line 938
    .line 939
    if-eqz v3, :cond_5

    .line 940
    .line 941
    :goto_16
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(I)I

    .line 942
    .line 943
    .line 944
    move-result v3

    .line 945
    :goto_17
    add-int/2addr v5, v3

    .line 946
    :cond_5
    :goto_18
    add-int/lit8 v4, v8, 0x3

    .line 947
    .line 948
    goto/16 :goto_0

    .line 949
    .line 950
    :cond_6
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 951
    .line 952
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 953
    .line 954
    .line 955
    move-result-object v3

    .line 956
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/j1;->h(Ljava/lang/Object;)I

    .line 957
    .line 958
    .line 959
    move-result v2

    .line 960
    add-int/2addr v2, v5

    .line 961
    iget-boolean v3, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->f:Z

    .line 962
    .line 963
    if-eqz v3, :cond_7

    .line 964
    .line 965
    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->p:Lcom/google/crypto/tink/shaded/protobuf/q;

    .line 966
    .line 967
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/q;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/t;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/t;->h()I

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    add-int/2addr v2, v1

    .line 976
    :cond_7
    return v2

    .line 977
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

.method public final r(Ljava/lang/Object;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    if-ge v1, v4, :cond_4

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/high16 v5, 0xff00000

    .line 14
    .line 15
    and-int/2addr v5, v4

    .line 16
    ushr-int/lit8 v5, v5, 0x14

    .line 17
    .line 18
    aget v6, v3, v1

    .line 19
    .line 20
    const v7, 0xfffff

    .line 21
    .line 22
    .line 23
    and-int/2addr v4, v7

    .line 24
    int-to-long v8, v4

    .line 25
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/u;->b:Lcom/google/crypto/tink/shaded/protobuf/u;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/u;->n()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lt v5, v4, :cond_0

    .line 32
    .line 33
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/u;->c:Lcom/google/crypto/tink/shaded/protobuf/u;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/u;->n()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-gt v5, v4, :cond_0

    .line 40
    .line 41
    add-int/lit8 v4, v1, 0x2

    .line 42
    .line 43
    aget v3, v3, v4

    .line 44
    .line 45
    and-int/2addr v3, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_1
    iget-boolean v4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->i:Z

    .line 49
    .line 50
    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 51
    .line 52
    packed-switch v5, :pswitch_data_0

    .line 53
    .line 54
    .line 55
    goto/16 :goto_17

    .line 56
    .line 57
    :pswitch_0
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    goto/16 :goto_3

    .line 64
    .line 65
    :pswitch_1
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v3

    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :pswitch_2
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :pswitch_3
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_3

    .line 94
    .line 95
    goto/16 :goto_6

    .line 96
    .line 97
    :pswitch_4
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :pswitch_5
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_3

    .line 110
    .line 111
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    goto/16 :goto_8

    .line 116
    .line 117
    :pswitch_6
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    goto/16 :goto_9

    .line 128
    .line 129
    :pswitch_7
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_3

    .line 134
    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :pswitch_8
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    goto/16 :goto_b

    .line 144
    .line 145
    :pswitch_9
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 156
    .line 157
    if-eqz v4, :cond_2

    .line 158
    .line 159
    goto/16 :goto_c

    .line 160
    .line 161
    :pswitch_a
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_3

    .line 166
    .line 167
    goto/16 :goto_e

    .line 168
    .line 169
    :pswitch_b
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_3

    .line 174
    .line 175
    goto/16 :goto_f

    .line 176
    .line 177
    :pswitch_c
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_3

    .line 182
    .line 183
    goto/16 :goto_10

    .line 184
    .line 185
    :pswitch_d
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_3

    .line 190
    .line 191
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->x(JLjava/lang/Object;)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    goto/16 :goto_11

    .line 196
    .line 197
    :pswitch_e
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_3

    .line 202
    .line 203
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    goto/16 :goto_12

    .line 208
    .line 209
    :pswitch_f
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_3

    .line 214
    .line 215
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->y(JLjava/lang/Object;)J

    .line 216
    .line 217
    .line 218
    move-result-wide v3

    .line 219
    goto/16 :goto_13

    .line 220
    .line 221
    :pswitch_10
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_3

    .line 226
    .line 227
    goto/16 :goto_14

    .line 228
    .line 229
    :pswitch_11
    invoke-virtual {p0, v6, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->t(IILjava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-eqz v3, :cond_3

    .line 234
    .line 235
    goto/16 :goto_15

    .line 236
    .line 237
    :pswitch_12
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 246
    .line 247
    invoke-interface {v5, v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l0;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    goto/16 :goto_16

    .line 252
    .line 253
    :pswitch_13
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/f1;->j(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    goto/16 :goto_16

    .line 266
    .line 267
    :pswitch_14
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    check-cast v5, Ljava/util/List;

    .line 272
    .line 273
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->t(Ljava/util/List;)I

    .line 274
    .line 275
    .line 276
    move-result v5

    .line 277
    if-lez v5, :cond_3

    .line 278
    .line 279
    if-eqz v4, :cond_1

    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :pswitch_15
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    check-cast v5, Ljava/util/List;

    .line 288
    .line 289
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->r(Ljava/util/List;)I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-lez v5, :cond_3

    .line 294
    .line 295
    if-eqz v4, :cond_1

    .line 296
    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :pswitch_16
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    check-cast v5, Ljava/util/List;

    .line 304
    .line 305
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-lez v5, :cond_3

    .line 310
    .line 311
    if-eqz v4, :cond_1

    .line 312
    .line 313
    goto/16 :goto_2

    .line 314
    .line 315
    :pswitch_17
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    check-cast v5, Ljava/util/List;

    .line 320
    .line 321
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    if-lez v5, :cond_3

    .line 326
    .line 327
    if-eqz v4, :cond_1

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_18
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, Ljava/util/List;

    .line 336
    .line 337
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->e(Ljava/util/List;)I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    if-lez v5, :cond_3

    .line 342
    .line 343
    if-eqz v4, :cond_1

    .line 344
    .line 345
    goto/16 :goto_2

    .line 346
    .line 347
    :pswitch_19
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Ljava/util/List;

    .line 352
    .line 353
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->w(Ljava/util/List;)I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    if-lez v5, :cond_3

    .line 358
    .line 359
    if-eqz v4, :cond_1

    .line 360
    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :pswitch_1a
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    check-cast v5, Ljava/util/List;

    .line 368
    .line 369
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->b(Ljava/util/List;)I

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-lez v5, :cond_3

    .line 374
    .line 375
    if-eqz v4, :cond_1

    .line 376
    .line 377
    goto/16 :goto_2

    .line 378
    .line 379
    :pswitch_1b
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v5

    .line 383
    check-cast v5, Ljava/util/List;

    .line 384
    .line 385
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    if-lez v5, :cond_3

    .line 390
    .line 391
    if-eqz v4, :cond_1

    .line 392
    .line 393
    goto :goto_2

    .line 394
    :pswitch_1c
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    check-cast v5, Ljava/util/List;

    .line 399
    .line 400
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 401
    .line 402
    .line 403
    move-result v5

    .line 404
    if-lez v5, :cond_3

    .line 405
    .line 406
    if-eqz v4, :cond_1

    .line 407
    .line 408
    goto :goto_2

    .line 409
    :pswitch_1d
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    check-cast v5, Ljava/util/List;

    .line 414
    .line 415
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->l(Ljava/util/List;)I

    .line 416
    .line 417
    .line 418
    move-result v5

    .line 419
    if-lez v5, :cond_3

    .line 420
    .line 421
    if-eqz v4, :cond_1

    .line 422
    .line 423
    goto :goto_2

    .line 424
    :pswitch_1e
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Ljava/util/List;

    .line 429
    .line 430
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->y(Ljava/util/List;)I

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-lez v5, :cond_3

    .line 435
    .line 436
    if-eqz v4, :cond_1

    .line 437
    .line 438
    goto :goto_2

    .line 439
    :pswitch_1f
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    check-cast v5, Ljava/util/List;

    .line 444
    .line 445
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->n(Ljava/util/List;)I

    .line 446
    .line 447
    .line 448
    move-result v5

    .line 449
    if-lez v5, :cond_3

    .line 450
    .line 451
    if-eqz v4, :cond_1

    .line 452
    .line 453
    goto :goto_2

    .line 454
    :pswitch_20
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    check-cast v5, Ljava/util/List;

    .line 459
    .line 460
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->g(Ljava/util/List;)I

    .line 461
    .line 462
    .line 463
    move-result v5

    .line 464
    if-lez v5, :cond_3

    .line 465
    .line 466
    if-eqz v4, :cond_1

    .line 467
    .line 468
    goto :goto_2

    .line 469
    :pswitch_21
    invoke-virtual {v7, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v5

    .line 473
    check-cast v5, Ljava/util/List;

    .line 474
    .line 475
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/f1;->i(Ljava/util/List;)I

    .line 476
    .line 477
    .line 478
    move-result v5

    .line 479
    if-lez v5, :cond_3

    .line 480
    .line 481
    if-eqz v4, :cond_1

    .line 482
    .line 483
    :goto_2
    int-to-long v3, v3

    .line 484
    invoke-virtual {v7, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 485
    .line 486
    .line 487
    :cond_1
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->t(I)I

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/l;->v(I)I

    .line 492
    .line 493
    .line 494
    move-result v4

    .line 495
    add-int/2addr v4, v3

    .line 496
    add-int/2addr v4, v5

    .line 497
    add-int/2addr v2, v4

    .line 498
    goto/16 :goto_17

    .line 499
    .line 500
    :pswitch_22
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->s(ILjava/util/List;)I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    goto/16 :goto_16

    .line 509
    .line 510
    :pswitch_23
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->q(ILjava/util/List;)I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    goto/16 :goto_16

    .line 519
    .line 520
    :pswitch_24
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->d(ILjava/util/List;)I

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    goto/16 :goto_16

    .line 529
    .line 530
    :pswitch_25
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->v(ILjava/util/List;)I

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    goto/16 :goto_16

    .line 539
    .line 540
    :pswitch_26
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->c(ILjava/util/List;)I

    .line 545
    .line 546
    .line 547
    move-result v3

    .line 548
    goto/16 :goto_16

    .line 549
    .line 550
    :pswitch_27
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/f1;->p(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 559
    .line 560
    .line 561
    move-result v3

    .line 562
    goto/16 :goto_16

    .line 563
    .line 564
    :pswitch_28
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->u(ILjava/util/List;)I

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    goto/16 :goto_16

    .line 573
    .line 574
    :pswitch_29
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 575
    .line 576
    .line 577
    move-result-object v3

    .line 578
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->a(ILjava/util/List;)I

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    goto/16 :goto_16

    .line 583
    .line 584
    :pswitch_2a
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->k(ILjava/util/List;)I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    goto/16 :goto_16

    .line 593
    .line 594
    :pswitch_2b
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 595
    .line 596
    .line 597
    move-result-object v3

    .line 598
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->x(ILjava/util/List;)I

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    goto/16 :goto_16

    .line 603
    .line 604
    :pswitch_2c
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->m(ILjava/util/List;)I

    .line 609
    .line 610
    .line 611
    move-result v3

    .line 612
    goto/16 :goto_16

    .line 613
    .line 614
    :pswitch_2d
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 615
    .line 616
    .line 617
    move-result-object v3

    .line 618
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->f(ILjava/util/List;)I

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    goto/16 :goto_16

    .line 623
    .line 624
    :pswitch_2e
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->u(JLjava/lang/Object;)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->h(ILjava/util/List;)I

    .line 629
    .line 630
    .line 631
    move-result v3

    .line 632
    goto/16 :goto_16

    .line 633
    .line 634
    :pswitch_2f
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    move-result v3

    .line 638
    if-eqz v3, :cond_3

    .line 639
    .line 640
    :goto_3
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/q0;

    .line 645
    .line 646
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->i(ILcom/google/crypto/tink/shaded/protobuf/q0;Lcom/google/crypto/tink/shaded/protobuf/e1;)I

    .line 651
    .line 652
    .line 653
    move-result v3

    .line 654
    goto/16 :goto_16

    .line 655
    .line 656
    :pswitch_30
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result v3

    .line 660
    if-eqz v3, :cond_3

    .line 661
    .line 662
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 663
    .line 664
    .line 665
    move-result-wide v3

    .line 666
    :goto_4
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->q(IJ)I

    .line 667
    .line 668
    .line 669
    move-result v3

    .line 670
    goto/16 :goto_16

    .line 671
    .line 672
    :pswitch_31
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    move-result v3

    .line 676
    if-eqz v3, :cond_3

    .line 677
    .line 678
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 679
    .line 680
    .line 681
    move-result v3

    .line 682
    :goto_5
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->p(II)I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    goto/16 :goto_16

    .line 687
    .line 688
    :pswitch_32
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result v3

    .line 692
    if-eqz v3, :cond_3

    .line 693
    .line 694
    :goto_6
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->o(I)I

    .line 695
    .line 696
    .line 697
    move-result v3

    .line 698
    goto/16 :goto_16

    .line 699
    .line 700
    :pswitch_33
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 701
    .line 702
    .line 703
    move-result v3

    .line 704
    if-eqz v3, :cond_3

    .line 705
    .line 706
    :goto_7
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->n(I)I

    .line 707
    .line 708
    .line 709
    move-result v3

    .line 710
    goto/16 :goto_16

    .line 711
    .line 712
    :pswitch_34
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    if-eqz v3, :cond_3

    .line 717
    .line 718
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 719
    .line 720
    .line 721
    move-result v3

    .line 722
    :goto_8
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->e(II)I

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    goto/16 :goto_16

    .line 727
    .line 728
    :pswitch_35
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result v3

    .line 732
    if-eqz v3, :cond_3

    .line 733
    .line 734
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    :goto_9
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->u(II)I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    goto/16 :goto_16

    .line 743
    .line 744
    :pswitch_36
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_3

    .line 749
    .line 750
    :goto_a
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 755
    .line 756
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(ILcom/google/crypto/tink/shaded/protobuf/i;)I

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    goto/16 :goto_16

    .line 761
    .line 762
    :pswitch_37
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 763
    .line 764
    .line 765
    move-result v3

    .line 766
    if-eqz v3, :cond_3

    .line 767
    .line 768
    :goto_b
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->o(I)Lcom/google/crypto/tink/shaded/protobuf/e1;

    .line 773
    .line 774
    .line 775
    move-result-object v4

    .line 776
    invoke-static {v6, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/f1;->o(ILcom/google/crypto/tink/shaded/protobuf/e1;Ljava/lang/Object;)I

    .line 777
    .line 778
    .line 779
    move-result v3

    .line 780
    goto/16 :goto_16

    .line 781
    .line 782
    :pswitch_38
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eqz v3, :cond_3

    .line 787
    .line 788
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 793
    .line 794
    if-eqz v4, :cond_2

    .line 795
    .line 796
    :goto_c
    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 797
    .line 798
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->c(ILcom/google/crypto/tink/shaded/protobuf/i;)I

    .line 799
    .line 800
    .line 801
    move-result v3

    .line 802
    goto :goto_d

    .line 803
    :cond_2
    check-cast v3, Ljava/lang/String;

    .line 804
    .line 805
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->r(ILjava/lang/String;)I

    .line 806
    .line 807
    .line 808
    move-result v3

    .line 809
    :goto_d
    add-int/2addr v2, v3

    .line 810
    goto :goto_17

    .line 811
    :pswitch_39
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result v3

    .line 815
    if-eqz v3, :cond_3

    .line 816
    .line 817
    :goto_e
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->b(I)I

    .line 818
    .line 819
    .line 820
    move-result v3

    .line 821
    goto :goto_16

    .line 822
    :pswitch_3a
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    if-eqz v3, :cond_3

    .line 827
    .line 828
    :goto_f
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->f(I)I

    .line 829
    .line 830
    .line 831
    move-result v3

    .line 832
    goto :goto_16

    .line 833
    :pswitch_3b
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v3

    .line 837
    if-eqz v3, :cond_3

    .line 838
    .line 839
    :goto_10
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->g(I)I

    .line 840
    .line 841
    .line 842
    move-result v3

    .line 843
    goto :goto_16

    .line 844
    :pswitch_3c
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-eqz v3, :cond_3

    .line 849
    .line 850
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    :goto_11
    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/l;->j(II)I

    .line 855
    .line 856
    .line 857
    move-result v3

    .line 858
    goto :goto_16

    .line 859
    :pswitch_3d
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    move-result v3

    .line 863
    if-eqz v3, :cond_3

    .line 864
    .line 865
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 866
    .line 867
    .line 868
    move-result-wide v3

    .line 869
    :goto_12
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->w(IJ)I

    .line 870
    .line 871
    .line 872
    move-result v3

    .line 873
    goto :goto_16

    .line 874
    :pswitch_3e
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 875
    .line 876
    .line 877
    move-result v3

    .line 878
    if-eqz v3, :cond_3

    .line 879
    .line 880
    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 881
    .line 882
    .line 883
    move-result-wide v3

    .line 884
    :goto_13
    invoke-static {v6, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/l;->l(IJ)I

    .line 885
    .line 886
    .line 887
    move-result v3

    .line 888
    goto :goto_16

    .line 889
    :pswitch_3f
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 890
    .line 891
    .line 892
    move-result v3

    .line 893
    if-eqz v3, :cond_3

    .line 894
    .line 895
    :goto_14
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->h(I)I

    .line 896
    .line 897
    .line 898
    move-result v3

    .line 899
    goto :goto_16

    .line 900
    :pswitch_40
    invoke-virtual {p0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->s(ILjava/lang/Object;)Z

    .line 901
    .line 902
    .line 903
    move-result v3

    .line 904
    if-eqz v3, :cond_3

    .line 905
    .line 906
    :goto_15
    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/l;->d(I)I

    .line 907
    .line 908
    .line 909
    move-result v3

    .line 910
    :goto_16
    add-int/2addr v2, v3

    .line 911
    :cond_3
    :goto_17
    add-int/lit8 v1, v1, 0x3

    .line 912
    .line 913
    goto/16 :goto_0

    .line 914
    .line 915
    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->o:Lcom/google/crypto/tink/shaded/protobuf/j1;

    .line 916
    .line 917
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 918
    .line 919
    .line 920
    move-result-object p1

    .line 921
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->h(Ljava/lang/Object;)I

    .line 922
    .line 923
    .line 924
    move-result p1

    .line 925
    add-int/2addr p1, v2

    .line 926
    return p1

    .line 927
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

.method public final s(ILjava/lang/Object;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->h:Z

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
    if-eqz v0, :cond_11

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

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
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    :cond_0
    return v2

    .line 41
    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

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
    const/4 v2, 0x1

    .line 50
    :cond_1
    return v2

    .line 51
    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    :cond_2
    return v2

    .line 59
    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

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
    const/4 v2, 0x1

    .line 68
    :cond_3
    return v2

    .line 69
    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    :cond_4
    return v2

    .line 77
    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    :cond_5
    return v2

    .line 85
    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_6

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    :cond_6
    return v2

    .line 93
    :pswitch_7
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 94
    .line 95
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/i$f;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    :goto_0
    xor-int/2addr p1, v3

    .line 104
    return p1

    .line 105
    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    const/4 v2, 0x1

    .line 112
    :cond_7
    return v2

    .line 113
    :pswitch_9
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    instance-of p2, p1, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz p2, :cond_8

    .line 120
    .line 121
    check-cast p1, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_0

    .line 128
    :cond_8
    instance-of p2, p1, Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 129
    .line 130
    if-eqz p2, :cond_9

    .line 131
    .line 132
    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/i;->b:Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/i$f;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 142
    .line 143
    .line 144
    throw p1

    .line 145
    :pswitch_a
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->f(JLjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    return p1

    .line 150
    :pswitch_b
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-eqz p1, :cond_a

    .line 155
    .line 156
    const/4 v2, 0x1

    .line 157
    :cond_a
    return v2

    .line 158
    :pswitch_c
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 159
    .line 160
    .line 161
    move-result-wide p1

    .line 162
    cmp-long v0, p1, v4

    .line 163
    .line 164
    if-eqz v0, :cond_b

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    :cond_b
    return v2

    .line 168
    :pswitch_d
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_c

    .line 173
    .line 174
    const/4 v2, 0x1

    .line 175
    :cond_c
    return v2

    .line 176
    :pswitch_e
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 177
    .line 178
    .line 179
    move-result-wide p1

    .line 180
    cmp-long v0, p1, v4

    .line 181
    .line 182
    if-eqz v0, :cond_d

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    :cond_d
    return v2

    .line 186
    :pswitch_f
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->m(JLjava/lang/Object;)J

    .line 187
    .line 188
    .line 189
    move-result-wide p1

    .line 190
    cmp-long v0, p1, v4

    .line 191
    .line 192
    if-eqz v0, :cond_e

    .line 193
    .line 194
    const/4 v2, 0x1

    .line 195
    :cond_e
    return v2

    .line 196
    :pswitch_10
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->k(JLjava/lang/Object;)F

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    const/4 p2, 0x0

    .line 201
    cmpl-float p1, p1, p2

    .line 202
    .line 203
    if-eqz p1, :cond_f

    .line 204
    .line 205
    const/4 v2, 0x1

    .line 206
    :cond_f
    return v2

    .line 207
    :pswitch_11
    invoke-static {v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->j(JLjava/lang/Object;)D

    .line 208
    .line 209
    .line 210
    move-result-wide p1

    .line 211
    const-wide/16 v0, 0x0

    .line 212
    .line 213
    cmpl-double v4, p1, v0

    .line 214
    .line 215
    if-eqz v4, :cond_10

    .line 216
    .line 217
    const/4 v2, 0x1

    .line 218
    :cond_10
    return v2

    .line 219
    :cond_11
    add-int/lit8 p1, p1, 0x2

    .line 220
    .line 221
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

    .line 222
    .line 223
    aget p1, v0, p1

    .line 224
    .line 225
    ushr-int/lit8 v0, p1, 0x14

    .line 226
    .line 227
    shl-int v0, v3, v0

    .line 228
    .line 229
    and-int/2addr p1, v1

    .line 230
    int-to-long v4, p1

    .line 231
    invoke-static {v4, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    and-int/2addr p1, v0

    .line 236
    if-eqz p1, :cond_12

    .line 237
    .line 238
    const/4 v2, 0x1

    .line 239
    :cond_12
    return v2

    .line 240
    nop

    .line 241
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

.method public final t(IILjava/lang/Object;)Z
    .locals 2

    .line 1
    add-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->a:[I

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
    invoke-static {v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/n1;->l(JLjava/lang/Object;)I

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
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final v(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/p;Lcom/google/crypto/tink/shaded/protobuf/d1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/p;",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/t0;->M(I)I

    move-result p2

    const p4, 0xfffff

    and-int/2addr p2, p4

    int-to-long v0, p2

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/n1;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p4, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    if-nez p2, :cond_0

    invoke-interface {p4}, Lcom/google/crypto/tink/shaded/protobuf/l0;->d()Lcom/google/crypto/tink/shaded/protobuf/k0;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p4}, Lcom/google/crypto/tink/shaded/protobuf/l0;->d()Lcom/google/crypto/tink/shaded/protobuf/k0;

    move-result-object v2

    invoke-interface {p4, v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    invoke-static {v0, v1, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/n1;->x(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p4, p2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->e(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    invoke-interface {p4, p3}, Lcom/google/crypto/tink/shaded/protobuf/l0;->c(Ljava/lang/Object;)V

    invoke-interface {p5}, Lcom/google/crypto/tink/shaded/protobuf/d1;->m()V

    return-void
.end method

.method public final z(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/e$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p5}, Lcom/google/crypto/tink/shaded/protobuf/t0;->n(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/t0;->s:Lsun/misc/Unsafe;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/t0;->q:Lcom/google/crypto/tink/shaded/protobuf/l0;

    .line 12
    .line 13
    invoke-interface {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/l0;->g(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/l0;->d()Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/l0;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1, p6, p7, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v3

    .line 30
    :cond_0
    invoke-interface {v2, p5}, Lcom/google/crypto/tink/shaded/protobuf/l0;->c(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/l0;->e(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k0;

    .line 34
    .line 35
    .line 36
    invoke-static {p2, p3, p8}, Lcom/google/crypto/tink/shaded/protobuf/e;->H([BILcom/google/crypto/tink/shaded/protobuf/e$a;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget p2, p8, Lcom/google/crypto/tink/shaded/protobuf/e$a;->a:I

    .line 41
    .line 42
    if-ltz p2, :cond_2

    .line 43
    .line 44
    sub-int/2addr p4, p1

    .line 45
    if-le p2, p4, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    throw p1

    .line 50
    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/a0;->f()Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    throw p1
.end method
