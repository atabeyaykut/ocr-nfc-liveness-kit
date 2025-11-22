.class public final Lfd/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lmc/a;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    const-string v1, "0123456789abcdef"

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "(this as java.lang.String).getBytes(charset)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lfd/k;->a:[B

    .line 15
    .line 16
    return-void
.end method

.method public static final a(Led/e0;I[BI)Z
    .locals 6

    iget v0, p0, Led/e0;->c:I

    const/4 v1, 0x1

    iget-object v2, p0, Led/e0;->a:[B

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_2

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Led/e0;->f:Led/e0;

    invoke-static {p0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget p1, p0, Led/e0;->b:I

    iget v0, p0, Led/e0;->c:I

    iget-object v2, p0, Led/e0;->a:[B

    :cond_0
    aget-byte v4, v2, p1

    aget-byte v5, p2, v3

    if-eq v4, v5, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static final b(Led/e;J)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v0

    if-lez v4, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Led/e;->f(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    invoke-virtual {p0, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Led/e;->skip(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Led/e;->s(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, v3}, Led/e;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final c(Led/e;Led/x;Z)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "options"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Led/e;->a:Led/e0;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    iget v4, v0, Led/e0;->b:I

    iget v5, v0, Led/e0;->c:I

    const/4 v6, 0x0

    iget-object v7, v0, Led/e0;->a:[B

    move-object v9, v0

    const/4 v8, 0x0

    const/4 v10, -0x1

    :goto_1
    add-int/lit8 v11, v8, 0x1

    iget-object v12, v1, Led/x;->b:[I

    aget v8, v12, v8

    add-int/lit8 v13, v11, 0x1

    aget v11, v12, v11

    if-eq v11, v3, :cond_2

    move v10, v11

    :cond_2
    if-nez v9, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    if-gez v8, :cond_b

    mul-int/lit8 v8, v8, -0x1

    add-int v14, v8, v13

    :goto_2
    add-int/lit8 v8, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v15, v13, 0x1

    aget v13, v12, v13

    if-eq v4, v13, :cond_4

    return v10

    :cond_4
    if-ne v15, v14, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-ne v8, v5, :cond_9

    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget-object v5, v9, Led/e0;->f:Led/e0;

    invoke-static {v5}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v7, v5, Led/e0;->b:I

    iget v8, v5, Led/e0;->c:I

    iget-object v9, v5, Led/e0;->a:[B

    if-ne v5, v0, :cond_8

    if-nez v4, :cond_7

    :goto_4
    if-eqz p2, :cond_6

    return v2

    :cond_6
    return v10

    :cond_7
    move v5, v8

    move-object v8, v11

    goto :goto_5

    :cond_8
    move/from16 v16, v8

    move-object v8, v5

    move/from16 v5, v16

    goto :goto_5

    :cond_9
    move-object/from16 v16, v9

    move-object v9, v7

    move v7, v8

    move-object/from16 v8, v16

    :goto_5
    if-eqz v4, :cond_a

    aget v4, v12, v15

    move v2, v7

    move-object v7, v9

    move-object v9, v8

    goto :goto_7

    :cond_a
    move v4, v7

    move-object v7, v9

    move v13, v15

    move-object v9, v8

    goto :goto_2

    :cond_b
    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    add-int v15, v13, v8

    :goto_6
    if-ne v13, v15, :cond_c

    return v10

    :cond_c
    aget v2, v12, v13

    if-ne v4, v2, :cond_10

    add-int/2addr v13, v8

    aget v4, v12, v13

    if-ne v14, v5, :cond_d

    iget-object v9, v9, Led/e0;->f:Led/e0;

    invoke-static {v9}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    iget v2, v9, Led/e0;->b:I

    iget v5, v9, Led/e0;->c:I

    iget-object v7, v9, Led/e0;->a:[B

    if-ne v9, v0, :cond_e

    move-object v9, v11

    goto :goto_7

    :cond_d
    move v2, v14

    :cond_e
    :goto_7
    if-ltz v4, :cond_f

    return v4

    :cond_f
    neg-int v8, v4

    move v4, v2

    const/4 v2, -0x2

    goto/16 :goto_1

    :cond_10
    add-int/lit8 v13, v13, 0x1

    const/4 v2, -0x2

    goto :goto_6
.end method
