.class public abstract Lcom/google/crypto/tink/shaded/protobuf/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(IILjava/lang/Object;)V
.end method

.method public abstract b(IJLjava/lang/Object;)V
.end method

.method public abstract c(ILjava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/i;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lcom/google/crypto/tink/shaded/protobuf/i;",
            ")V"
        }
    .end annotation
.end method

.method public abstract e(IJLjava/lang/Object;)V
.end method

.method public abstract f(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;
.end method

.method public abstract g(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;
.end method

.method public abstract h(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;
.end method

.method public final l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lcom/google/crypto/tink/shaded/protobuf/d1;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->getTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x3

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x7

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    if-eq v0, v2, :cond_7

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-eq v0, v3, :cond_6

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x4

    .line 19
    if-eq v0, v3, :cond_2

    .line 20
    .line 21
    if-eq v0, v4, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x5

    .line 24
    if-ne v0, v3, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->h()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-virtual {p0, v1, p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->a(IILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_0
    sget p1, Lcom/google/crypto/tink/shaded/protobuf/a0;->a:I

    .line 35
    .line 36
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/a0$a;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/google/crypto/tink/shaded/protobuf/a0$a;-><init>()V

    .line 39
    .line 40
    .line 41
    throw p1

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    return p1

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->m()Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    shl-int/lit8 v3, v1, 0x3

    .line 49
    .line 50
    or-int/2addr v3, v4

    .line 51
    :cond_3
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->z()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const v5, 0x7fffffff

    .line 56
    .line 57
    .line 58
    if-eq v4, v5, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/d1;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_3

    .line 65
    .line 66
    :cond_4
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->getTag()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-ne v3, p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/j1;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->c(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_5
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/a0;

    .line 81
    .line 82
    const-string p2, "Protocol message end-group tag did not match expected tag."

    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/a0;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :cond_6
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->C()Lcom/google/crypto/tink/shaded/protobuf/i;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/j1;->d(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/i;)V

    .line 93
    .line 94
    .line 95
    return v2

    .line 96
    :cond_7
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->c()J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->b(IJLjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    return v2

    .line 104
    :cond_8
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/d1;->K()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    invoke-virtual {p0, v1, v3, v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/j1;->e(IJLjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    return v2
.end method

.method public abstract m()Lcom/google/crypto/tink/shaded/protobuf/k1;
.end method

.method public abstract n(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract p()V
.end method

.method public abstract q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/k1;
.end method

.method public abstract r(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/m;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
