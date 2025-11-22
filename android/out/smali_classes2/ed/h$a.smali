.class public final Led/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Led/h;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_1
    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lc5/u;->j(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lc5/u;->j(C)I

    move-result v5

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    if-le v4, v0, :cond_1

    goto :goto_2

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    :goto_2
    new-instance p0, Led/h;

    invoke-direct {p0, v3}, Led/h;-><init>([B)V

    return-object p0

    :cond_3
    const-string v0, "Unexpected hex string: "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Led/h;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Led/h;

    .line 7
    .line 8
    sget-object v1, Lmc/a;->a:Ljava/nio/charset/Charset;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "(this as java.lang.String).getBytes(charset)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Led/h;-><init>([B)V

    .line 20
    .line 21
    .line 22
    iput-object p0, v0, Led/h;->c:Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method

.method public static c([B)Led/h;
    .locals 8

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    array-length v1, p0

    .line 5
    int-to-long v2, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    int-to-long v4, v1

    .line 8
    int-to-long v6, v0

    .line 9
    invoke-static/range {v2 .. v7}, La6/a;->g(JJJ)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Led/h;

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    invoke-static {p0, v1, v0}, Lm9/i;->k0([BII)[B

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v2, p0}, Led/h;-><init>([B)V

    .line 20
    .line 21
    .line 22
    return-object v2
.end method
