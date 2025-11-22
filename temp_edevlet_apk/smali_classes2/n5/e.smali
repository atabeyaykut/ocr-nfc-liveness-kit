.class public final Ln5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field public final a:Lu5/g0;


# direct methods
.method public constructor <init>(Lu5/g0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/e;->a:Lu5/g0;

    return-void
.end method

.method public static a(Ljava/lang/String;[BI)Ln5/e;
    .locals 3

    .line 1
    new-instance v0, Ln5/e;

    .line 2
    .line 3
    invoke-static {}, Lu5/g0;->A()Lu5/g0$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 11
    .line 12
    check-cast v2, Lu5/g0;

    .line 13
    .line 14
    invoke-static {v2, p0}, Lu5/g0;->t(Lu5/g0;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    array-length p0, p1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p1, v2, p0}, Lcom/google/crypto/tink/shaded/protobuf/i;->m([BII)Lcom/google/crypto/tink/shaded/protobuf/i$f;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 24
    .line 25
    .line 26
    iget-object p1, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 27
    .line 28
    check-cast p1, Lu5/g0;

    .line 29
    .line 30
    invoke-static {p1, p0}, Lu5/g0;->u(Lu5/g0;Lcom/google/crypto/tink/shaded/protobuf/i$f;)V

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_4

    .line 34
    .line 35
    add-int/lit8 p2, p2, -0x1

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    if-eq p2, p0, :cond_2

    .line 41
    .line 42
    const/4 p0, 0x2

    .line 43
    if-eq p2, p0, :cond_1

    .line 44
    .line 45
    const/4 p0, 0x3

    .line 46
    if-ne p2, p0, :cond_0

    .line 47
    .line 48
    sget-object p0, Lu5/o0;->f:Lu5/o0;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p1, "Unknown output prefix type"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    sget-object p0, Lu5/o0;->e:Lu5/o0;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object p0, Lu5/o0;->d:Lu5/o0;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    sget-object p0, Lu5/o0;->c:Lu5/o0;

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->k()V

    .line 68
    .line 69
    .line 70
    iget-object p1, v1, Lcom/google/crypto/tink/shaded/protobuf/x$a;->b:Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 71
    .line 72
    check-cast p1, Lu5/g0;

    .line 73
    .line 74
    invoke-static {p1, p0}, Lu5/g0;->v(Lu5/g0;Lu5/o0;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/x$a;->i()Lcom/google/crypto/tink/shaded/protobuf/x;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Lu5/g0;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Ln5/e;-><init>(Lu5/g0;)V

    .line 84
    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    const/4 p0, 0x0

    .line 88
    throw p0
.end method
