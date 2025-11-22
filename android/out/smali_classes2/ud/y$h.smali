.class public final Lud/y$h;
.super Lud/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lud/y<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;

.field public final b:I

.field public final c:Lud/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/f<",
            "TT;",
            "Lrc/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;ILud/f;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lud/f<",
            "TT;",
            "Lrc/a0;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lud/y;-><init>()V

    iput-object p1, p0, Lud/y$h;->a:Ljava/lang/reflect/Method;

    iput p2, p0, Lud/y$h;->b:I

    iput-object p3, p0, Lud/y$h;->c:Lud/f;

    iput-object p4, p0, Lud/y$h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lud/a0;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    iget v0, p0, Lud/y$h;->b:I

    .line 4
    .line 5
    iget-object v1, p0, Lud/y$h;->a:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    new-array v5, v5, [Ljava/lang/String;

    .line 46
    .line 47
    const-string v6, "Content-Disposition"

    .line 48
    .line 49
    aput-object v6, v5, v2

    .line 50
    .line 51
    const-string v6, "form-data; name=\""

    .line 52
    .line 53
    const-string v7, "\""

    .line 54
    .line 55
    invoke-static {v6, v4, v7}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    const/4 v6, 0x1

    .line 60
    aput-object v4, v5, v6

    .line 61
    .line 62
    const/4 v4, 0x2

    .line 63
    const-string v6, "Content-Transfer-Encoding"

    .line 64
    .line 65
    aput-object v6, v5, v4

    .line 66
    .line 67
    const/4 v4, 0x3

    .line 68
    iget-object v6, p0, Lud/y$h;->d:Ljava/lang/String;

    .line 69
    .line 70
    aput-object v6, v5, v4

    .line 71
    .line 72
    sget-object v4, Lrc/q;->b:Lrc/q$b;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v5}, Lrc/q$b;->c([Ljava/lang/String;)Lrc/q;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    iget-object v5, p0, Lud/y$h;->c:Lud/f;

    .line 82
    .line 83
    invoke-interface {v5, v3}, Lud/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    check-cast v3, Lrc/a0;

    .line 88
    .line 89
    invoke-virtual {p1, v4, v3}, Lud/a0;->c(Lrc/q;Lrc/a0;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    const-string p1, "Part map contained null value for key \'"

    .line 94
    .line 95
    const-string p2, "\'."

    .line 96
    .line 97
    invoke-static {p1, v4, p2}, Landroidx/browser/browseractions/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array p2, v2, [Ljava/lang/Object;

    .line 102
    .line 103
    invoke-static {v1, v0, p1, p2}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    throw p1

    .line 108
    :cond_1
    const-string p1, "Part map contained null key."

    .line 109
    .line 110
    new-array p2, v2, [Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {v1, v0, p1, p2}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1

    .line 117
    :cond_2
    return-void

    .line 118
    :cond_3
    const-string p1, "Part map was null."

    .line 119
    .line 120
    new-array p2, v2, [Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v1, v0, p1, p2}, Lud/h0;->k(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    throw p1
.end method
