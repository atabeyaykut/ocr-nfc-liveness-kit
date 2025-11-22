.class public final Lic/s$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lma/u;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lic/s$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lic/s$c;

    invoke-direct {v0}, Lic/s$c;-><init>()V

    sput-object v0, Lic/s$c;->a:Lic/s$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lma/u;

    .line 2
    .line 3
    const-string v0, "$this$$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lma/a;->a0()Lma/o0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Lma/a;->h0()Lma/o0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    sget-object v1, Lic/s;->a:Lic/s;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v0, :cond_9

    .line 23
    .line 24
    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Lma/z0;->getType()Lcc/e0;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v6, "receiver.type"

    .line 35
    .line 36
    invoke-static {v5, v6}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v4, v5}, Lc5/y;->u(Lcc/e0;Lcc/e0;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-nez v4, :cond_8

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Lma/o0;->getValue()Lwb/g;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "receiver.value"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    instance-of v1, v0, Lwb/e;

    .line 60
    .line 61
    if-nez v1, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    check-cast v0, Lwb/e;

    .line 65
    .line 66
    iget-object v0, v0, Lwb/e;->a:Lma/e;

    .line 67
    .line 68
    invoke-interface {v0}, Lma/z;->G()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v0}, Lsb/b;->f(Lma/g;)Llb/b;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_4
    invoke-static {v0}, Lsb/b;->j(Lma/j;)Lma/b0;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v1}, Lma/t;->b(Lma/b0;Llb/b;)Lma/g;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    instance-of v1, v0, Lma/v0;

    .line 91
    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    move-object v0, v3

    .line 95
    :cond_5
    check-cast v0, Lma/v0;

    .line 96
    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    invoke-interface {p1}, Lma/a;->getReturnType()Lcc/e0;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    invoke-interface {v0}, Lma/v0;->R()Lcc/m0;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {p1, v0}, Lc5/y;->u(Lcc/e0;Lcc/e0;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    goto :goto_2

    .line 115
    :cond_7
    :goto_1
    const/4 p1, 0x0

    .line 116
    :goto_2
    if-eqz p1, :cond_9

    .line 117
    .line 118
    :cond_8
    const/4 v2, 0x1

    .line 119
    :cond_9
    if-nez v2, :cond_a

    .line 120
    .line 121
    const-string v3, "receiver must be a supertype of the return type"

    .line 122
    .line 123
    :cond_a
    return-object v3
.end method
