.class public final Lma/p$d;
.super Lma/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lma/d1$e;)V
    .locals 0

    invoke-direct {p0, p1}, Lma/o;-><init>(Lma/e1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_1

    if-eq p0, v3, :cond_0

    const-string v4, "descriptor"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_0
    const-string v4, "from"

    aput-object v4, v0, v1

    goto :goto_0

    :cond_1
    const-string v4, "what"

    aput-object v4, v0, v1

    :goto_0
    const-string v1, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$1"

    aput-object v1, v0, v2

    if-eq p0, v2, :cond_2

    if-eq p0, v3, :cond_2

    const-string p0, "hasContainingSourceFile"

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    const-string p0, "isVisible"

    aput-object p0, v0, v3

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final c(Lma/p$b;Lma/n;Lma/j;)Z
    .locals 3

    .line 1
    if-eqz p3, :cond_a

    .line 2
    .line 3
    invoke-static {p2}, Lob/i;->t(Lma/j;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-static {p3}, Lob/i;->f(Lma/j;)Lma/s0;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v2, Lma/s0;->a:Lma/s0$a;

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-static {p2, p3}, Lma/p;->d(Lma/j;Lma/j;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_1
    instance-of p1, p2, Lma/i;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    move-object p1, p2

    .line 34
    check-cast p1, Lma/i;

    .line 35
    .line 36
    invoke-interface {p1}, Lma/i;->b()Lma/h;

    .line 37
    .line 38
    .line 39
    :cond_2
    if-eqz p2, :cond_4

    .line 40
    .line 41
    invoke-interface {p2}, Lma/j;->b()Lma/j;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    instance-of p1, p2, Lma/e;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    invoke-static {p2}, Lob/i;->l(Lma/j;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    :cond_3
    instance-of p1, p2, Lma/e0;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    :cond_4
    if-nez p2, :cond_5

    .line 60
    .line 61
    return v0

    .line 62
    :cond_5
    :goto_1
    if-eqz p3, :cond_9

    .line 63
    .line 64
    if-ne p2, p3, :cond_6

    .line 65
    .line 66
    return v1

    .line 67
    :cond_6
    instance-of p1, p3, Lma/e0;

    .line 68
    .line 69
    if-eqz p1, :cond_8

    .line 70
    .line 71
    instance-of p1, p2, Lma/e0;

    .line 72
    .line 73
    if-eqz p1, :cond_7

    .line 74
    .line 75
    move-object p1, p2

    .line 76
    check-cast p1, Lma/e0;

    .line 77
    .line 78
    invoke-interface {p1}, Lma/e0;->d()Llb/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    move-object v2, p3

    .line 83
    check-cast v2, Lma/e0;

    .line 84
    .line 85
    invoke-interface {v2}, Lma/e0;->d()Llb/c;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Llb/c;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    invoke-static {p3}, Lob/i;->d(Lma/j;)Lma/b0;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p2}, Lob/i;->d(Lma/j;)Lma/b0;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    const/4 v0, 0x1

    .line 110
    :cond_7
    return v0

    .line 111
    :cond_8
    invoke-interface {p3}, Lma/j;->b()Lma/j;

    .line 112
    .line 113
    .line 114
    move-result-object p3

    .line 115
    goto :goto_1

    .line 116
    :cond_9
    return v0

    .line 117
    :cond_a
    const/4 p1, 0x2

    .line 118
    invoke-static {p1}, Lma/p$d;->e(I)V

    .line 119
    .line 120
    .line 121
    const/4 p1, 0x0

    .line 122
    throw p1
.end method
