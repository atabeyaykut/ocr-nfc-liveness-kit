.class public final Lmb/s;
.super Lmb/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb/s$c;,
        Lmb/s$b;,
        Lmb/s$a;
    }
.end annotation


# static fields
.field public static final h:[I


# instance fields
.field public final b:I

.field public final c:Lmb/c;

.field public final d:Lmb/c;

.field public final e:I

.field public final f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lmb/s;->h:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lmb/s;->h:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lmb/c;Lmb/c;)V
    .locals 2

    invoke-direct {p0}, Lmb/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmb/s;->g:I

    iput-object p1, p0, Lmb/s;->c:Lmb/c;

    iput-object p2, p0, Lmb/s;->d:Lmb/c;

    invoke-virtual {p1}, Lmb/c;->size()I

    move-result v0

    iput v0, p0, Lmb/s;->e:I

    invoke-virtual {p2}, Lmb/c;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lmb/s;->b:I

    invoke-virtual {p1}, Lmb/c;->u()I

    move-result p1

    invoke-virtual {p2}, Lmb/c;->u()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmb/s;->f:I

    return-void
.end method


# virtual methods
.method public final A(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lmb/s;->c:Lmb/c;

    iget v2, p0, Lmb/s;->e:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lmb/c;->A(III)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lmb/s;->d:Lmb/c;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lmb/c;->A(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lmb/c;->A(III)I

    move-result p1

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    goto :goto_0
.end method

.method public final C(III)I
    .locals 3

    add-int v0, p2, p3

    iget-object v1, p0, Lmb/s;->c:Lmb/c;

    iget v2, p0, Lmb/s;->e:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lmb/c;->C(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lmb/c;->C(III)I

    move-result p1

    sub-int/2addr p3, v2

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lmb/s;->d:Lmb/c;

    invoke-virtual {v0, p1, p2, p3}, Lmb/c;->C(III)I

    move-result p1

    return p1
.end method

.method public final D()I
    .locals 1

    iget v0, p0, Lmb/s;->g:I

    return v0
.end method

.method public final E()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lmb/s;->b:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lmb/i;->a:[B

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-array v2, v1, [B

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {p0, v3, v3, v2, v1}, Lmb/s;->o(II[BI)V

    .line 14
    .line 15
    .line 16
    move-object v1, v2

    .line 17
    :goto_0
    const-string v2, "UTF-8"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final G(Ljava/io/OutputStream;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    iget-object v1, p0, Lmb/s;->c:Lmb/c;

    iget v2, p0, Lmb/s;->e:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lmb/c;->G(Ljava/io/OutputStream;II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmb/s;->d:Lmb/c;

    if-lt p2, v2, :cond_1

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p2

    invoke-virtual {v1, p1, p2, v2}, Lmb/c;->G(Ljava/io/OutputStream;II)V

    const/4 p2, 0x0

    sub-int/2addr p3, v2

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lmb/c;->G(Ljava/io/OutputStream;II)V

    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lmb/c;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lmb/c;

    .line 12
    .line 13
    invoke-virtual {p1}, Lmb/c;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v3, p0, Lmb/s;->b:I

    .line 18
    .line 19
    if-eq v3, v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    if-nez v3, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    iget v1, p0, Lmb/s;->g:I

    .line 26
    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    invoke-virtual {p1}, Lmb/c;->D()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    iget v4, p0, Lmb/s;->g:I

    .line 36
    .line 37
    if-eq v4, v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    new-instance v1, Lmb/s$b;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lmb/s$b;-><init>(Lmb/c;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lmb/s$b;->a()Lmb/o;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    new-instance v5, Lmb/s$b;

    .line 50
    .line 51
    invoke-direct {v5, p1}, Lmb/s$b;-><init>(Lmb/c;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Lmb/s$b;->a()Lmb/o;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    :goto_0
    iget-object v9, v4, Lmb/o;->b:[B

    .line 62
    .line 63
    array-length v9, v9

    .line 64
    sub-int/2addr v9, v6

    .line 65
    iget-object v10, p1, Lmb/o;->b:[B

    .line 66
    .line 67
    array-length v10, v10

    .line 68
    sub-int/2addr v10, v7

    .line 69
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 70
    .line 71
    .line 72
    move-result v11

    .line 73
    if-nez v6, :cond_5

    .line 74
    .line 75
    invoke-virtual {v4, p1, v7, v11}, Lmb/o;->H(Lmb/o;II)Z

    .line 76
    .line 77
    .line 78
    move-result v12

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {p1, v4, v6, v11}, Lmb/o;->H(Lmb/o;II)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    :goto_1
    if-nez v12, :cond_6

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    add-int/2addr v8, v11

    .line 89
    if-lt v8, v3, :cond_8

    .line 90
    .line 91
    if-ne v8, v3, :cond_7

    .line 92
    .line 93
    :goto_2
    return v0

    .line 94
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_8
    if-ne v11, v9, :cond_9

    .line 101
    .line 102
    invoke-virtual {v1}, Lmb/s$b;->a()Lmb/o;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    const/4 v6, 0x0

    .line 107
    goto :goto_3

    .line 108
    :cond_9
    add-int/2addr v6, v11

    .line 109
    :goto_3
    if-ne v11, v10, :cond_a

    .line 110
    .line 111
    invoke-virtual {v5}, Lmb/s$b;->a()Lmb/o;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const/4 v7, 0x0

    .line 116
    goto :goto_0

    .line 117
    :cond_a
    add-int/2addr v7, v11

    .line 118
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lmb/s;->g:I

    if-nez v0, :cond_1

    iget v0, p0, Lmb/s;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lmb/s;->A(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lmb/s;->g:I

    :cond_1
    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lmb/s;->y()Lmb/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final o(II[BI)V
    .locals 3

    add-int v0, p1, p4

    iget-object v1, p0, Lmb/s;->c:Lmb/c;

    iget v2, p0, Lmb/s;->e:I

    if-gt v0, v2, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Lmb/c;->o(II[BI)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lmb/s;->d:Lmb/c;

    if-lt p1, v2, :cond_1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p1

    invoke-virtual {v1, p1, p2, p3, v2}, Lmb/c;->o(II[BI)V

    add-int/2addr p2, v2

    sub-int/2addr p4, v2

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lmb/c;->o(II[BI)V

    :goto_1
    return-void
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lmb/s;->b:I

    return v0
.end method

.method public final u()I
    .locals 1

    iget v0, p0, Lmb/s;->f:I

    return v0
.end method

.method public final w()Z
    .locals 2

    sget-object v0, Lmb/s;->h:[I

    iget v1, p0, Lmb/s;->f:I

    aget v0, v0, v1

    iget v1, p0, Lmb/s;->b:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Z
    .locals 4

    iget v0, p0, Lmb/s;->e:I

    iget-object v1, p0, Lmb/s;->c:Lmb/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Lmb/c;->C(III)I

    move-result v0

    iget-object v1, p0, Lmb/s;->d:Lmb/c;

    invoke-virtual {v1}, Lmb/c;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lmb/c;->C(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final y()Lmb/c$a;
    .locals 1

    new-instance v0, Lmb/s$c;

    invoke-direct {v0, p0}, Lmb/s$c;-><init>(Lmb/s;)V

    return-object v0
.end method
